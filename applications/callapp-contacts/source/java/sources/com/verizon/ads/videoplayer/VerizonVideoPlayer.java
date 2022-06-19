package com.verizon.ads.videoplayer;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.Logger;
import com.verizon.ads.VideoPlayer;
import com.verizon.ads.videoplayer.VerizonVideoPlayer;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer.class */
public class VerizonVideoPlayer implements VideoPlayer {

    /* renamed from: a */
    private static final Logger f62042a = Logger.getInstance(VerizonVideoPlayer.class);

    /* renamed from: d */
    private final WeakReference<Context> f62045d;

    /* renamed from: e */
    private Uri f62046e;

    /* renamed from: f */
    private int f62047f;

    /* renamed from: g */
    private int f62048g;

    /* renamed from: h */
    private MediaPlayer f62049h;

    /* renamed from: i */
    private WeakReference<SurfaceView> f62050i;

    /* renamed from: j */
    private SurfaceHolder f62051j;

    /* renamed from: l */
    private ProgressHandler f62053l;

    /* renamed from: m */
    private HandlerThread f62054m;

    /* renamed from: p */
    private volatile int f62057p;

    /* renamed from: k */
    private float f62052k = 1.0f;

    /* renamed from: n */
    private int f62055n = 1000;

    /* renamed from: o */
    private int f62056o = 0;

    /* renamed from: q */
    private volatile int f62058q = 0;

    /* renamed from: b */
    private final ExecutorService f62043b = Executors.newSingleThreadExecutor();

    /* renamed from: c */
    private final Set<VideoPlayer.VideoPlayerListener> f62044c = new HashSet();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            return new VerizonVideoPlayer(context);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener.class */
    public static class MediaPlayerListener implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

        /* renamed from: a */
        private final WeakReference<VerizonVideoPlayer> f62060a;

        MediaPlayerListener(VerizonVideoPlayer verizonVideoPlayer) {
            this.f62060a = new WeakReference<>(verizonVideoPlayer);
        }

        /* renamed from: a */
        public static /* synthetic */ void m5022a(VerizonVideoPlayer verizonVideoPlayer) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f62044c) {
                videoPlayerListener.onSeekCompleted(verizonVideoPlayer);
            }
        }

        /* renamed from: a */
        public static /* synthetic */ void m5021a(VerizonVideoPlayer verizonVideoPlayer, int i) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f62044c) {
                videoPlayerListener.onProgress(verizonVideoPlayer, i);
                videoPlayerListener.onComplete(verizonVideoPlayer);
            }
        }

        /* renamed from: a */
        public static /* synthetic */ void m5020a(VerizonVideoPlayer verizonVideoPlayer, int i, int i2) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f62044c) {
                videoPlayerListener.onVideoSizeChanged(i, i2);
            }
        }

        /* renamed from: b */
        public static /* synthetic */ void m5019b(VerizonVideoPlayer verizonVideoPlayer) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f62044c) {
                videoPlayerListener.onLoaded(verizonVideoPlayer);
            }
        }

        /* renamed from: c */
        public static /* synthetic */ void m5018c(VerizonVideoPlayer verizonVideoPlayer) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f62044c) {
                videoPlayerListener.onLoaded(verizonVideoPlayer);
                videoPlayerListener.onReady(verizonVideoPlayer);
            }
        }

        /* renamed from: d */
        public static /* synthetic */ void m5017d(VerizonVideoPlayer verizonVideoPlayer) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f62044c) {
                videoPlayerListener.onError(verizonVideoPlayer);
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            final VerizonVideoPlayer verizonVideoPlayer = this.f62060a.get();
            if (verizonVideoPlayer != null) {
                verizonVideoPlayer.f62058q = 6;
                verizonVideoPlayer.f62057p = 6;
                verizonVideoPlayer.f62053l.sendEmptyMessage(2);
                final int duration = verizonVideoPlayer.getDuration();
                verizonVideoPlayer.m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC_wcCaaUPpRBzSIV_8D7is
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.MediaPlayerListener.m5021a(VerizonVideoPlayer.this, duration);
                    }
                });
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            final VerizonVideoPlayer verizonVideoPlayer = this.f62060a.get();
            if (verizonVideoPlayer != null) {
                if ((i != 1 || i2 != -19) && i != -38) {
                    verizonVideoPlayer.f62058q = 7;
                    verizonVideoPlayer.m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$FW3CWWex3MEG60hbOnJmF_G3PWc
                        @Override // java.lang.Runnable
                        public final void run() {
                            VerizonVideoPlayer.MediaPlayerListener.m5017d(VerizonVideoPlayer.this);
                        }
                    });
                    return true;
                } else if (!Logger.isLogLevelEnabled(3)) {
                    return true;
                } else {
                    VerizonVideoPlayer.f62042a.m5567d(String.format("Ignoring acceptable media error: (%d, %d)", Integer.valueOf(i), Integer.valueOf(i2)));
                    return true;
                }
            }
            return true;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.seekTo(1);
            final VerizonVideoPlayer verizonVideoPlayer = this.f62060a.get();
            if (verizonVideoPlayer != null) {
                if (verizonVideoPlayer.f62051j == null || !verizonVideoPlayer.f62051j.getSurface().isValid()) {
                    verizonVideoPlayer.f62058q = 2;
                    verizonVideoPlayer.m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$5svjq7vkOWmvpCmS7Okq5N39vco
                        @Override // java.lang.Runnable
                        public final void run() {
                            VerizonVideoPlayer.MediaPlayerListener.m5019b(VerizonVideoPlayer.this);
                        }
                    });
                    return;
                }
                verizonVideoPlayer.setAudioFocus();
                verizonVideoPlayer.f62058q = 3;
                verizonVideoPlayer.m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$BK25P9UnYi2gKGS1LuWz5QMbmVs
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.MediaPlayerListener.m5018c(VerizonVideoPlayer.this);
                    }
                });
                if (verizonVideoPlayer.f62057p != 4) {
                    return;
                }
                verizonVideoPlayer.play();
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            final VerizonVideoPlayer verizonVideoPlayer = this.f62060a.get();
            if (verizonVideoPlayer != null) {
                verizonVideoPlayer.m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$3SFT8JjvZMBn8qlQBm0pwcMdofk
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.MediaPlayerListener.m5022a(VerizonVideoPlayer.this);
                    }
                });
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, final int i, final int i2) {
            final VerizonVideoPlayer verizonVideoPlayer = this.f62060a.get();
            if (verizonVideoPlayer == null || i2 == 0 || i == 0) {
                return;
            }
            verizonVideoPlayer.f62047f = i;
            verizonVideoPlayer.f62048g = i2;
            SurfaceView surfaceView = (SurfaceView) verizonVideoPlayer.f62050i.get();
            if (surfaceView != null) {
                surfaceView.requestLayout();
            }
            verizonVideoPlayer.m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$FpVLBjIKBYTrgI9aITJvwiuyapo
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.MediaPlayerListener.m5020a(VerizonVideoPlayer.this, i, i2);
                }
            });
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler.class */
    public static class ProgressHandler extends Handler {

        /* renamed from: a */
        private final WeakReference<VerizonVideoPlayer> f62061a;

        /* renamed from: b */
        private boolean f62062b = false;

        /* renamed from: c */
        private int f62063c;

        ProgressHandler(VerizonVideoPlayer verizonVideoPlayer, Looper looper, int i) {
            super(looper);
            this.f62061a = new WeakReference<>(verizonVideoPlayer);
            this.f62063c = i;
        }

        /* renamed from: a */
        private void m5016a() {
            if (!this.f62062b) {
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                VerizonVideoPlayer.f62042a.m5567d("Stopping progress handler.");
            }
            this.f62062b = false;
            removeMessages(3);
        }

        /* renamed from: a */
        public static /* synthetic */ void m5015a(VerizonVideoPlayer verizonVideoPlayer, int i) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f62044c) {
                videoPlayerListener.onProgress(verizonVideoPlayer, i);
            }
        }

        /* renamed from: a */
        private void m5014a(boolean z) {
            if (this.f62063c != -1 && !this.f62062b) {
                if (Logger.isLogLevelEnabled(3)) {
                    VerizonVideoPlayer.f62042a.m5567d(String.format("Starting progress handler with interval %d ms.", Integer.valueOf(this.f62063c)));
                }
                this.f62062b = true;
                if (z) {
                    sendEmptyMessageDelayed(3, this.f62063c);
                } else {
                    sendEmptyMessage(3);
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                m5014a(false);
            } else if (i == 2) {
                m5016a();
            } else if (i == 3) {
                final VerizonVideoPlayer verizonVideoPlayer = this.f62061a.get();
                if (verizonVideoPlayer == null) {
                    return;
                }
                final int currentPosition = verizonVideoPlayer.f62049h.getCurrentPosition();
                verizonVideoPlayer.m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$ProgressHandler$9KoNkfEXfr_QEMKg1oRKnQ8GF4s
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.ProgressHandler.m5015a(VerizonVideoPlayer.this, currentPosition);
                    }
                });
                sendEmptyMessageDelayed(3, this.f62063c);
            } else if (i != 4) {
                VerizonVideoPlayer.f62042a.m5565e(String.format("Invalid what %d sent to ProgressHandler.", Integer.valueOf(message.what)));
            } else {
                this.f62063c = message.arg1;
                if (!this.f62062b) {
                    return;
                }
                m5016a();
                if (this.f62063c == -1) {
                    return;
                }
                m5014a(true);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo.class */
    public static class VideoViewInfo extends View.BaseSavedState {
        public static final Parcelable.Creator<VideoViewInfo> CREATOR = new Parcelable.Creator<VideoViewInfo>() { // from class: com.verizon.ads.videoplayer.VerizonVideoPlayer.VideoViewInfo.1
            @Override // android.os.Parcelable.Creator
            public final VideoViewInfo createFromParcel(Parcel parcel) {
                return new VideoViewInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final VideoViewInfo[] newArray(int i) {
                return new VideoViewInfo[i];
            }
        };
        int currentPosition;
        int currentState;
        int targetState;
        String uri;
        float volume;

        private VideoViewInfo(Parcel parcel) {
            super(parcel);
            this.currentState = parcel.readInt();
            this.targetState = parcel.readInt();
            this.currentPosition = parcel.readInt();
            this.volume = parcel.readFloat();
            this.uri = parcel.readString();
        }

        VideoViewInfo(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentState);
            parcel.writeInt(this.targetState);
            parcel.writeInt(this.currentPosition);
            parcel.writeFloat(this.volume);
            parcel.writeString(this.uri);
        }
    }

    public VerizonVideoPlayer(Context context) {
        this.f62045d = new WeakReference<>(context);
    }

    /* renamed from: a */
    public /* synthetic */ void m5048a(float f) {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f62044c) {
            videoPlayerListener.onVolumeChanged(this, f);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5046a(View view) {
        m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$UC7hbX38KhZQ1lLXjpwzt7FxPrw
            @Override // java.lang.Runnable
            public final void run() {
                VerizonVideoPlayer.this.m5023i();
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m5045a(VideoPlayer.VideoPlayerListener videoPlayerListener) {
        this.f62044c.remove(videoPlayerListener);
    }

    /* renamed from: a */
    public /* synthetic */ void m5044a(MediaPlayerListener mediaPlayerListener, MediaPlayer mediaPlayer) {
        this.f62049h.setOnSeekCompleteListener(mediaPlayerListener);
    }

    /* renamed from: b */
    public /* synthetic */ void m5039b(VideoPlayer.VideoPlayerListener videoPlayerListener) {
        this.f62044c.add(videoPlayerListener);
    }

    /* renamed from: b */
    private boolean m5040b() {
        return (this.f62058q == 0 || this.f62058q == 1 || this.f62058q == 2 || this.f62058q == 7) ? false : true;
    }

    /* renamed from: c */
    public /* synthetic */ void m5036c() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f62044c) {
            videoPlayerListener.onReady(this);
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m5033d() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f62044c) {
            videoPlayerListener.onError(this);
        }
    }

    /* renamed from: e */
    public /* synthetic */ void m5031e() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f62044c) {
            videoPlayerListener.onPaused(this);
        }
    }

    /* renamed from: f */
    public /* synthetic */ void m5029f() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f62044c) {
            videoPlayerListener.onPlay(this);
        }
    }

    /* renamed from: g */
    public /* synthetic */ void m5027g() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f62044c) {
            videoPlayerListener.onError(this);
        }
    }

    /* renamed from: h */
    public /* synthetic */ void m5025h() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f62044c) {
            videoPlayerListener.onUnloaded(this);
        }
    }

    /* renamed from: i */
    public /* synthetic */ void m5023i() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f62044c) {
            videoPlayerListener.onClick(this);
        }
    }

    /* renamed from: a */
    final void m5047a(SurfaceHolder surfaceHolder) {
        this.f62051j = surfaceHolder;
        if (!surfaceHolder.getSurface().isValid()) {
            this.f62058q = 7;
            this.f62057p = 7;
            m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$eKDzh9YvHmsQc9YJT7WKKIPmLD8
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.m5033d();
                }
            });
            return;
        }
        MediaPlayer mediaPlayer = this.f62049h;
        if (mediaPlayer != null) {
            mediaPlayer.setDisplay(this.f62051j);
        }
        if (this.f62058q != 2) {
            return;
        }
        setAudioFocus();
        this.f62058q = 3;
        SurfaceView surfaceView = this.f62050i.get();
        if (surfaceView != null && this.f62047f != 0 && this.f62048g != 0) {
            surfaceView.requestLayout();
        }
        m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$HCb1BhNRi5EoRDA2lBQ5_rMbkXI
            @Override // java.lang.Runnable
            public final void run() {
                VerizonVideoPlayer.this.m5036c();
            }
        });
        if (this.f62057p != 4) {
            return;
        }
        play();
    }

    /* renamed from: a */
    final void m5041a(Runnable runnable) {
        ExecutorService executorService = this.f62043b;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.f62043b.submit(runnable);
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getCurrentPosition() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("getCurrentPosition must be called from UI thread.");
            return -1;
        } else if (!m5040b()) {
            return -1;
        } else {
            return this.f62049h.getCurrentPosition();
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getDuration() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("getDuration must be called from UI thread.");
            return -1;
        } else if (!m5040b() && this.f62058q != 2) {
            return -1;
        } else {
            return this.f62049h.getDuration();
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getState() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("unregisterListener must be called from UI thread.");
            return -1;
        }
        return this.f62058q;
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getVideoHeight() {
        return this.f62048g;
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getVideoWidth() {
        return this.f62047f;
    }

    @Override // com.verizon.ads.VideoPlayer
    public float getVolume() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("getVolume must be called from UI thread.");
            return -1.0f;
        }
        return this.f62052k;
    }

    @Override // com.verizon.ads.VideoPlayer
    public void load(Uri uri) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("load must be called from UI thread.");
            return;
        }
        this.f62046e = uri;
        if (uri == null) {
            return;
        }
        unload();
        HandlerThread handlerThread = new HandlerThread("vp-progress-handler");
        this.f62054m = handlerThread;
        handlerThread.start();
        this.f62053l = new ProgressHandler(this, this.f62054m.getLooper(), this.f62055n);
        this.f62049h = new MediaPlayer();
        SurfaceHolder surfaceHolder = this.f62051j;
        if (surfaceHolder != null && surfaceHolder.getSurface().isValid()) {
            this.f62049h.setDisplay(this.f62051j);
        }
        final MediaPlayerListener mediaPlayerListener = new MediaPlayerListener(this);
        this.f62049h.setOnPreparedListener(mediaPlayerListener);
        this.f62049h.setOnCompletionListener(mediaPlayerListener);
        this.f62049h.setOnErrorListener(mediaPlayerListener);
        this.f62049h.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi_fnw9Y39c
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public final void onSeekComplete(MediaPlayer mediaPlayer) {
                VerizonVideoPlayer.this.m5044a(mediaPlayerListener, mediaPlayer);
            }
        });
        this.f62049h.setOnVideoSizeChangedListener(mediaPlayerListener);
        try {
            Context context = this.f62045d.get();
            if (context == null) {
                f62042a.m5567d("load cannot complete; context has been released.");
                return;
            }
            this.f62049h.setDataSource(context, uri, (Map<String, String>) null);
            this.f62058q = 1;
            this.f62049h.prepareAsync();
        } catch (IOException e) {
            f62042a.m5564e("An error occurred preparing the VideoPlayer.", e);
            this.f62058q = 7;
            this.f62057p = 7;
            m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$XQ1XE_8dfYePEQ0c0yEFdYWuBP4
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.m5027g();
                }
            });
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void load(String str) {
        load(Uri.parse(str));
    }

    @Override // com.verizon.ads.VideoPlayer
    public void pause() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("pause must be called from UI thread.");
        } else if (!m5040b() || !this.f62049h.isPlaying()) {
        } else {
            this.f62049h.pause();
            m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$vue3QTucGR0WUSl8XaVNV5VKS2g
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.m5031e();
                }
            });
            this.f62058q = 5;
            this.f62057p = 5;
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void play() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("play must be called from UI thread.");
        } else if (!m5040b() || this.f62058q == 4) {
            this.f62057p = 4;
        } else {
            setVolume(this.f62052k);
            int i = this.f62056o;
            if (i != 0) {
                this.f62049h.seekTo(i);
                this.f62056o = 0;
            }
            this.f62049h.start();
            this.f62058q = 4;
            this.f62057p = 4;
            m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$Sdg1MMXRK8NdOV_xRLE6aNvw20k
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.m5029f();
                }
            });
            this.f62053l.sendEmptyMessage(1);
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void registerListener(final VideoPlayer.VideoPlayerListener videoPlayerListener) {
        if (videoPlayerListener == null) {
            f62042a.m5559w("Cannot register a null instance.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("registerListener must be called from UI thread.");
        } else {
            m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$Z9aKnZKsSDqlARPGZvgr71hlP2k
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.m5039b(videoPlayerListener);
                }
            });
        }
    }

    @Override // com.verizon.ads.Component
    public void release() {
        unload();
    }

    @Override // com.verizon.ads.VideoPlayer
    public void releaseAudioFocus() {
        Context context = this.f62045d.get();
        if (context == null) {
            f62042a.m5567d("releaseAudioFocus is not available. context was released.");
            return;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return;
        }
        audioManager.abandonAudioFocus(null);
    }

    @Override // com.verizon.ads.VideoPlayer
    public void replay() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("replay must be called from UI thread.");
            return;
        }
        if (Build.VERSION.SDK_INT <= 21) {
            Uri uri = this.f62046e;
            if (uri == null) {
                return;
            }
            load(uri);
        } else {
            seekTo(0);
        }
        play();
    }

    @Override // com.verizon.ads.VideoPlayer
    public void restoreInstanceState(AbsSavedState absSavedState) {
        if (absSavedState instanceof VideoViewInfo) {
            VideoViewInfo videoViewInfo = (VideoViewInfo) absSavedState;
            this.f62057p = videoViewInfo.targetState;
            this.f62056o = videoViewInfo.currentPosition;
            setVolume(videoViewInfo.volume);
            if (videoViewInfo.uri != null) {
                load(videoViewInfo.uri);
            }
            if (videoViewInfo.currentState != 4 && videoViewInfo.targetState != 4) {
                return;
            }
            play();
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public AbsSavedState saveInstanceState(Parcelable parcelable) {
        VideoViewInfo videoViewInfo = new VideoViewInfo(parcelable);
        videoViewInfo.currentState = this.f62058q;
        videoViewInfo.targetState = this.f62057p;
        videoViewInfo.currentPosition = getCurrentPosition();
        videoViewInfo.volume = getVolume();
        Uri uri = this.f62046e;
        videoViewInfo.uri = uri != null ? uri.toString() : null;
        return videoViewInfo;
    }

    @Override // com.verizon.ads.VideoPlayer
    public void seekTo(int i) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("seekTo must be called from UI thread.");
        } else if (!m5040b()) {
            this.f62056o = i;
        } else {
            this.f62049h.seekTo(i);
            this.f62056o = 0;
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void setAudioFocus() {
        Context context = this.f62045d.get();
        if (context == null) {
            f62042a.m5567d("setAudioFocus is not available. context was released.");
            return;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return;
        }
        if (this.f62052k > BitmapDescriptorFactory.HUE_RED) {
            audioManager.requestAudioFocus(null, 3, 3);
        } else {
            audioManager.abandonAudioFocus(null);
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void setProgressInterval(int i) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("setProgressInterval must be called from UI thread.");
            return;
        }
        int i2 = 100;
        if (i >= 100 || i == -1) {
            i2 = i;
        }
        this.f62055n = i2;
        ProgressHandler progressHandler = this.f62053l;
        if (progressHandler == null) {
            return;
        }
        progressHandler.sendMessage(progressHandler.obtainMessage(4, i, 0));
    }

    @Override // com.verizon.ads.VideoPlayer
    public void setSurfaceView(SurfaceView surfaceView) {
        this.f62050i = new WeakReference<>(surfaceView);
        SurfaceHolder holder = surfaceView.getHolder();
        this.f62051j = holder;
        holder.addCallback(new SurfaceHolder.Callback() { // from class: com.verizon.ads.videoplayer.VerizonVideoPlayer.1
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                if (VerizonVideoPlayer.this.f62049h == null || VerizonVideoPlayer.this.f62057p != 4) {
                    return;
                }
                VerizonVideoPlayer.this.play();
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                VerizonVideoPlayer.this.m5047a(surfaceHolder);
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                VerizonVideoPlayer.this.f62051j = null;
                if (VerizonVideoPlayer.this.f62049h != null) {
                    VerizonVideoPlayer.this.f62049h.setDisplay(null);
                }
            }
        });
        surfaceView.getHolder().setType(3);
        surfaceView.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$s0r6lwSp_17HjKg830BA_N_DRuI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerizonVideoPlayer.this.m5046a(view);
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer
    public void setVolume(final float f) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("setVolume must be called from UI thread.");
            return;
        }
        this.f62052k = f;
        MediaPlayer mediaPlayer = this.f62049h;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f);
            m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$26V4ibV0WXjO5KeIxlWTc0z1z2w
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.m5048a(f);
                }
            });
        }
        setAudioFocus();
    }

    @Override // com.verizon.ads.VideoPlayer
    public void unload() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("unload must be called from UI thread.");
        } else if (this.f62049h == null) {
        } else {
            HandlerThread handlerThread = this.f62054m;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            this.f62049h.setDisplay(null);
            this.f62049h.reset();
            this.f62049h.release();
            this.f62049h = null;
            this.f62058q = 0;
            m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$tgrdziMvW5pLSNzdkz4bhJjFeI4
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.m5025h();
                }
            });
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void unregisterListener(final VideoPlayer.VideoPlayerListener videoPlayerListener) {
        if (videoPlayerListener == null) {
            f62042a.m5559w("Cannot unregister a null instance.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            f62042a.m5565e("unregisterListener must be called from UI thread.");
        } else {
            m5041a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6_bzQ
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.m5045a(videoPlayerListener);
                }
            });
        }
    }
}
