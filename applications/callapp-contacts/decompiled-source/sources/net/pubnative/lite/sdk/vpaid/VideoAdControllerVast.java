package net.pubnative.lite.sdk.vpaid;

import android.media.MediaPlayer;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.pubnativenet.adsession.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.UrlHandler;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityFriendlyObstruction;
import net.pubnative.lite.sdk.viewability.HyBidViewabilityNativeVideoAdSession;
import net.pubnative.lite.sdk.vpaid.VideoAdController;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import net.pubnative.lite.sdk.vpaid.enums.VastError;
import net.pubnative.lite.sdk.vpaid.helpers.ErrorLog;
import net.pubnative.lite.sdk.vpaid.helpers.EventTracker;
import net.pubnative.lite.sdk.vpaid.helpers.TimerWithPause;
import net.pubnative.lite.sdk.vpaid.models.vast.Tracking;
import net.pubnative.lite.sdk.vpaid.models.vpaid.TrackingEvent;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
import net.pubnative.lite.sdk.vpaid.utils.Utils;
import net.pubnative.lite.sdk.vpaid.vast.ViewControllerVast;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdControllerVast.class */
public class VideoAdControllerVast implements VideoAdController {
    private static final int DELAY_UNTIL_EXECUTE = 100;
    private static final String LOG_TAG = "VideoAdControllerVast";
    private final AdParams mAdParams;
    private View mAdView;
    private final BaseVideoAdInternal mBaseAdInternal;
    private String mImageUri;
    private MediaPlayer mMediaPlayer;
    private TimerWithPause mTimerWithPause;
    private String mVideoUri;
    private HyBidViewabilityNativeVideoAdSession mViewabilityAdSession;
    private List<TrackingEvent> mTrackingEventsList = new ArrayList();
    private int mSkipTimeMillis = -1;
    private boolean finishedPlaying = false;
    private MediaPlayer.OnErrorListener mOnErrorListener = new MediaPlayer.OnErrorListener() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVast.3
        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            ErrorLog.postError(VideoAdControllerVast.this.mBaseAdInternal.getContext(), VastError.MEDIA_FILE_UNSUPPORTED);
            return false;
        }
    };
    private MediaPlayer.OnPreparedListener mOnPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVast.4
        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            VideoAdControllerVast.this.mViewControllerVast.adjustLayoutParams(mediaPlayer.getVideoWidth(), mediaPlayer.getVideoHeight());
            VideoAdControllerVast.this.mMediaPlayer.setSurface(VideoAdControllerVast.this.mViewControllerVast.getSurface());
            if (VideoAdControllerVast.this.mTimerWithPause == null || !VideoAdControllerVast.this.mTimerWithPause.isPaused()) {
                VideoAdControllerVast.this.createTimer(mediaPlayer.getDuration());
            } else {
                VideoAdControllerVast.this.mMediaPlayer.seekTo((int) VideoAdControllerVast.this.mTimerWithPause.timePassed());
                VideoAdControllerVast.this.mTimerWithPause.resume();
            }
            VideoAdControllerVast videoAdControllerVast = VideoAdControllerVast.this;
            videoAdControllerVast.muteVideo(videoAdControllerVast.mViewControllerVast.isMute(), false);
            VideoAdControllerVast.this.mMediaPlayer.start();
        }
    };
    private MediaPlayer.OnCompletionListener mOnCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVast.6
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            VideoAdControllerVast.this.mBaseAdInternal.onAdDidReachEnd();
            VideoAdControllerVast.this.skipVideo(false);
            EventTracker.postEventByType(VideoAdControllerVast.this.mBaseAdInternal.getContext(), VideoAdControllerVast.this.mAdParams.getEvents(), EventConstants.COMPLETE);
        }
    };
    private List<HyBidViewabilityFriendlyObstruction> mViewabilityFriendlyObstructions = new ArrayList();
    private final ViewControllerVast mViewControllerVast = new ViewControllerVast(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoAdControllerVast(BaseVideoAdInternal baseVideoAdInternal, AdParams adParams, HyBidViewabilityNativeVideoAdSession hyBidViewabilityNativeVideoAdSession) {
        this.mBaseAdInternal = baseVideoAdInternal;
        this.mAdParams = adParams;
        this.mViewabilityAdSession = hyBidViewabilityNativeVideoAdSession;
    }

    private void createProgressPoints(int i) {
        this.mTrackingEventsList.clear();
        for (String str : this.mAdParams.getImpressions()) {
            this.mTrackingEventsList.add(new TrackingEvent(str));
        }
        if (this.mAdParams.getEvents() != null) {
            for (Tracking tracking : this.mAdParams.getEvents()) {
                TrackingEvent trackingEvent = new TrackingEvent(tracking.getText());
                if (tracking.getEvent().equalsIgnoreCase(EventConstants.CREATIVE_VIEW)) {
                    trackingEvent.timeMillis = 0;
                    trackingEvent.name = EventConstants.CREATIVE_VIEW;
                    this.mTrackingEventsList.add(trackingEvent);
                }
                if (tracking.getEvent().equalsIgnoreCase(EventConstants.START)) {
                    trackingEvent.timeMillis = 0;
                    trackingEvent.name = EventConstants.START;
                    this.mTrackingEventsList.add(trackingEvent);
                }
                if (tracking.getEvent().equalsIgnoreCase(EventConstants.FIRST_QUARTILE)) {
                    trackingEvent.timeMillis = i / 4;
                    trackingEvent.name = EventConstants.FIRST_QUARTILE;
                    this.mTrackingEventsList.add(trackingEvent);
                }
                if (tracking.getEvent().equalsIgnoreCase("midpoint")) {
                    trackingEvent.timeMillis = i / 2;
                    trackingEvent.name = "midpoint";
                    this.mTrackingEventsList.add(trackingEvent);
                }
                if (tracking.getEvent().equalsIgnoreCase(EventConstants.THIRD_QUARTILE)) {
                    trackingEvent.timeMillis = (i * 3) / 4;
                    trackingEvent.name = EventConstants.THIRD_QUARTILE;
                    this.mTrackingEventsList.add(trackingEvent);
                }
                if (tracking.getEvent().equalsIgnoreCase(EventConstants.PROGRESS) && tracking.getOffset() != null) {
                    if (tracking.getOffset().contains("%")) {
                        trackingEvent.timeMillis = (Utils.parsePercent(tracking.getOffset()) * i) / 100;
                    } else {
                        trackingEvent.timeMillis = Utils.parseDuration(tracking.getOffset()) * 1000;
                    }
                    this.mTrackingEventsList.add(trackingEvent);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createTimer(final int i) {
        initSkipTime(i);
        createProgressPoints(i);
        this.mTimerWithPause = new TimerWithPause(i, 10L, true) { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVast.5
            @Override // net.pubnative.lite.sdk.vpaid.helpers.TimerWithPause
            public void onFinish() {
            }

            @Override // net.pubnative.lite.sdk.vpaid.helpers.TimerWithPause
            public void onTick(long j) {
                int i2 = (int) j;
                VideoAdControllerVast.this.mViewControllerVast.setProgress(i2, i);
                int i3 = i - i2;
                if (VideoAdControllerVast.this.mSkipTimeMillis >= 0 && i3 > VideoAdControllerVast.this.mSkipTimeMillis) {
                    if (!VideoAdControllerVast.this.mBaseAdInternal.isRewarded()) {
                        VideoAdControllerVast.this.mViewControllerVast.showSkipButton();
                    }
                    VideoAdControllerVast.this.mSkipTimeMillis = -1;
                }
                ArrayList arrayList = new ArrayList();
                for (TrackingEvent trackingEvent : VideoAdControllerVast.this.mTrackingEventsList) {
                    if (i3 > trackingEvent.timeMillis) {
                        EventTracker.post(VideoAdControllerVast.this.mBaseAdInternal.getContext(), trackingEvent.url);
                        VideoAdControllerVast.this.fireViewabilityTrackingEvent(trackingEvent.name);
                        arrayList.add(trackingEvent);
                    }
                }
                VideoAdControllerVast.this.mTrackingEventsList.removeAll(arrayList);
            }
        }.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireViewabilityTrackingEvent(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1638835128:
                    if (str.equals("midpoint")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1337830390:
                    if (str.equals(EventConstants.THIRD_QUARTILE)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 109757538:
                    if (str.equals(EventConstants.START)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 560220243:
                    if (str.equals(EventConstants.FIRST_QUARTILE)) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    getViewabilityAdSession().fireMidpoint();
                    return;
                case 1:
                    getViewabilityAdSession().fireThirdQuartile();
                    return;
                case 2:
                    getViewabilityAdSession().fireStart(getAdParams().getDuration(), true);
                    return;
                case 3:
                    getViewabilityAdSession().fireFirstQuartile();
                    return;
                default:
                    return;
            }
        }
    }

    private void initSkipTime(int i) {
        int publisherSkipSeconds = this.mAdParams.getPublisherSkipSeconds() * 1000;
        if (publisherSkipSeconds > 0) {
            this.mSkipTimeMillis = publisherSkipSeconds;
        }
        int intValue = HyBid.getInterstitialSkipOffset().intValue() * 1000;
        if (intValue > 0 && this.mSkipTimeMillis <= 0) {
            this.mSkipTimeMillis = intValue;
        }
        if (this.mSkipTimeMillis > 0) {
            return;
        }
        if (TextUtils.isEmpty(this.mAdParams.getSkipTime())) {
            this.mSkipTimeMillis = -1;
        } else if (this.mAdParams.getSkipTime().contains("%")) {
            this.mSkipTimeMillis = (i * Utils.parsePercent(this.mAdParams.getSkipTime())) / 100;
        } else {
            this.mSkipTimeMillis = Utils.parseDuration(this.mAdParams.getSkipTime()) * 1000;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void muteVideo(boolean z, boolean z2) {
        if (this.mMediaPlayer != null) {
            getViewabilityAdSession().fireVolumeChange(z);
            if (z) {
                this.mMediaPlayer.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                if (z2) {
                    EventTracker.postEventByType(this.mBaseAdInternal.getContext(), this.mAdParams.getEvents(), EventConstants.MUTE);
                    return;
                }
                return;
            }
            float systemVolume = Utils.getSystemVolume();
            this.mMediaPlayer.setVolume(systemVolume, systemVolume);
            if (z2) {
                EventTracker.postEventByType(this.mBaseAdInternal.getContext(), this.mAdParams.getEvents(), EventConstants.UNMUTE);
            }
        }
    }

    private void postDelayed(Runnable runnable, long j) {
        this.mViewControllerVast.postDelayed(runnable, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void skipVideo(boolean z) {
        this.finishedPlaying = true;
        if (z) {
            getViewabilityAdSession().fireSkipped();
        } else {
            getViewabilityAdSession().fireComplete();
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.isPlaying()) {
            this.mMediaPlayer.pause();
        }
        TimerWithPause timerWithPause = this.mTimerWithPause;
        if (timerWithPause != null) {
            timerWithPause.pause();
            this.mTimerWithPause = null;
        }
        if (!TextUtils.isEmpty(this.mImageUri)) {
            this.mViewControllerVast.showEndCard(this.mImageUri);
        } else if (z) {
            closeSelf();
        }
        if (z) {
            EventTracker.postEventByType(this.mBaseAdInternal.getContext(), this.mAdParams.getEvents(), EventConstants.SKIP);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startMediaPlayer() throws IOException, IllegalStateException {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        MediaPlayer mediaPlayer2 = new MediaPlayer();
        this.mMediaPlayer = mediaPlayer2;
        mediaPlayer2.setDataSource(this.mVideoUri);
        this.mMediaPlayer.setOnPreparedListener(this.mOnPreparedListener);
        this.mMediaPlayer.setOnCompletionListener(this.mOnCompletionListener);
        this.mMediaPlayer.setOnErrorListener(this.mOnErrorListener);
        this.mMediaPlayer.prepareAsync();
    }

    private String trackEndCardClicks() {
        String endCardRedirectUrl = this.mAdParams.getEndCardRedirectUrl();
        for (String str : this.mAdParams.getEndCardClicks()) {
            EventTracker.post(this.mBaseAdInternal.getContext(), str);
        }
        return endCardRedirectUrl;
    }

    private String trackVideoClicks() {
        String videoRedirectUrl = this.mAdParams.getVideoRedirectUrl();
        for (String str : this.mAdParams.getVideoClicks()) {
            EventTracker.post(this.mBaseAdInternal.getContext(), str);
        }
        return videoRedirectUrl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryReInitMediaPlayer() {
        postDelayed(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVast.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    VideoAdControllerVast.this.startMediaPlayer();
                } catch (Exception e) {
                    String str = VideoAdControllerVast.LOG_TAG;
                    Logger.e(str, "mediaPlayer re-init: " + e.getMessage());
                    VideoAdControllerVast.this.closeSelf();
                }
            }
        }, 100L);
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public boolean adFinishedPlaying() {
        return this.finishedPlaying;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void addViewabilityFriendlyObstruction(View view, f fVar, String str) {
        if (view != null && !TextUtils.isEmpty(str)) {
            this.mViewabilityFriendlyObstructions.add(new HyBidViewabilityFriendlyObstruction(view, fVar, str));
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void buildVideoAdView(VideoAdView videoAdView) {
        this.mViewControllerVast.buildVideoAdView(videoAdView);
        this.mAdView = videoAdView;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void closeSelf() {
        EventTracker.postEventByType(this.mBaseAdInternal.getContext(), this.mAdParams.getEvents(), EventConstants.CLOSE);
        this.mBaseAdInternal.dismiss();
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void destroy() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        this.mViewControllerVast.destroy();
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void dismiss() {
        this.mViewControllerVast.dismiss();
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public AdParams getAdParams() {
        return this.mAdParams;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public HyBidViewabilityNativeVideoAdSession getViewabilityAdSession() {
        return this.mViewabilityAdSession;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public List<HyBidViewabilityFriendlyObstruction> getViewabilityFriendlyObstructions() {
        return this.mViewabilityFriendlyObstructions;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public boolean isRewarded() {
        return this.mBaseAdInternal.isRewarded();
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void openUrl(String str) {
        String str2;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            String trackEndCardClicks = trackEndCardClicks();
            str2 = trackEndCardClicks;
            if (trackEndCardClicks == null) {
                str2 = trackVideoClicks();
            }
        } else {
            str2 = trackVideoClicks();
        }
        if (!TextUtils.isEmpty(str2)) {
            String str3 = LOG_TAG;
            Logger.d(str3, "Handle external url");
            if (Utils.isOnline()) {
                new UrlHandler(this.mBaseAdInternal.getContext()).handleUrl(str2);
            } else {
                Logger.e(str3, "No internet connection");
            }
            this.mBaseAdInternal.onAdClicked();
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void pause() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.isPlaying()) {
            this.mMediaPlayer.pause();
            TimerWithPause timerWithPause = this.mTimerWithPause;
            if (timerWithPause != null) {
                timerWithPause.pause();
            }
            EventTracker.postEventByType(this.mBaseAdInternal.getContext(), this.mAdParams.getEvents(), "pause");
            getViewabilityAdSession().firePause();
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void playAd() {
        postDelayed(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdControllerVast.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    VideoAdControllerVast.this.startMediaPlayer();
                } catch (IOException e) {
                    String str = VideoAdControllerVast.LOG_TAG;
                    Logger.e(str, "mediaPlayer IOException: " + e.getMessage());
                    VideoAdControllerVast.this.closeSelf();
                } catch (IllegalStateException e2) {
                    String str2 = VideoAdControllerVast.LOG_TAG;
                    Logger.e(str2, "mediaPlayer IllegalStateException: " + e2.getMessage());
                    VideoAdControllerVast.this.tryReInitMediaPlayer();
                }
            }
        }, 100L);
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void prepare(VideoAdController.OnPreparedListener onPreparedListener) {
        onPreparedListener.onPrepared();
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void resume() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && !mediaPlayer.isPlaying() && this.mViewControllerVast.isEndCard()) {
            playAd();
            EventTracker.postEventByType(this.mBaseAdInternal.getContext(), this.mAdParams.getEvents(), "resume");
            getViewabilityAdSession().fireResume();
        }
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void setEndCardFilePath(String str) {
        this.mImageUri = str;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void setVideoFilePath(String str) {
        this.mVideoUri = str;
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void setVolume(boolean z) {
        muteVideo(z, true);
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void skipVideo() {
        skipVideo(true);
    }

    @Override // net.pubnative.lite.sdk.vpaid.VideoAdController
    public void toggleMute() {
        this.mViewControllerVast.muteVideo();
    }
}
