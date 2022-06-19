package com.millennialmedia.internal.video;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.millennialmedia.C0764R;
import com.millennialmedia.MMLog;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.adcontrollers.VASTVideoController;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.IOUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TrackingEvent;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.VideoTrackingEvent;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.MMVideoView;
import com.millennialmedia.internal.video.VASTParser;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView.class */
public class VASTVideoView extends RelativeLayout implements VASTVideoController.VideoViewActions, MMVideoView.MMVideoViewListener {
    private static final int ADCHOICES_DEFAULT_DURATION = 3600000;
    private static final int ADCHOICES_DEFAULT_OFFSET = 0;
    private static final int CACHE_EXPIRATION_TIME = 43200000;
    private static final int COMPANION_AD_MIN_HEIGHT = 250;
    private static final int COMPANION_AD_MIN_WIDTH = 300;
    private static final int COMPLETE = 2;
    private static final int DEFAULT_MAX_BITRATE = 800;
    private static final int IDLE = 0;
    private static final String IMAGE_BMP = "image/bmp";
    private static final String IMAGE_GIF = "image/gif";
    private static final String IMAGE_JPEG = "image/jpeg";
    private static final String IMAGE_PNG = "image/png";
    private static final int LTE_MAX_BITRATE = 800;
    private static final int MIN_BITRATE = 400;
    private static final int PLAYBACK = 1;
    private static final String PROGRESSIVE = "progressive";
    public static final int PROGRESS_UPDATES_DISABLED = -1;
    private static final String TAG = VASTVideoView.class.getSimpleName();
    private static final int TIME_INVALID = -1;
    private static final String VIDEO_MP4 = "video/mp4";
    private static final int WIFI_MAX_BITRATE = 1200;
    private static final List<String> supportImageTypes;
    private AdChoicesButton adChoicesButton;
    private FrameLayout backgroundFrame;
    private LinearLayout buttonContainer;
    private ImageView closeButton;
    private RelativeLayout controlButtonContainer;
    private TextView countdown;
    private volatile int currentState;
    private FrameLayout endCardContainer;
    private ViewUtils.ViewabilityWatcher endCardViewabilityWatcher;
    private Set<VASTParser.TrackingEvent> firedTrackingEvents;
    private volatile Map<String, VASTParser.Icon> iconMap;
    private ViewUtils.ViewabilityWatcher impressionViewabilityWatcher;
    private VASTParser.InLineAd inLineAd;
    private int lastKnownOrientation;
    private MMVideoView mmVideoView;
    private ImageView replayButton;
    private VASTParser.CompanionAd selectedCompanionAd;
    private VASTParser.Creative selectedCreative;
    private VASTParser.MediaFile selectedMediaFile;
    private boolean shouldHandleTrackingEvents;
    private ImageView skipButton;
    private int skipOffsetMilliseconds;
    private VASTVideoViewListener vastVideoViewListener;
    private File videoFile;
    private ViewUtils.ViewabilityWatcher videoViewabilityWatcher;
    private List<VASTParser.WrapperAd> wrapperAds;
    private volatile boolean canSkip = false;
    private volatile boolean initialized = false;
    private volatile String videoState = null;
    private VASTVideoWebView overlayWebView = null;
    private VASTVideoWebView companionAdWebView = null;
    private VASTVideoWebView backgroundWebView = null;
    private int lastQuartileFired = 0;
    private boolean incentVideoCompleteEarned = false;
    private int previousTimeLeftToSkip = -1;

    /* renamed from: com.millennialmedia.internal.video.VASTVideoView$9 */
    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$9.class */
    public class RunnableC09869 implements Runnable {
        public RunnableC09869() {
            VASTVideoView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(VASTVideoView.this.selectedCompanionAd.staticResource.uri);
            if (bitmapFromGetRequest == null || bitmapFromGetRequest.code != 200) {
                return;
            }
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.9.1
                @Override // java.lang.Runnable
                public void run() {
                    ImageView imageView = new ImageView(VASTVideoView.this.getContext());
                    imageView.setImageBitmap(bitmapFromGetRequest.bitmap);
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.9.1.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            VASTVideoView.this.notifyListenerOnClick();
                            if (!Utils.isEmpty(VASTVideoView.this.selectedCompanionAd.companionClickThrough)) {
                                Utils.startActivityFromUrl(VASTVideoView.this.selectedCompanionAd.companionClickThrough);
                            }
                            VASTVideoView.this.fireCompanionAdClickTracking();
                        }
                    });
                    imageView.setTag("mmVastVideoView_companionImageView");
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    FrameLayout frameLayout = VASTVideoView.this.endCardContainer;
                    VASTVideoView vASTVideoView = VASTVideoView.this;
                    frameLayout.setBackgroundColor(vASTVideoView.getBackgroundColor(vASTVideoView.selectedCompanionAd.staticResource));
                    VASTVideoView.this.endCardContainer.addView(imageView, layoutParams);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$AdChoicesButton.class */
    public class AdChoicesButton extends ImageView implements View.OnClickListener {
        private int displayDuration;
        public VASTParser.Icon icon;
        public int startOffset;
        private volatile boolean firedTracking = false;
        private volatile boolean loaded = false;
        private volatile boolean loadRequested = false;
        private volatile AdChoicesButtonState buttonState = AdChoicesButtonState.READY;
        private volatile int totalTimeDisplayed = 0;
        private volatile int lastProgressTime = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdChoicesButton(Context context) {
            super(context);
            VASTVideoView.this = r4;
            setTag("mmVastVideoView_adChoicesButton");
            setScaleType(ImageView.ScaleType.FIT_START);
            setVisibility(8);
        }

        private void fireIconClickTracking() {
            VASTParser.IconClicks iconClicks = this.icon.iconClicks;
            if (iconClicks != null) {
                TrackingEvent.fireUrls(iconClicks.clickTrackingUrls, "icon click tracker");
            }
        }

        private void fireIconViewTracking() {
            if (!this.firedTracking) {
                this.firedTracking = true;
                TrackingEvent.fireUrls(this.icon.iconViewTrackingUrls, "icon view tracker");
            }
        }

        public void hideIcon() {
            this.buttonState = AdChoicesButtonState.COMPLETE;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.AdChoicesButton.2
                @Override // java.lang.Runnable
                public void run() {
                    AdChoicesButton.this.setVisibility(8);
                }
            });
        }

        private void loadStaticResource() {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.AdChoicesButton.3
                @Override // java.lang.Runnable
                public void run() {
                    final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(AdChoicesButton.this.icon.staticResource.uri);
                    if (bitmapFromGetRequest == null || bitmapFromGetRequest.code != 200 || bitmapFromGetRequest.bitmap == null) {
                        return;
                    }
                    int dimensionPixelSize = AdChoicesButton.this.getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_adchoices_icon_height);
                    int height = bitmapFromGetRequest.bitmap.getHeight();
                    if (height <= 0) {
                        String str = VASTVideoView.TAG;
                        MMLog.m4068e(str, "Invalid icon height: " + height);
                        return;
                    }
                    final RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((bitmapFromGetRequest.bitmap.getWidth() * dimensionPixelSize) / height, dimensionPixelSize);
                    layoutParams.leftMargin = 0;
                    layoutParams.topMargin = 0;
                    layoutParams.rightMargin = Integer.MIN_VALUE;
                    ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.AdChoicesButton.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdChoicesButton.this.setImageBitmap(bitmapFromGetRequest.bitmap);
                            AdChoicesButton.this.setLayoutParams(layoutParams);
                            AdChoicesButton.this.onIconLoaded();
                        }
                    });
                }
            });
        }

        public void onIconLoaded() {
            this.loaded = true;
            if (this.buttonState == AdChoicesButtonState.SHOWING) {
                this.buttonState = AdChoicesButtonState.SHOWN;
                fireIconViewTracking();
            }
        }

        private void showIcon() {
            this.buttonState = AdChoicesButtonState.SHOWING;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.AdChoicesButton.1
                @Override // java.lang.Runnable
                public void run() {
                    AdChoicesButton.this.setVisibility(0);
                }
            });
            if (!this.loadRequested) {
                this.loadRequested = true;
                loadStaticResource();
            } else if (!this.loaded) {
            } else {
                onIconLoaded();
            }
        }

        public void init() {
            VASTParser.Icon iconWithProgram = VASTVideoView.this.getIconWithProgram("adchoices");
            this.icon = iconWithProgram;
            if (iconWithProgram != null) {
                this.startOffset = VASTVideoView.this.vastTimeToMilliseconds(iconWithProgram.offset, 0);
                this.displayDuration = VASTVideoView.this.vastTimeToMilliseconds(this.icon.duration, VASTVideoView.ADCHOICES_DEFAULT_DURATION);
                setOnClickListener(this);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VASTVideoView.this.notifyListenerOnClick();
            VASTParser.IconClicks iconClicks = this.icon.iconClicks;
            if (iconClicks != null && !Utils.isEmpty(iconClicks.clickThrough)) {
                VASTVideoView.this.notifyListenerOnAdLeftApplication();
                Utils.startActivityFromUrl(this.icon.iconClicks.clickThrough);
            }
            fireIconClickTracking();
        }

        public void reset() {
            hideIcon();
            this.lastProgressTime = 0;
            this.totalTimeDisplayed = 0;
            this.buttonState = AdChoicesButtonState.READY;
        }

        public void updateVisibility(int i, int i2) {
            int i3;
            if (this.icon == null) {
                return;
            }
            if (this.buttonState == AdChoicesButtonState.SHOWN && i > this.lastProgressTime && (i3 = i - this.lastProgressTime) <= 1000) {
                this.totalTimeDisplayed += i3;
            }
            this.lastProgressTime = i;
            if (this.buttonState != AdChoicesButtonState.COMPLETE && (this.totalTimeDisplayed >= this.displayDuration || VASTVideoView.this.currentState == 2)) {
                hideIcon();
            } else if (this.buttonState != AdChoicesButtonState.READY || i < this.startOffset) {
            } else {
                showIcon();
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$AdChoicesButtonState.class */
    public enum AdChoicesButtonState {
        READY,
        SHOWING,
        SHOWN,
        COMPLETE
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$ImageButton.class */
    public class ImageButton extends ImageView implements View.OnClickListener {
        public VASTParser.Button button;
        public Integer offset = null;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ImageButton(Context context, VASTParser.Button button) {
            super(context);
            VASTVideoView.this = r4;
            this.button = null;
            this.button = button;
            if (getOffset() > 0) {
                setVisibility(4);
            }
            loadStaticResource();
            setOnClickListener(this);
        }

        private void loadStaticResource() {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.ImageButton.2
                @Override // java.lang.Runnable
                public void run() {
                    final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(ImageButton.this.button.staticResource.uri);
                    if (bitmapFromGetRequest == null || bitmapFromGetRequest.code != 200) {
                        return;
                    }
                    ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.ImageButton.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ImageButton.this.setImageBitmap(bitmapFromGetRequest.bitmap);
                        }
                    });
                }
            });
        }

        public int getOffset() {
            if (this.offset == null) {
                this.offset = Integer.valueOf(VASTVideoView.this.vastTimeToMilliseconds(this.button.offset, -1));
            }
            return this.offset.intValue();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VASTVideoView.this.notifyListenerOnClick();
            VASTParser.ButtonClicks buttonClicks = this.button.buttonClicks;
            if (buttonClicks != null) {
                if (!Utils.isEmpty(buttonClicks.clickThrough)) {
                    VASTVideoView.this.notifyListenerOnAdLeftApplication();
                    Utils.startActivityFromUrl(buttonClicks.clickThrough);
                }
                TrackingEvent.fireUrls(buttonClicks.clickTrackingUrls, "click tracking");
            }
        }

        public boolean updateVisibility(int i) {
            if (i >= getOffset()) {
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.ImageButton.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageButton.this.setVisibility(0);
                    }
                });
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$VASTEndCardViewabilityListener.class */
    public static class VASTEndCardViewabilityListener implements ViewUtils.ViewabilityListener {
        public WeakReference<VASTVideoView> vastVideoViewRef;

        public VASTEndCardViewabilityListener(VASTVideoView vASTVideoView) {
            this.vastVideoViewRef = new WeakReference<>(vASTVideoView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(boolean z) {
            VASTVideoView vASTVideoView = this.vastVideoViewRef.get();
            if (vASTVideoView != null && z && vASTVideoView.selectedCompanionAd.trackingEvents != null && !vASTVideoView.selectedCompanionAd.trackingEvents.isEmpty()) {
                vASTVideoView.fireVideoTrackingEvents(vASTVideoView.selectedCompanionAd.trackingEvents.get(VASTParser.TrackableEvent.creativeView), 0);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$VASTImpressionViewabilityListener.class */
    public static class VASTImpressionViewabilityListener implements ViewUtils.ViewabilityListener {
        public WeakReference<VASTVideoView> vastVideoViewRef;

        public VASTImpressionViewabilityListener(VASTVideoView vASTVideoView) {
            this.vastVideoViewRef = new WeakReference<>(vASTVideoView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(boolean z) {
            VASTVideoView vASTVideoView = this.vastVideoViewRef.get();
            if (vASTVideoView != null && z) {
                vASTVideoView.fireImpressions();
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener.class */
    public interface VASTVideoViewListener {
        void close();

        void onAdLeftApplication();

        void onClicked();

        void onFailed();

        void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent);

        void onLoaded();
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$VASTVideoViewabilityListener.class */
    public static class VASTVideoViewabilityListener implements ViewUtils.ViewabilityListener {
        public boolean didPause = false;
        public WeakReference<MMVideoView> mmVideoViewRef;
        public WeakReference<VASTVideoView> vastVideoViewRef;

        public VASTVideoViewabilityListener(VASTVideoView vASTVideoView, MMVideoView mMVideoView) {
            this.vastVideoViewRef = new WeakReference<>(vASTVideoView);
            this.mmVideoViewRef = new WeakReference<>(mMVideoView);
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(boolean z) {
            MMVideoView mMVideoView = this.mmVideoViewRef.get();
            VASTVideoView vASTVideoView = this.vastVideoViewRef.get();
            if (vASTVideoView == null || mMVideoView == null) {
                return;
            }
            if (z) {
                VASTParser.TrackableEvent trackableEvent = VASTParser.TrackableEvent.creativeView;
                vASTVideoView.fireVideoTrackingEvents(vASTVideoView.getWrapperLinearTrackingEvents(trackableEvent), 0);
                if (vASTVideoView.selectedCreative != null) {
                    vASTVideoView.fireVideoTrackingEvents(vASTVideoView.selectedCreative.linearAd.trackingEvents.get(trackableEvent), 0);
                }
            }
            if (!z && mMVideoView.isPlaying()) {
                this.didPause = true;
                mMVideoView.pause();
            } else if (!this.didPause) {
            } else {
                mMVideoView.start();
                this.didPause = false;
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView.class */
    public class VASTVideoWebView extends MMWebView {
        public int updateTimeInterval = -1;
        public volatile int lastUpdateTime = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VASTVideoWebView(Context context, boolean z, MMWebView.MMWebViewListener mMWebViewListener) {
            super(context, new MMWebView.MMWebViewOptions(true, z, false, false), mMWebViewListener);
            VASTVideoView.this = r10;
        }

        public void close() {
            VASTVideoView.this.close();
        }

        public void pause() {
            if (VASTVideoView.this.currentState != 2) {
                VASTVideoView.this.mmVideoView.pause();
            }
        }

        public void play() {
            if (VASTVideoView.this.currentState != 2) {
                VASTVideoView.this.mmVideoView.start();
            }
        }

        public void restart() {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.VASTVideoWebView.2
                @Override // java.lang.Runnable
                public void run() {
                    VASTVideoView.this.replay();
                }
            });
        }

        public void seek(int i) {
            if (VASTVideoView.this.currentState != 2) {
                VASTVideoView.this.mmVideoView.seekTo(i);
            }
        }

        public void setTimeInterval(int i) {
            this.updateTimeInterval = i;
        }

        public void skip() {
            if (VASTVideoView.this.currentState != 2) {
                VASTVideoView.this.canSkip = true;
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.VASTVideoWebView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VASTVideoView.this.enableSkipControls();
                        VASTVideoView.this.skip();
                    }
                });
            }
        }

        public void triggerTimeUpdate() {
            callJavascript("MmJsBridge.vast.setCurrentTime", Integer.valueOf(VASTVideoView.this.mmVideoView.getCurrentPosition()));
        }

        public void updateTime(int i) {
            if (this.updateTimeInterval != -1) {
                if (this.lastUpdateTime != 0 && this.lastUpdateTime + this.updateTimeInterval > i) {
                    return;
                }
                this.lastUpdateTime = i;
                callJavascript("MmJsBridge.vast.setCurrentTime", Integer.valueOf(i));
            }
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        supportImageTypes = arrayList;
        arrayList.add(IMAGE_BMP);
        arrayList.add(IMAGE_GIF);
        arrayList.add(IMAGE_JPEG);
        arrayList.add(IMAGE_PNG);
    }

    public VASTVideoView(Context context, VASTParser.InLineAd inLineAd, List<VASTParser.WrapperAd> list, VASTVideoViewListener vASTVideoViewListener) {
        super(context);
        boolean z = false;
        this.currentState = 0;
        this.shouldHandleTrackingEvents = true;
        this.lastKnownOrientation = 0;
        this.inLineAd = inLineAd;
        this.wrapperAds = list;
        setBackgroundColor(-16777216);
        setId(C0764R.C0766id.mmadsdk_vast_video_view);
        if (isPortrait()) {
            this.lastKnownOrientation = 1;
        } else {
            this.lastKnownOrientation = 2;
        }
        this.firedTrackingEvents = Collections.synchronizedSet(new HashSet());
        this.vastVideoViewListener = vASTVideoViewListener;
        this.impressionViewabilityWatcher = new ViewUtils.ViewabilityWatcher(this, new VASTImpressionViewabilityListener(this));
        FrameLayout frameLayout = new FrameLayout(getContext());
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(frameLayout, layoutParams);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.backgroundFrame = frameLayout2;
        frameLayout2.setTag("mmVastVideoView_backgroundFrame");
        this.backgroundFrame.setVisibility(8);
        frameLayout.addView(this.backgroundFrame, new FrameLayout.LayoutParams(-1, -1));
        MMVideoView mMVideoView = new MMVideoView(context, true, false, Handshake.isMoatEnabled() ? getMoatIdentifiers() : null, this);
        this.mmVideoView = mMVideoView;
        mMVideoView.setTag("mmVastVideoView_videoView");
        MMVideoView mMVideoView2 = this.mmVideoView;
        this.videoViewabilityWatcher = new ViewUtils.ViewabilityWatcher(mMVideoView2, new VASTVideoViewabilityListener(this, mMVideoView2));
        RelativeLayout.LayoutParams layoutParams2 = layoutParams;
        if (isPortrait()) {
            layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.addRule(3, C0764R.C0766id.mmadsdk_vast_video_control_buttons);
        }
        addView(this.mmVideoView, layoutParams2);
        AdChoicesButton adChoicesButton = new AdChoicesButton(context);
        this.adChoicesButton = adChoicesButton;
        addView(adChoicesButton);
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.endCardContainer = frameLayout3;
        frameLayout3.setTag("mmVastVideoView_endCardContainer");
        this.endCardContainer.setVisibility(8);
        this.endCardViewabilityWatcher = new ViewUtils.ViewabilityWatcher(this.endCardContainer, new VASTEndCardViewabilityListener(this));
        this.impressionViewabilityWatcher.startWatching();
        this.videoViewabilityWatcher.startWatching();
        this.endCardViewabilityWatcher.startWatching();
        frameLayout.addView(this.endCardContainer, new FrameLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.controlButtonContainer = relativeLayout;
        relativeLayout.setId(C0764R.C0766id.mmadsdk_vast_video_control_buttons);
        ImageView imageView = new ImageView(context);
        this.closeButton = imageView;
        imageView.setImageDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_vast_close));
        this.closeButton.setVisibility(8);
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VASTVideoView.this.close();
            }
        });
        this.closeButton.setTag("mmVastVideoView_closeButton");
        Resources resources = getResources();
        int i = C0764R.dimen.mmadsdk_control_button_width;
        int dimensionPixelSize = resources.getDimensionPixelSize(i);
        Resources resources2 = getResources();
        int i2 = C0764R.dimen.mmadsdk_control_button_height;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(dimensionPixelSize, resources2.getDimensionPixelSize(i2));
        layoutParams3.addRule(10);
        layoutParams3.addRule(11);
        this.controlButtonContainer.addView(this.closeButton, layoutParams3);
        ImageView imageView2 = new ImageView(context);
        this.skipButton = imageView2;
        imageView2.setImageDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_vast_skip));
        this.skipButton.setTag("mmVastVideoView_skipButton");
        this.skipButton.setEnabled(false);
        TextView textView = new TextView(context);
        this.countdown = textView;
        textView.setBackground(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_vast_opacity));
        this.countdown.setTextColor(getResources().getColor(17170443));
        this.countdown.setTypeface(null, 1);
        this.countdown.setGravity(17);
        this.countdown.setVisibility(4);
        this.countdown.setTag("mmVastVideoView_countdown");
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(i), getResources().getDimensionPixelSize(i2));
        layoutParams4.addRule(10);
        layoutParams4.addRule(11);
        this.controlButtonContainer.addView(this.skipButton, layoutParams4);
        this.controlButtonContainer.addView(this.countdown, layoutParams4);
        ImageView imageView3 = new ImageView(context);
        this.replayButton = imageView3;
        imageView3.setImageDrawable(getResources().getDrawable(C0764R.C0765drawable.mmadsdk_vast_replay));
        this.replayButton.setVisibility(8);
        this.replayButton.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VASTVideoView.this.notifyListenerOnClick();
                VASTVideoView.this.replay();
            }
        });
        this.replayButton.setTag("mmVastVideoView_replayButton");
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(i), getResources().getDimensionPixelSize(i2));
        layoutParams5.addRule(10);
        layoutParams5.addRule(9);
        this.controlButtonContainer.addView(this.replayButton, layoutParams5);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams6.addRule(10);
        addView(this.controlButtonContainer, layoutParams6);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams7.addRule(12);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.buttonContainer = linearLayout;
        addView(linearLayout, layoutParams7);
        loadInlineAd(context);
        this.shouldHandleTrackingEvents = (hasTrackingEvents(this.selectedCreative) || haveTrackingEvents(this.wrapperAds)) ? true : z;
        this.currentState = 1;
        updateComponentVisibility();
    }

    private static void addTrackingEventUrls(List<TrackingEvent> list, List<String> list2, String str) {
        if (list2 != null) {
            for (String str2 : list2) {
                if (!Utils.isEmpty(str2)) {
                    list.add(new TrackingEvent(str, str2));
                }
            }
        }
    }

    public void close() {
        if (this.selectedCreative != null) {
            VASTParser.TrackableEvent trackableEvent = VASTParser.TrackableEvent.closeLinear;
            fireVideoTrackingEvents(getWrapperLinearTrackingEvents(trackableEvent), 0);
            fireVideoTrackingEvents(this.selectedCreative.linearAd.trackingEvents.get(trackableEvent), 0);
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoView.this.vastVideoViewListener != null) {
                    VASTVideoView.this.vastVideoViewListener.close();
                }
            }
        });
    }

    private void createCompanionWebView(String str) {
        VASTVideoWebView vASTVideoWebView = new VASTVideoWebView(getContext(), false, new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.10
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                VASTVideoView.this.notifyListenerOnAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                VASTVideoView.this.notifyListenerOnClick();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
                VASTVideoView vASTVideoView = VASTVideoView.this;
                vASTVideoView.onWebViewReady(vASTVideoView.companionAdWebView);
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z) {
            }
        });
        this.companionAdWebView = vASTVideoWebView;
        vASTVideoWebView.setTag("mmVastVideoView_companionWebView");
        loadContentIntoWebView(this.companionAdWebView, str);
    }

    public void doComplete() {
        View childAt;
        this.currentState = 2;
        this.countdown.setVisibility(8);
        this.adChoicesButton.hideIcon();
        if (this.selectedCompanionAd == null || this.endCardContainer.getChildCount() <= 0) {
            close();
            return;
        }
        this.replayButton.setVisibility(0);
        this.skipButton.setVisibility(8);
        this.closeButton.setVisibility(0);
        for (int i = 0; i < this.buttonContainer.getChildCount(); i++) {
            View childAt2 = this.buttonContainer.getChildAt(i);
            if ((childAt2 instanceof FrameLayout) && (childAt = ((FrameLayout) childAt2).getChildAt(0)) != null) {
                childAt.setVisibility(0);
            }
        }
        updateComponentVisibility();
    }

    private boolean doCreativesHaveTrackingEvents(List<VASTParser.Creative> list) {
        boolean z;
        if (list != null) {
            for (VASTParser.Creative creative : list) {
                VASTParser.LinearAd linearAd = creative.linearAd;
                if (linearAd != null && !linearAd.trackingEvents.isEmpty()) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    public void enableSkipControls() {
        this.countdown.setVisibility(8);
        this.skipButton.setEnabled(true);
        this.skipButton.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VASTVideoView.this.skip();
            }
        });
    }

    public void fireClickTracking(VASTParser.VideoClicks videoClicks, boolean z) {
        if (videoClicks != null) {
            ArrayList arrayList = new ArrayList();
            addTrackingEventUrls(arrayList, videoClicks.clickTrackingUrls, "video click tracker");
            if (z) {
                addTrackingEventUrls(arrayList, videoClicks.customClickUrls, "custom click");
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    public void fireCompanionAdClickTracking() {
        if (this.selectedCompanionAd != null) {
            List<VASTParser.CompanionAd> wrapperCompanionAdTracking = getWrapperCompanionAdTracking();
            ArrayList arrayList = new ArrayList();
            addTrackingEventUrls(arrayList, this.selectedCompanionAd.companionClickTracking, "tracking");
            for (VASTParser.CompanionAd companionAd : wrapperCompanionAdTracking) {
                addTrackingEventUrls(arrayList, companionAd.companionClickTracking, "wrapper tracking");
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    public void fireImpressions() {
        VASTParser.InLineAd inLineAd = this.inLineAd;
        if (inLineAd == null || inLineAd.impressions == null) {
            return;
        }
        this.impressionViewabilityWatcher.stopWatching();
        ArrayList arrayList = new ArrayList();
        addTrackingEventUrls(arrayList, this.inLineAd.impressions, "impression");
        List<VASTParser.WrapperAd> list = this.wrapperAds;
        if (list != null) {
            for (VASTParser.WrapperAd wrapperAd : list) {
                addTrackingEventUrls(arrayList, wrapperAd.impressions, "wrapper immpression");
            }
        }
        TrackingEvent.fireEvents(arrayList);
    }

    private void fireVideoTrackingEvent(VASTParser.TrackingEvent trackingEvent, int i) {
        fireVideoTrackingEvents(Arrays.asList(trackingEvent), i);
    }

    public void fireVideoTrackingEvents(List<VASTParser.TrackingEvent> list, int i) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (VASTParser.TrackingEvent trackingEvent : list) {
                if (trackingEvent != null && !Utils.isEmpty(trackingEvent.url) && !this.firedTrackingEvents.contains(trackingEvent)) {
                    this.firedTrackingEvents.add(trackingEvent);
                    arrayList.add(new VideoTrackingEvent(trackingEvent.event.name(), trackingEvent.url, i));
                }
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    public void fireWrappersClickTracking(List<VASTParser.VideoClicks> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (VASTParser.VideoClicks videoClicks : list) {
            addTrackingEventUrls(arrayList, videoClicks.clickTrackingUrls, "wrapper video click tracker");
            if (z) {
                addTrackingEventUrls(arrayList, videoClicks.customClickUrls, "wrapper custom click tracker");
            }
        }
        TrackingEvent.fireEvents(arrayList);
    }

    public int getBackgroundColor(VASTParser.StaticResource staticResource) {
        int i;
        String str;
        if (staticResource != null && (str = staticResource.backgroundColor) != null) {
            try {
                i = Color.parseColor(str);
            } catch (IllegalArgumentException e) {
                MMLog.m4062w(TAG, "Invalid hex color format specified = " + staticResource.backgroundColor);
            }
            return i;
        }
        i = -16777216;
        return i;
    }

    private Map<String, VASTParser.Icon> getIconsClosestToCreative() {
        List<VASTParser.Icon> list;
        List<VASTParser.Icon> list2;
        HashMap hashMap = new HashMap();
        List<VASTParser.WrapperAd> list3 = this.wrapperAds;
        if (list3 != null) {
            for (VASTParser.WrapperAd wrapperAd : list3) {
                List<VASTParser.Creative> list4 = wrapperAd.creatives;
                if (list4 != null) {
                    for (VASTParser.Creative creative : list4) {
                        VASTParser.LinearAd linearAd = creative.linearAd;
                        if (linearAd != null && (list2 = linearAd.icons) != null) {
                            for (VASTParser.Icon icon : list2) {
                                if (isValidAdChoicesIcon(icon)) {
                                    hashMap.put(icon.program.toLowerCase(Locale.ROOT), icon);
                                }
                            }
                        }
                    }
                }
            }
        }
        VASTParser.Creative creative2 = this.selectedCreative;
        if (creative2 != null && (list = creative2.linearAd.icons) != null) {
            for (VASTParser.Icon icon2 : list) {
                if (isValidAdChoicesIcon(icon2)) {
                    hashMap.put(icon2.program.toLowerCase(Locale.ROOT), icon2);
                }
            }
        }
        return hashMap;
    }

    private List<VASTParser.CompanionAd> getWrapperCompanionAdTracking() {
        ArrayList arrayList = new ArrayList();
        List<VASTParser.WrapperAd> list = this.wrapperAds;
        if (list == null) {
            return arrayList;
        }
        for (VASTParser.WrapperAd wrapperAd : list) {
            List<VASTParser.Creative> list2 = wrapperAd.creatives;
            if (list2 != null) {
                for (VASTParser.Creative creative : list2) {
                    List<VASTParser.CompanionAd> list3 = creative.companionAds;
                    if (list3 != null) {
                        Iterator<VASTParser.CompanionAd> it = list3.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                VASTParser.CompanionAd next = it.next();
                                if (next.htmlResource == null && next.iframeResource == null && next.staticResource == null) {
                                    arrayList.add(next);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public List<VASTParser.TrackingEvent> getWrapperLinearTrackingEvents(VASTParser.TrackableEvent trackableEvent) {
        List<VASTParser.TrackingEvent> list;
        ArrayList arrayList = new ArrayList();
        List<VASTParser.WrapperAd> list2 = this.wrapperAds;
        if (list2 != null) {
            for (VASTParser.WrapperAd wrapperAd : list2) {
                List<VASTParser.Creative> list3 = wrapperAd.creatives;
                if (list3 != null) {
                    for (VASTParser.Creative creative : list3) {
                        VASTParser.LinearAd linearAd = creative.linearAd;
                        if (linearAd != null && (list = linearAd.trackingEvents.get(trackableEvent)) != null) {
                            arrayList.addAll(list);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private List<VASTParser.VideoClicks> getWrapperVideoClicks() {
        VASTParser.VideoClicks videoClicks;
        ArrayList arrayList = new ArrayList();
        List<VASTParser.WrapperAd> list = this.wrapperAds;
        if (list != null) {
            for (VASTParser.WrapperAd wrapperAd : list) {
                List<VASTParser.Creative> list2 = wrapperAd.creatives;
                if (list2 != null) {
                    for (VASTParser.Creative creative : list2) {
                        VASTParser.LinearAd linearAd = creative.linearAd;
                        if (linearAd != null && (videoClicks = linearAd.videoClicks) != null) {
                            arrayList.add(videoClicks);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean hasTrackingEvents(VASTParser.Creative creative) {
        boolean z;
        if (creative != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(creative);
            z = doCreativesHaveTrackingEvents(arrayList);
        } else {
            z = false;
        }
        return z;
    }

    private boolean hasVideoClicks(VASTParser.VideoClicks videoClicks) {
        return videoClicks != null && (!Utils.isEmpty(videoClicks.clickThrough) || !videoClicks.customClickUrls.isEmpty());
    }

    private boolean haveTrackingEvents(List<VASTParser.WrapperAd> list) {
        boolean z = false;
        if (list != null) {
            Iterator<VASTParser.WrapperAd> it = list.iterator();
            z = false;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                boolean doCreativesHaveTrackingEvents = doCreativesHaveTrackingEvents(it.next().creatives);
                z = doCreativesHaveTrackingEvents;
                if (doCreativesHaveTrackingEvents) {
                    z = doCreativesHaveTrackingEvents;
                    break;
                }
            }
        }
        return z;
    }

    private boolean haveVideoClicks(List<VASTParser.VideoClicks> list) {
        for (VASTParser.VideoClicks videoClicks : list) {
            if (hasVideoClicks(videoClicks)) {
                return true;
            }
        }
        return false;
    }

    private boolean isPortrait() {
        return getResources().getConfiguration().orientation != 2;
    }

    public static boolean isValidAdChoicesIcon(VASTParser.Icon icon) {
        String str;
        VASTParser.IconClicks iconClicks;
        VASTParser.StaticResource staticResource;
        if (icon == null || (str = icon.program) == null || !str.equalsIgnoreCase("adchoices") || (iconClicks = icon.iconClicks) == null || Utils.isEmpty(iconClicks.clickThrough) || (staticResource = icon.staticResource) == null || Utils.isEmpty(staticResource.uri)) {
            if (!MMLog.isDebugEnabled()) {
                return false;
            }
            String str2 = TAG;
            MMLog.m4070d(str2, "Invalid adchoices icon: " + icon);
            return false;
        }
        return true;
    }

    private void loadBackground() {
        final VASTParser.Background background;
        VASTParser.MMExtension mMExtension = this.inLineAd.mmExtension;
        if (mMExtension == null || (background = mMExtension.background) == null) {
            return;
        }
        VASTParser.StaticResource staticResource = background.staticResource;
        if (staticResource != null && !Utils.isEmpty(staticResource.uri)) {
            final ImageView imageView = new ImageView(getContext());
            imageView.setTag("mmVastVideoView_backgroundImageView");
            this.backgroundFrame.addView(imageView);
            this.backgroundFrame.setBackgroundColor(getBackgroundColor(background.staticResource));
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.11
                @Override // java.lang.Runnable
                public void run() {
                    final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(background.staticResource.uri);
                    if (bitmapFromGetRequest.code == 200) {
                        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.11.1
                            @Override // java.lang.Runnable
                            public void run() {
                                imageView.setImageBitmap(bitmapFromGetRequest.bitmap);
                            }
                        });
                    }
                }
            });
            return;
        }
        VASTParser.WebResource webResource = background.webResource;
        if (webResource == null || Utils.isEmpty(webResource.uri)) {
            return;
        }
        VASTVideoWebView vASTVideoWebView = new VASTVideoWebView(getContext(), false, new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.12
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                VASTVideoView.this.notifyListenerOnAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                VASTVideoView.this.notifyListenerOnClick();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
                VASTVideoView vASTVideoView = VASTVideoView.this;
                vASTVideoView.onWebViewReady(vASTVideoView.backgroundWebView);
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z) {
            }
        });
        this.backgroundWebView = vASTVideoWebView;
        vASTVideoWebView.setTag("mmVastVideoView_backgroundWebView");
        this.backgroundFrame.addView(this.backgroundWebView);
        loadContentIntoWebView(this.backgroundWebView, background.webResource.uri);
    }

    private void loadButtons() {
        List<VASTParser.Button> list;
        VASTParser.MMExtension mMExtension = this.inLineAd.mmExtension;
        if (mMExtension == null || (list = mMExtension.buttons) == null) {
            return;
        }
        Collections.sort(list, new Comparator<VASTParser.Button>() { // from class: com.millennialmedia.internal.video.VASTVideoView.13
            public int compare(VASTParser.Button button, VASTParser.Button button2) {
                return button.position - button2.position;
            }
        });
        int i = 0;
        int dimensionPixelSize = getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_ad_button_width);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_ad_button_height);
        for (VASTParser.Button button : this.inLineAd.mmExtension.buttons) {
            if (i >= 3) {
                return;
            }
            VASTParser.StaticResource staticResource = button.staticResource;
            if (staticResource != null && !Utils.isEmpty(staticResource.uri) && !Utils.isEmpty(button.staticResource.creativeType) && button.staticResource.creativeType.trim().equalsIgnoreCase(IMAGE_PNG)) {
                i++;
                ImageButton imageButton = new ImageButton(getContext(), button);
                imageButton.setTag("mmVastVideoView_mmExtensionButton_" + i);
                FrameLayout frameLayout = new FrameLayout(getContext());
                frameLayout.addView(imageButton, new FrameLayout.LayoutParams(-1, -1));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize2, isPortrait() ? 1.0f : 0.0f);
                if (!isPortrait()) {
                    layoutParams.leftMargin = getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_ad_button_padding_left);
                }
                this.buttonContainer.addView(frameLayout, layoutParams);
            }
        }
    }

    private void loadCompanionAd() {
        FrameLayout frameLayout;
        View.OnClickListener onClickListener;
        Integer num;
        Integer num2;
        VASTParser.StaticResource staticResource;
        VASTParser.WebResource webResource;
        VASTParser.WebResource webResource2;
        List<VASTParser.Creative> list = this.inLineAd.creatives;
        if (list != null) {
            for (VASTParser.Creative creative : list) {
                List<VASTParser.CompanionAd> list2 = creative.companionAds;
                if (list2 != null && !list2.isEmpty()) {
                    for (VASTParser.CompanionAd companionAd : creative.companionAds) {
                        if (companionAd != null && (num = companionAd.width) != null && num.intValue() >= COMPANION_AD_MIN_WIDTH && (num2 = companionAd.height) != null && num2.intValue() >= COMPANION_AD_MIN_HEIGHT && (((staticResource = companionAd.staticResource) != null && !Utils.isEmpty(staticResource.uri) && supportImageTypes.contains(companionAd.staticResource.creativeType)) || (((webResource = companionAd.htmlResource) != null && !Utils.isEmpty(webResource.uri)) || ((webResource2 = companionAd.iframeResource) != null && !Utils.isEmpty(webResource2.uri))))) {
                            this.selectedCompanionAd = companionAd;
                            break;
                        }
                    }
                }
                if (this.selectedCompanionAd != null && creative != this.selectedCreative) {
                    break;
                }
            }
        }
        VASTParser.CompanionAd companionAd2 = this.selectedCompanionAd;
        if (companionAd2 != null) {
            VASTParser.WebResource webResource3 = companionAd2.iframeResource;
            if (webResource3 == null || Utils.isEmpty(webResource3.uri)) {
                VASTParser.WebResource webResource4 = this.selectedCompanionAd.htmlResource;
                if (webResource4 == null || Utils.isEmpty(webResource4.uri)) {
                    VASTParser.StaticResource staticResource2 = this.selectedCompanionAd.staticResource;
                    if (staticResource2 == null || Utils.isEmpty(staticResource2.uri)) {
                        return;
                    }
                    ThreadUtils.runOnWorkerThread(new RunnableC09869());
                    return;
                }
                createCompanionWebView(this.selectedCompanionAd.htmlResource.uri);
                this.endCardContainer.addView(this.companionAdWebView, new FrameLayout.LayoutParams(-1, -1));
                frameLayout = this.endCardContainer;
                onClickListener = new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.8
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        VASTVideoView.this.fireCompanionAdClickTracking();
                    }
                };
            } else {
                createCompanionWebView(this.selectedCompanionAd.iframeResource.uri);
                this.endCardContainer.addView(this.companionAdWebView, new FrameLayout.LayoutParams(-1, -1));
                frameLayout = this.endCardContainer;
                onClickListener = new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.7
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        VASTVideoView.this.fireCompanionAdClickTracking();
                    }
                };
            }
            frameLayout.setOnClickListener(onClickListener);
        }
    }

    private void loadContentIntoWebView(final VASTVideoWebView vASTVideoWebView, final String str) {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.6
            @Override // java.lang.Runnable
            public void run() {
                final HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(str);
                if (contentFromGetRequest.code != 200 || Utils.isEmpty(contentFromGetRequest.content)) {
                    return;
                }
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        vASTVideoWebView.setContent(contentFromGetRequest.content);
                    }
                });
            }
        });
    }

    private void loadInlineAd(Context context) {
        File externalFilesDir;
        VASTParser.MediaFile selectMediaFile;
        List<VASTParser.Creative> list = this.inLineAd.creatives;
        if (list != null) {
            Iterator<VASTParser.Creative> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                VASTParser.Creative next = it.next();
                VASTParser.LinearAd linearAd = next.linearAd;
                if (linearAd != null && (selectMediaFile = selectMediaFile(linearAd.mediaFiles)) != null) {
                    this.selectedMediaFile = selectMediaFile;
                    this.selectedCreative = next;
                    break;
                }
            }
        }
        if (this.selectedMediaFile == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "VAST init failed because it did not contain a compatible media file.");
            }
            VASTVideoViewListener vASTVideoViewListener = this.vastVideoViewListener;
            if (vASTVideoViewListener == null) {
                return;
            }
            vASTVideoViewListener.onFailed();
            return;
        }
        if (context.getExternalFilesDir(null) == null) {
            MMLog.m4068e(TAG, "Cannot access video cache directory. External storage is not available.");
            VASTVideoViewListener vASTVideoViewListener2 = this.vastVideoViewListener;
            if (vASTVideoViewListener2 == null) {
                return;
            }
            vASTVideoViewListener2.onFailed();
            return;
        }
        File file = new File(externalFilesDir.getAbsolutePath() + File.separator + "_mm_video_cache");
        file.mkdirs();
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile()) {
                    if (System.currentTimeMillis() - file2.lastModified() > 43200000) {
                        file2.delete();
                    }
                }
            }
        }
        IOUtils.downloadFile(this.selectedMediaFile.url.trim(), null, file, new IOUtils.DownloadListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.4
            @Override // com.millennialmedia.internal.utils.IOUtils.DownloadListener
            public void onDownloadFailed(Throwable th) {
                MMLog.m4067e(VASTVideoView.TAG, "Error occurred downloading the video file.", th);
                if (VASTVideoView.this.vastVideoViewListener != null) {
                    VASTVideoView.this.vastVideoViewListener.onFailed();
                }
            }

            @Override // com.millennialmedia.internal.utils.IOUtils.DownloadListener
            public void onDownloadSucceeded(final File file3) {
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VASTVideoView.this.videoFile = file3;
                        VASTVideoView.this.mmVideoView.setVideoURI(Uri.parse(file3.getAbsolutePath()));
                        VASTVideoView.this.registerVideoClicks();
                    }
                });
            }
        });
        loadButtons();
        loadBackground();
        loadOverlay();
        loadCompanionAd();
        this.adChoicesButton.init();
    }

    private void loadOverlay() {
        VASTParser.Overlay overlay;
        VASTParser.MMExtension mMExtension = this.inLineAd.mmExtension;
        if (mMExtension == null || (overlay = mMExtension.overlay) == null || Utils.isEmpty(overlay.uri)) {
            return;
        }
        VASTVideoWebView vASTVideoWebView = new VASTVideoWebView(getContext(), true, new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.5
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                VASTVideoView.this.notifyListenerOnAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                VASTVideoView.this.notifyListenerOnClick();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
                VASTVideoView vASTVideoView = VASTVideoView.this;
                vASTVideoView.onWebViewReady(vASTVideoView.overlayWebView);
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z) {
            }
        });
        this.overlayWebView = vASTVideoWebView;
        vASTVideoWebView.setTag("mmVastVideoView_overlayWebView");
        loadContentIntoWebView(this.overlayWebView, this.inLineAd.mmExtension.overlay.uri);
    }

    public void notifyListenerOnAdLeftApplication() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.21
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoView.this.vastVideoViewListener != null) {
                    VASTVideoView.this.vastVideoViewListener.onAdLeftApplication();
                }
            }
        });
    }

    public void notifyListenerOnClick() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.20
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoView.this.vastVideoViewListener != null) {
                    VASTVideoView.this.vastVideoViewListener.onClicked();
                }
            }
        });
    }

    public void onWebViewReady(MMWebView mMWebView) {
        mMWebView.callJavascript("MmJsBridge.vast.enableWebOverlay", new Object[0]);
        mMWebView.callJavascript("MmJsBridge.vast.setDuration", Integer.valueOf(this.mmVideoView.getDuration()));
        if (this.videoState != null) {
            mMWebView.callJavascript("MmJsBridge.vast.setState", this.videoState);
        }
    }

    private void processProgressTrackingEvents(int i) {
        String str;
        StringBuilder sb;
        String str2;
        ArrayList<VASTParser.TrackingEvent> arrayList = new ArrayList();
        Map<VASTParser.TrackableEvent, List<VASTParser.TrackingEvent>> map = this.selectedCreative.linearAd.trackingEvents;
        VASTParser.TrackableEvent trackableEvent = VASTParser.TrackableEvent.progress;
        List<VASTParser.TrackingEvent> list = map.get(trackableEvent);
        if (list != null) {
            arrayList.addAll(list);
        }
        List<VASTParser.TrackingEvent> wrapperLinearTrackingEvents = getWrapperLinearTrackingEvents(trackableEvent);
        if (wrapperLinearTrackingEvents != null) {
            arrayList.addAll(wrapperLinearTrackingEvents);
        }
        for (VASTParser.TrackingEvent trackingEvent : arrayList) {
            VASTParser.ProgressEvent progressEvent = (VASTParser.ProgressEvent) trackingEvent;
            int vastTimeToMilliseconds = vastTimeToMilliseconds(progressEvent.offset, -1);
            if (vastTimeToMilliseconds == -1) {
                if (MMLog.isDebugEnabled()) {
                    str = TAG;
                    sb = new StringBuilder();
                    sb.append("Progress event could not be fired because the time offset is invalid. url = ");
                    sb.append(progressEvent.url);
                    str2 = ", offset = ";
                    sb.append(str2);
                    sb.append(progressEvent.offset);
                    MMLog.m4070d(str, sb.toString());
                }
                this.firedTrackingEvents.add(progressEvent);
            } else if (Utils.isEmpty(progressEvent.url)) {
                if (MMLog.isDebugEnabled()) {
                    str = TAG;
                    sb = new StringBuilder();
                    str2 = "Progress event could not be fired because the url is empty. offset = ";
                    sb.append(str2);
                    sb.append(progressEvent.offset);
                    MMLog.m4070d(str, sb.toString());
                }
                this.firedTrackingEvents.add(progressEvent);
            } else if (!this.firedTrackingEvents.contains(trackingEvent) && i >= vastTimeToMilliseconds) {
                fireVideoTrackingEvent(progressEvent, i);
            }
        }
    }

    private void processQuartileTrackingEvents(int i, int i2) {
        int i3 = i2 / 4;
        if (i >= i3 && this.lastQuartileFired < 1) {
            this.lastQuartileFired = 1;
            VASTParser.TrackableEvent trackableEvent = VASTParser.TrackableEvent.firstQuartile;
            fireVideoTrackingEvents(getWrapperLinearTrackingEvents(trackableEvent), i);
            fireVideoTrackingEvents(this.selectedCreative.linearAd.trackingEvents.get(trackableEvent), i);
        }
        if (i >= i3 * 2 && this.lastQuartileFired < 2) {
            this.lastQuartileFired = 2;
            VASTParser.TrackableEvent trackableEvent2 = VASTParser.TrackableEvent.midpoint;
            fireVideoTrackingEvents(getWrapperLinearTrackingEvents(trackableEvent2), i);
            fireVideoTrackingEvents(this.selectedCreative.linearAd.trackingEvents.get(trackableEvent2), i);
        }
        if (i < i3 * 3 || this.lastQuartileFired >= 3) {
            return;
        }
        this.lastQuartileFired = 3;
        VASTParser.TrackableEvent trackableEvent3 = VASTParser.TrackableEvent.thirdQuartile;
        fireVideoTrackingEvents(getWrapperLinearTrackingEvents(trackableEvent3), i);
        fireVideoTrackingEvents(this.selectedCreative.linearAd.trackingEvents.get(trackableEvent3), i);
    }

    public void registerVideoClicks() {
        final VASTParser.VideoClicks videoClicks = this.selectedCreative.linearAd.videoClicks;
        final List<VASTParser.VideoClicks> wrapperVideoClicks = getWrapperVideoClicks();
        if (hasVideoClicks(videoClicks) || haveVideoClicks(wrapperVideoClicks)) {
            this.mmVideoView.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.VASTVideoView.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    boolean z;
                    VASTVideoView vASTVideoView;
                    VASTParser.VideoClicks videoClicks2;
                    VASTVideoView.this.notifyListenerOnClick();
                    VASTParser.VideoClicks videoClicks3 = videoClicks;
                    if (videoClicks3 == null || Utils.isEmpty(videoClicks3.clickThrough)) {
                        vASTVideoView = VASTVideoView.this;
                        videoClicks2 = videoClicks;
                        z = true;
                    } else {
                        Utils.startActivityFromUrl(videoClicks.clickThrough);
                        VASTVideoView.this.notifyListenerOnAdLeftApplication();
                        vASTVideoView = VASTVideoView.this;
                        videoClicks2 = videoClicks;
                        z = false;
                    }
                    vASTVideoView.fireClickTracking(videoClicks2, z);
                    VASTVideoView.this.fireWrappersClickTracking(wrapperVideoClicks, z);
                }
            });
        }
    }

    public void replay() {
        this.currentState = 1;
        VASTVideoWebView vASTVideoWebView = this.overlayWebView;
        if (vASTVideoWebView != null) {
            vASTVideoWebView.lastUpdateTime = 0;
        }
        VASTVideoWebView vASTVideoWebView2 = this.backgroundWebView;
        if (vASTVideoWebView2 != null) {
            vASTVideoWebView2.lastUpdateTime = 0;
        }
        updateComponentVisibility();
        this.replayButton.setVisibility(8);
        this.closeButton.setVisibility(8);
        this.skipButton.setVisibility(0);
        this.adChoicesButton.reset();
        this.mmVideoView.restart();
    }

    private VASTParser.MediaFile selectMediaFile(List<VASTParser.MediaFile> list) {
        VASTParser.MediaFile mediaFile = null;
        if (list != null) {
            if (!list.isEmpty()) {
                String networkConnectionType = EnvironmentUtils.getNetworkConnectionType();
                int i = 800;
                if ("wifi".equalsIgnoreCase(networkConnectionType)) {
                    i = WIFI_MAX_BITRATE;
                } else {
                    "lte".equalsIgnoreCase(networkConnectionType);
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d("TAG", "Using bit rate range " + MIN_BITRATE + " to " + i + " inclusive for network connectivity type = " + networkConnectionType);
                }
                Iterator<VASTParser.MediaFile> it = list.iterator();
                VASTParser.MediaFile mediaFile2 = null;
                while (true) {
                    mediaFile = mediaFile2;
                    if (!it.hasNext()) {
                        break;
                    }
                    VASTParser.MediaFile next = it.next();
                    if (!Utils.isEmpty(next.url)) {
                        boolean equalsIgnoreCase = PROGRESSIVE.equalsIgnoreCase(next.delivery);
                        boolean equalsIgnoreCase2 = "video/mp4".equalsIgnoreCase(next.contentType);
                        int i2 = next.bitrate;
                        boolean z = i2 >= MIN_BITRATE && i2 <= i;
                        boolean z2 = true;
                        if (mediaFile2 != null) {
                            z2 = mediaFile2.bitrate < i2;
                        }
                        if (equalsIgnoreCase && equalsIgnoreCase2 && z && z2) {
                            mediaFile2 = next;
                        }
                    }
                }
            } else {
                mediaFile = null;
            }
        }
        return mediaFile;
    }

    private void setKeepScreenOnUIThread(final boolean z) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.18
            @Override // java.lang.Runnable
            public void run() {
                VASTVideoView.this.setKeepScreenOn(z);
            }
        });
    }

    private void setVideoState(String str) {
        this.videoState = str;
        VASTVideoWebView vASTVideoWebView = this.overlayWebView;
        if (vASTVideoWebView != null && vASTVideoWebView.isJSBridgeReady()) {
            this.overlayWebView.callJavascript("MmJsBridge.vast.setState", this.videoState);
        }
        VASTVideoWebView vASTVideoWebView2 = this.backgroundWebView;
        if (vASTVideoWebView2 == null || !vASTVideoWebView2.isJSBridgeReady()) {
            return;
        }
        this.backgroundWebView.callJavascript("MmJsBridge.vast.setState", this.videoState);
    }

    public void skip() {
        if (this.selectedCreative != null) {
            VASTParser.TrackableEvent trackableEvent = VASTParser.TrackableEvent.skip;
            fireVideoTrackingEvents(getWrapperLinearTrackingEvents(trackableEvent), 0);
            fireVideoTrackingEvents(this.selectedCreative.linearAd.trackingEvents.get(trackableEvent), 0);
        }
        this.mmVideoView.videoSkipped();
        doComplete();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
        if (r0.hideButtons != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
        r3.buttonContainer.setVisibility(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateButtonContainerVisibility() {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.currentState
            r1 = 1
            if (r0 != r1) goto L59
            r0 = r3
            boolean r0 = r0.isPortrait()
            if (r0 == 0) goto L34
            r0 = r3
            com.millennialmedia.internal.video.VASTParser$InLineAd r0 = r0.inLineAd
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L7c
            r0 = r4
            com.millennialmedia.internal.video.VASTParser$MMExtension r0 = r0.mmExtension
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L7c
            r0 = r4
            com.millennialmedia.internal.video.VASTParser$Background r0 = r0.background
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L7c
            r0 = r4
            boolean r0 = r0.hideButtons
            if (r0 == 0) goto L7c
            goto L71
        L34:
            r0 = r3
            com.millennialmedia.internal.video.VASTParser$InLineAd r0 = r0.inLineAd
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L7c
            r0 = r4
            com.millennialmedia.internal.video.VASTParser$MMExtension r0 = r0.mmExtension
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L7c
            r0 = r4
            com.millennialmedia.internal.video.VASTParser$Overlay r0 = r0.overlay
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L7c
            r0 = r4
            boolean r0 = r0.hideButtons
            if (r0 == 0) goto L7c
            goto L71
        L59:
            r0 = r3
            int r0 = r0.currentState
            r1 = 2
            if (r0 != r1) goto L84
            r0 = r3
            com.millennialmedia.internal.video.VASTParser$CompanionAd r0 = r0.selectedCompanionAd
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L7c
            r0 = r4
            boolean r0 = r0.hideButtons
            if (r0 == 0) goto L7c
        L71:
            r0 = r3
            android.widget.LinearLayout r0 = r0.buttonContainer
            r1 = 4
            r0.setVisibility(r1)
            goto L84
        L7c:
            r0 = r3
            android.widget.LinearLayout r0 = r0.buttonContainer
            r1 = 0
            r0.setVisibility(r1)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.video.VASTVideoView.updateButtonContainerVisibility():void");
    }

    private void updateButtonsVisibility(int i) {
        for (int i2 = 0; i2 < this.buttonContainer.getChildCount(); i2++) {
            View childAt = this.buttonContainer.getChildAt(i2);
            if (childAt instanceof FrameLayout) {
                View childAt2 = ((FrameLayout) childAt).getChildAt(0);
                if (childAt2.getVisibility() != 0 && (childAt2 instanceof ImageButton)) {
                    ((ImageButton) childAt2).updateVisibility(i);
                }
            }
        }
    }

    private void updateSkipButtonVisibility(int i, int i2) {
        Runnable runnable;
        int vASTVideoSkipOffsetMax = Handshake.getVASTVideoSkipOffsetMax();
        int vASTVideoSkipOffsetMin = Handshake.getVASTVideoSkipOffsetMin();
        int i3 = vASTVideoSkipOffsetMin;
        if (vASTVideoSkipOffsetMin > vASTVideoSkipOffsetMax) {
            i3 = vASTVideoSkipOffsetMax;
        }
        final int min = (Math.min(Math.max(Math.min(vASTVideoSkipOffsetMax, this.skipOffsetMilliseconds), i3), i2) - i) / 1000;
        if (min <= 0) {
            this.canSkip = true;
            runnable = new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.17
                @Override // java.lang.Runnable
                public void run() {
                    VASTVideoView.this.enableSkipControls();
                }
            };
        } else if (min == this.previousTimeLeftToSkip) {
            return;
        } else {
            this.previousTimeLeftToSkip = min;
            runnable = new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.16
                @Override // java.lang.Runnable
                @SuppressLint({"SetTextI18n"})
                public void run() {
                    VASTVideoView.this.countdown.setVisibility(0);
                    TextView textView = VASTVideoView.this.countdown;
                    textView.setText("" + min);
                }
            };
        }
        ThreadUtils.postOnUiThread(runnable);
    }

    public int vastTimeToMilliseconds(String str, int i) {
        return vastTimeToMilliseconds(str, this.mmVideoView.getDuration(), i);
    }

    public static int vastTimeToMilliseconds(String str, int i, int i2) {
        String str2;
        StringBuilder sb;
        int i3;
        int i4 = i2;
        if (!Utils.isEmpty(str)) {
            String trim = str.trim();
            try {
                if (trim.contains("%")) {
                    String replace = trim.replace("%", "");
                    if (!Utils.isEmpty(replace)) {
                        i4 = (int) ((Float.parseFloat(replace.trim()) / 100.0f) * i);
                    } else {
                        str2 = TAG;
                        sb = new StringBuilder();
                        sb.append("VAST time is missing percent value, parse value was: ");
                        sb.append(trim);
                    }
                } else {
                    String[] split = trim.split("\\.");
                    if (split.length <= 2) {
                        if (split.length == 2) {
                            trim = split[0];
                            i3 = Integer.parseInt(split[1]);
                        } else {
                            i3 = 0;
                        }
                        String[] split2 = trim.split(":");
                        String str3 = trim;
                        if (split2.length == 3) {
                            String str4 = trim;
                            i4 = (Integer.parseInt(split2[0]) * ADCHOICES_DEFAULT_DURATION) + (Integer.parseInt(split2[1]) * 60000) + (Integer.parseInt(split2[2]) * 1000) + i3;
                        } else {
                            str2 = TAG;
                            String str5 = trim;
                            String str6 = trim;
                            sb = new StringBuilder();
                            String str7 = trim;
                            sb.append("VAST time has invalid HHMMSS format, parse value was: ");
                            String str8 = trim;
                            sb.append(trim);
                            String str9 = trim;
                        }
                    } else {
                        str2 = TAG;
                        sb = new StringBuilder();
                        sb.append("VAST time has invalid format, parse value was: ");
                        sb.append(trim);
                    }
                }
                MMLog.m4068e(str2, sb.toString());
                i4 = i2;
            } catch (NumberFormatException e) {
                MMLog.m4068e(TAG, "VAST time has invalid number format, parse value was: " + trim);
                i4 = i2;
            }
        }
        return i4;
    }

    public int getCurrentPosition() {
        MMVideoView mMVideoView = this.mmVideoView;
        if (mMVideoView == null) {
            return -1;
        }
        return mMVideoView.getCurrentPosition();
    }

    public int getDuration() {
        MMVideoView mMVideoView = this.mmVideoView;
        if (mMVideoView == null) {
            return -1;
        }
        return mMVideoView.getDuration();
    }

    public VASTParser.Icon getIconWithProgram(String str) {
        if (this.iconMap == null) {
            this.iconMap = getIconsClosestToCreative();
        }
        return this.iconMap.get(str);
    }

    public Map<String, String> getMoatIdentifiers() {
        VASTParser.MoatExtension moatExtension;
        StringBuilder sb = new StringBuilder();
        String str = this.inLineAd.moatTrackingIds;
        if (str != null) {
            sb.append(str);
        }
        List<VASTParser.WrapperAd> list = this.wrapperAds;
        if (list != null) {
            Iterator<VASTParser.WrapperAd> it = list.iterator();
            VASTParser.MoatExtension moatExtension2 = null;
            while (true) {
                moatExtension = moatExtension2;
                if (!it.hasNext()) {
                    break;
                }
                VASTParser.WrapperAd next = it.next();
                VASTParser.MoatExtension moatExtension3 = next.moatExtension;
                VASTParser.MoatExtension moatExtension4 = moatExtension2;
                if (moatExtension3 != null) {
                    moatExtension4 = moatExtension3;
                }
                moatExtension2 = moatExtension4;
                if (next.moatTrackingIds != null) {
                    if (sb.length() > 0) {
                        sb.append(';');
                    }
                    sb.append(next.moatTrackingIds);
                    moatExtension2 = moatExtension4;
                }
            }
        } else {
            moatExtension = null;
        }
        VASTParser.MoatExtension moatExtension5 = this.inLineAd.moatExtension;
        if (moatExtension5 != null) {
            moatExtension = moatExtension5;
        }
        if (moatExtension == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Utils.putIfNotNull(hashMap, "level1", moatExtension.level1);
        Utils.putIfNotNull(hashMap, "level2", moatExtension.level2);
        Utils.putIfNotNull(hashMap, "level3", moatExtension.level3);
        Utils.putIfNotNull(hashMap, "level4", moatExtension.level4);
        Utils.putIfNotNull(hashMap, "slicer1", moatExtension.slicer1);
        Utils.putIfNotNull(hashMap, "slicer2", moatExtension.slicer2);
        Utils.putIfNotNull(hashMap, "zMoatVASTIDs", sb.toString());
        return hashMap;
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public boolean onBackPressed() {
        if (this.canSkip) {
            skip();
        }
        return this.canSkip;
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onBufferingUpdate(MMVideoView mMVideoView, int i) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onBufferingUpdate");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onComplete(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onComplete");
        }
        if (this.selectedCreative != null) {
            VASTParser.TrackableEvent trackableEvent = VASTParser.TrackableEvent.complete;
            fireVideoTrackingEvents(getWrapperLinearTrackingEvents(trackableEvent), getDuration());
            fireVideoTrackingEvents(this.selectedCreative.linearAd.trackingEvents.get(trackableEvent), getDuration());
        }
        setVideoState("complete");
        if (!this.incentVideoCompleteEarned) {
            this.incentVideoCompleteEarned = true;
            VASTVideoViewListener vASTVideoViewListener = this.vastVideoViewListener;
            if (vASTVideoViewListener != null) {
                vASTVideoViewListener.onIncentiveEarned(new XIncentivizedEventListener.XIncentiveEvent(XIncentivizedEventListener.XIncentiveEvent.INCENTIVE_VIDEO_COMPLETE, null));
            }
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.VASTVideoView.15
            @Override // java.lang.Runnable
            public void run() {
                VASTVideoView.this.doComplete();
                VASTVideoView.this.setKeepScreenOn(false);
            }
        });
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onError(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onError");
        }
        setKeepScreenOnUIThread(false);
        VASTVideoViewListener vASTVideoViewListener = this.vastVideoViewListener;
        if (vASTVideoViewListener != null) {
            vASTVideoViewListener.onFailed();
        }
        VASTVideoWebView vASTVideoWebView = this.overlayWebView;
        if (vASTVideoWebView != null) {
            vASTVideoWebView.callJavascript("MmJsBridge.vast.fireErrorEvent", "Video playback error occurred.");
        }
        VASTVideoWebView vASTVideoWebView2 = this.backgroundWebView;
        if (vASTVideoWebView2 != null) {
            vASTVideoWebView2.callJavascript("MmJsBridge.vast.fireErrorEvent", "Video playback error occurred.");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onMuted(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onMuted");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPause(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onPause");
        }
        setVideoState("paused");
        setKeepScreenOnUIThread(false);
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPrepared(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onPrepared");
        }
        this.skipOffsetMilliseconds = Math.max(0, vastTimeToMilliseconds(this.selectedCreative.linearAd.skipOffset, -1));
        if (!this.initialized) {
            this.initialized = true;
            VASTVideoViewListener vASTVideoViewListener = this.vastVideoViewListener;
            if (vASTVideoViewListener != null) {
                vASTVideoViewListener.onLoaded();
            }
        }
        VASTVideoWebView vASTVideoWebView = this.overlayWebView;
        if (vASTVideoWebView != null && vASTVideoWebView.isJSBridgeReady()) {
            this.overlayWebView.callJavascript("MmJsBridge.vast.setDuration", Integer.valueOf(this.mmVideoView.getDuration()));
        }
        VASTVideoWebView vASTVideoWebView2 = this.backgroundWebView;
        if (vASTVideoWebView2 == null || !vASTVideoWebView2.isJSBridgeReady()) {
            return;
        }
        this.backgroundWebView.callJavascript("MmJsBridge.vast.setDuration", Integer.valueOf(this.mmVideoView.getDuration()));
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onProgress(MMVideoView mMVideoView, int i) {
        synchronized (this) {
            VASTVideoWebView vASTVideoWebView = this.overlayWebView;
            if (vASTVideoWebView != null) {
                vASTVideoWebView.updateTime(i);
            }
            VASTVideoWebView vASTVideoWebView2 = this.backgroundWebView;
            if (vASTVideoWebView2 != null) {
                vASTVideoWebView2.updateTime(i);
            }
            if (this.buttonContainer != null) {
                updateButtonsVisibility(i);
            }
            if (!this.canSkip) {
                updateSkipButtonVisibility(i, mMVideoView.getDuration());
            }
            AdChoicesButton adChoicesButton = this.adChoicesButton;
            if (adChoicesButton != null) {
                adChoicesButton.updateVisibility(i, mMVideoView.getDuration());
            }
            if (this.selectedCreative != null && this.shouldHandleTrackingEvents) {
                processQuartileTrackingEvents(i, mMVideoView.getDuration());
                processProgressTrackingEvents(i);
            }
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onReadyToStart(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onReadyToStart");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onSeek(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onSeek");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStart(MMVideoView mMVideoView) {
        synchronized (this) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "onStart");
            }
            setKeepScreenOnUIThread(true);
            setVideoState("playing");
            if (this.selectedCreative != null) {
                VASTParser.TrackableEvent trackableEvent = VASTParser.TrackableEvent.start;
                fireVideoTrackingEvents(getWrapperLinearTrackingEvents(trackableEvent), 0);
                fireVideoTrackingEvents(this.selectedCreative.linearAd.trackingEvents.get(trackableEvent), 0);
            }
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStop(MMVideoView mMVideoView) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "onStop");
        }
        setKeepScreenOnUIThread(false);
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onUnmuted(MMVideoView mMVideoView) {
    }

    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    public void release() {
        MMVideoView mMVideoView = this.mmVideoView;
        if (mMVideoView != null) {
            mMVideoView.stop();
            this.mmVideoView.release();
            this.mmVideoView = null;
        }
        File file = this.videoFile;
        if (file != null) {
            if (!file.delete()) {
                String str = TAG;
                MMLog.m4062w(str, "Failed to delete video asset = " + this.videoFile.getAbsolutePath());
            }
            this.videoFile = null;
        }
        VASTVideoWebView vASTVideoWebView = this.overlayWebView;
        if (vASTVideoWebView != null) {
            vASTVideoWebView.release();
            this.overlayWebView = null;
        }
        VASTVideoWebView vASTVideoWebView2 = this.companionAdWebView;
        if (vASTVideoWebView2 != null) {
            vASTVideoWebView2.release();
            this.companionAdWebView = null;
        }
        VASTVideoWebView vASTVideoWebView3 = this.backgroundWebView;
        if (vASTVideoWebView3 != null) {
            vASTVideoWebView3.release();
            this.backgroundWebView = null;
        }
    }

    public void updateComponentVisibility() {
        if (this.currentState == 1) {
            this.backgroundFrame.setVisibility(isPortrait() ? 0 : 8);
            this.endCardContainer.setVisibility(8);
            if (this.overlayWebView != null) {
                if (isPortrait()) {
                    ViewUtils.removeFromParent(this.overlayWebView);
                } else if (this.overlayWebView.getParent() == null) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    MMVideoView mMVideoView = this.mmVideoView;
                    if (mMVideoView != null) {
                        mMVideoView.addView(this.overlayWebView, layoutParams);
                    }
                }
            }
            MMVideoView mMVideoView2 = this.mmVideoView;
            if (mMVideoView2 != null) {
                mMVideoView2.setVisibility(0);
            }
        } else if (this.currentState == 2) {
            MMVideoView mMVideoView3 = this.mmVideoView;
            if (mMVideoView3 != null) {
                mMVideoView3.setVisibility(8);
            }
            this.backgroundFrame.setVisibility(8);
            this.endCardContainer.setVisibility(0);
            VASTVideoWebView vASTVideoWebView = this.overlayWebView;
            if (vASTVideoWebView != null) {
                ViewUtils.removeFromParent(vASTVideoWebView);
            }
        }
        updateButtonContainerVisibility();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VideoViewActions
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateLayout() {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.video.VASTVideoView.updateLayout():void");
    }
}
