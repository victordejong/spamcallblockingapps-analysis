package com.pubmatic.sdk.video.player;

import android.content.Context;
import android.content.res.Configuration;
import android.media.MediaPlayer;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView.class */
public class POBVideoPlayerView extends FrameLayout implements POBVideoPlayer, SurfaceHolder.Callback, MediaPlayer.OnPreparedListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnErrorListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnInfoListener {

    /* renamed from: m */
    static final SupportedMediaType[] f935m = SupportedMediaType.values();

    /* renamed from: b */
    private MediaPlayer f937b;

    /* renamed from: c */
    private POBVideoPlayerListener f938c;

    /* renamed from: d */
    private Timer f939d;

    /* renamed from: e */
    private POBPlayerController f940e;

    /* renamed from: f */
    private boolean f941f;

    /* renamed from: g */
    private boolean f942g;

    /* renamed from: i */
    private boolean f944i;

    /* renamed from: k */
    private Timer f946k;

    /* renamed from: l */
    private Timer f947l;

    /* renamed from: j */
    private int f945j = 10000;

    /* renamed from: a */
    private SurfaceView f936a = new SurfaceView(getContext());

    /* renamed from: h */
    private EnumC1992f f943h = EnumC1992f.UNKNOWN;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$POBVideoPlayerListener.class */
    public interface POBVideoPlayerListener {
        void onBufferUpdate(int i);

        void onCompletion();

        void onFailure(int i, String str);

        void onMute(boolean z);

        void onPause();

        void onProgressUpdate(int i);

        void onReadyToPlay(POBVideoPlayerView pOBVideoPlayerView);

        void onResume();

        void onStart();
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$SupportedMediaType.class */
    public enum SupportedMediaType {
        MEDIA_3GPP("video/3gpp"),
        MEDIA_MP4("video/mp4"),
        MEDIA_WEBM("video/webm");
        

        /* renamed from: a */
        private final String f949a;

        SupportedMediaType(String str) {
            this.f949a = str;
        }

        public static String[] getStringValues() {
            SupportedMediaType[] values = values();
            String[] strArr = new String[values.length];
            for (int i = 0; i < values.length; i++) {
                strArr[i] = values[i].getValue();
            }
            return strArr;
        }

        public String getValue() {
            return this.f949a;
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerView$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$a.class */
    public class C1985a extends TimerTask {

        /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerView$a$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$a$a.class */
        class RunnableC1986a implements Runnable {
            RunnableC1986a() {
                C1985a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                POBVideoPlayerView.this.m640a(-1);
                if (POBVideoPlayerView.this.f937b != null) {
                    POBVideoPlayerView.this.f937b.reset();
                }
            }
        }

        C1985a() {
            POBVideoPlayerView.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            POBUtils.runOnMainThread(new RunnableC1986a());
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerView$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$b.class */
    public class C1987b extends TimerTask {

        /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerView$b$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$b$a.class */
        class RunnableC1988a implements Runnable {
            RunnableC1988a() {
                C1987b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                POBVideoPlayerView.this.m640a(-110);
                if (POBVideoPlayerView.this.f937b != null) {
                    POBVideoPlayerView.this.f937b.stop();
                }
            }
        }

        C1987b() {
            POBVideoPlayerView.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            POBUtils.runOnMainThread(new RunnableC1988a());
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerView$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$c.class */
    public class C1989c extends TimerTask {
        C1989c() {
            POBVideoPlayerView.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            POBVideoPlayerView.this.m631d();
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerView$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$d.class */
    public class RunnableC1990d implements Runnable {
        RunnableC1990d() {
            POBVideoPlayerView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (POBVideoPlayerView.this.f937b != null) {
                if (POBVideoPlayerView.this.f940e != null) {
                    POBVideoPlayerView.this.f940e.onProgressUpdate(POBVideoPlayerView.this.f937b.getCurrentPosition());
                }
                if (POBVideoPlayerView.this.f938c == null) {
                    return;
                }
                POBVideoPlayerView.this.f938c.onProgressUpdate(POBVideoPlayerView.this.f937b.getCurrentPosition());
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerView$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$e.class */
    class RunnableC1991e implements Runnable {
        RunnableC1991e() {
            POBVideoPlayerView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (POBVideoPlayerView.this.f937b != null) {
                POBVideoPlayerView pOBVideoPlayerView = POBVideoPlayerView.this;
                pOBVideoPlayerView.setVideoSize(pOBVideoPlayerView.f937b);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerView$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerView$f.class */
    public enum EnumC1992f {
        UNKNOWN,
        LOADED,
        PLAYING,
        PAUSED,
        STOPPED,
        COMPLETE,
        ERROR
    }

    public POBVideoPlayerView(Context context) {
        super(context);
        m635b();
    }

    /* renamed from: a */
    private void m641a() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f937b = mediaPlayer;
        mediaPlayer.setOnPreparedListener(this);
        this.f937b.setOnCompletionListener(this);
        this.f937b.setOnBufferingUpdateListener(this);
        this.f937b.setAudioStreamType(3);
        this.f937b.setOnErrorListener(this);
        this.f937b.setOnInfoListener(this);
        this.f944i = false;
    }

    /* renamed from: a */
    private void m636a(String str) {
        String str2;
        int i;
        POBVideoPlayerListener pOBVideoPlayerListener;
        m641a();
        try {
            this.f937b.setDataSource(str);
            m628f();
            this.f937b.prepareAsync();
        } catch (IOException e) {
            i = -1004;
            str2 = e.getMessage();
            if (str2 == null) {
                return;
            }
            m625i();
            setPlayerState(EnumC1992f.ERROR);
            PMLog.debug("POBVideoPlayerView", str2, new Object[0]);
            pOBVideoPlayerListener = this.f938c;
            if (pOBVideoPlayerListener == null) {
                return;
            }
            pOBVideoPlayerListener.onFailure(i, str2);
        } catch (Exception e2) {
            i = 1;
            str2 = e2.getMessage();
            if (str2 == null) {
                return;
            }
            m625i();
            setPlayerState(EnumC1992f.ERROR);
            PMLog.debug("POBVideoPlayerView", str2, new Object[0]);
            pOBVideoPlayerListener = this.f938c;
            if (pOBVideoPlayerListener == null) {
                return;
            }
            pOBVideoPlayerListener.onFailure(i, str2);
        }
    }

    /* renamed from: a */
    public boolean m640a(int i) {
        if (this.f943h != EnumC1992f.ERROR) {
            m625i();
            setPlayerState(EnumC1992f.ERROR);
            String str = i != -1010 ? i != -1007 ? i != -1004 ? i != -110 ? i != -1 ? "MEDIA_ERROR_UNKNOWN" : "MEDIA_FILE_TIMEOUT_ERROR" : "MEDIA_ERROR_TIMED_OUT" : "MEDIA_ERROR_IO" : "MEDIA_ERROR_MALFORMED" : "MEDIA_ERROR_UNSUPPORTED";
            PMLog.error("POBVideoPlayerView", "errorCode: " + i + ", errorMsg:" + str, new Object[0]);
            POBVideoPlayerListener pOBVideoPlayerListener = this.f938c;
            if (pOBVideoPlayerListener == null) {
                return true;
            }
            int i2 = i;
            if (i != -1) {
                i2 = -2;
            }
            pOBVideoPlayerListener.onFailure(i2, str);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    private void m635b() {
        this.f936a.getHolder().addCallback(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.f936a, layoutParams);
        setBackgroundColor(getResources().getColor(17170444));
    }

    /* renamed from: c */
    private void m633c() {
        POBPlayerController pOBPlayerController = this.f940e;
        if (pOBPlayerController != null) {
            pOBPlayerController.onStart();
        }
        POBVideoPlayerListener pOBVideoPlayerListener = this.f938c;
        if (pOBVideoPlayerListener != null) {
            pOBVideoPlayerListener.onStart();
        }
    }

    /* renamed from: d */
    public void m631d() {
        POBUtils.runOnMainThread(new RunnableC1990d());
    }

    /* renamed from: e */
    private void m629e() {
        if (this.f947l == null) {
            Timer timer = new Timer();
            this.f947l = timer;
            timer.schedule(new C1987b(), 15000L);
        }
    }

    /* renamed from: f */
    private void m628f() {
        Timer timer = new Timer();
        this.f946k = timer;
        timer.schedule(new C1985a(), this.f945j);
    }

    /* renamed from: g */
    private void m627g() {
        Timer timer = new Timer();
        this.f939d = timer;
        timer.scheduleAtFixedRate(new C1989c(), 0L, 500L);
    }

    /* renamed from: h */
    private void m626h() {
        Timer timer = this.f947l;
        if (timer != null) {
            timer.cancel();
            this.f947l = null;
        }
    }

    /* renamed from: i */
    private void m625i() {
        Timer timer = this.f946k;
        if (timer != null) {
            timer.cancel();
            this.f946k = null;
        }
    }

    /* renamed from: j */
    private void m624j() {
        Timer timer = this.f939d;
        if (timer != null) {
            timer.cancel();
            this.f939d = null;
        }
    }

    private void setPlayerState(EnumC1992f enumC1992f) {
        this.f943h = enumC1992f;
    }

    public void setVideoSize(MediaPlayer mediaPlayer) {
        float videoWidth = mediaPlayer.getVideoWidth() / mediaPlayer.getVideoHeight();
        int width = getWidth();
        int height = getHeight();
        float f = width;
        float f2 = height;
        float f3 = f / f2;
        ViewGroup.LayoutParams layoutParams = this.f936a.getLayoutParams();
        if (videoWidth > f3) {
            layoutParams.width = width;
            layoutParams.height = (int) (f / videoWidth);
        } else {
            layoutParams.width = (int) (videoWidth * f2);
            layoutParams.height = height;
        }
        this.f936a.setLayoutParams(layoutParams);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void destroy() {
        stop();
        m625i();
        m626h();
        removeAllViews();
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f937b.release();
        }
        this.f937b = null;
        this.f938c = null;
        this.f940e = null;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public POBPlayerController getControllerView() {
        return this.f940e;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public int getMediaDuration() {
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer != null) {
            return mediaPlayer.getDuration();
        }
        return 0;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public EnumC1992f getPlayerState() {
        return this.f943h;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public boolean isMute() {
        return this.f942g;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void load(String str) {
        m636a(str);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void mute() {
        POBVideoPlayerListener pOBVideoPlayerListener = this.f938c;
        if (pOBVideoPlayerListener != null) {
            pOBVideoPlayerListener.onMute(true);
        }
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer == null) {
            PMLog.warn("POBVideoPlayerView", "Media player is null", new Object[0]);
            return;
        }
        this.f942g = true;
        mediaPlayer.setVolume(0.0f, 0.0f);
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        m625i();
        POBVideoPlayerListener pOBVideoPlayerListener = this.f938c;
        if (pOBVideoPlayerListener != null) {
            pOBVideoPlayerListener.onBufferUpdate(i);
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        setPlayerState(EnumC1992f.COMPLETE);
        POBVideoPlayerListener pOBVideoPlayerListener = this.f938c;
        if (pOBVideoPlayerListener != null) {
            pOBVideoPlayerListener.onProgressUpdate(getMediaDuration());
            this.f938c.onCompletion();
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        PMLog.info("POBVideoPlayerView", "onConfigurationChanged", new Object[0]);
        postDelayed(new RunnableC1991e(), 5L);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return m640a(i2);
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        PMLog.info("POBVideoPlayerView", "onInfo what: " + i + ", extra:" + i2, new Object[0]);
        if (i == 3 && !this.f944i) {
            m633c();
            this.f944i = true;
            return true;
        } else if (i == 701) {
            m629e();
            return false;
        } else if (i == 702) {
            m626h();
            return false;
        } else if (i2 != -1004) {
            return false;
        } else {
            return m640a(i2);
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        m625i();
        if (this.f938c != null) {
            if (this.f942g) {
                mediaPlayer.setVolume(0.0f, 0.0f);
            }
            setPlayerState(EnumC1992f.LOADED);
            this.f938c.onReadyToPlay(this);
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void pause() {
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer == null || !mediaPlayer.isPlaying() || this.f943h == EnumC1992f.ERROR) {
            PMLog.warn("POBVideoPlayerView", "mediaPlayer :" + this.f937b, new Object[0]);
            return;
        }
        this.f937b.pause();
        setPlayerState(EnumC1992f.PAUSED);
        POBVideoPlayerListener pOBVideoPlayerListener = this.f938c;
        if (pOBVideoPlayerListener != null) {
            pOBVideoPlayerListener.onPause();
        }
        POBPlayerController pOBPlayerController = this.f940e;
        if (pOBPlayerController == null) {
            return;
        }
        pOBPlayerController.onPause();
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void play() {
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer == null || this.f943h == EnumC1992f.ERROR) {
            PMLog.warn("POBVideoPlayerView", "mediaPlayer :" + ((Object) null), new Object[0]);
            return;
        }
        mediaPlayer.start();
        POBVideoPlayerListener pOBVideoPlayerListener = this.f938c;
        if (pOBVideoPlayerListener != null && this.f943h == EnumC1992f.PAUSED) {
            pOBVideoPlayerListener.onResume();
        }
        setPlayerState(EnumC1992f.PLAYING);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void playOnMute(boolean z) {
        this.f942g = z;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void setAutoPlayOnForeground(boolean z) {
        this.f941f = z;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void setControllerView(POBPlayerController pOBPlayerController, FrameLayout.LayoutParams layoutParams) {
        this.f940e = pOBPlayerController;
        pOBPlayerController.setVideoPlayerEvents(this);
        addView(pOBPlayerController, layoutParams);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void setListener(POBVideoPlayerListener pOBVideoPlayerListener) {
        this.f938c = pOBVideoPlayerListener;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void setPrepareTimeout(int i) {
        this.f945j = i;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void stop() {
        m624j();
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            setPlayerState(EnumC1992f.STOPPED);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer == null || this.f943h == EnumC1992f.ERROR) {
            return;
        }
        setVideoSize(mediaPlayer);
        this.f937b.setSurface(surfaceHolder.getSurface());
        m627g();
        if (!this.f941f || this.f943h == EnumC1992f.COMPLETE) {
            return;
        }
        play();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        m624j();
        if (this.f943h != EnumC1992f.ERROR) {
            pause();
        }
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(null);
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayer
    public void unMute() {
        POBVideoPlayerListener pOBVideoPlayerListener = this.f938c;
        if (pOBVideoPlayerListener != null) {
            pOBVideoPlayerListener.onMute(false);
        }
        MediaPlayer mediaPlayer = this.f937b;
        if (mediaPlayer == null) {
            PMLog.warn("POBVideoPlayerView", "Media player is null", new Object[0]);
            return;
        }
        this.f942g = false;
        mediaPlayer.setVolume(1.0f, 1.0f);
    }
}
