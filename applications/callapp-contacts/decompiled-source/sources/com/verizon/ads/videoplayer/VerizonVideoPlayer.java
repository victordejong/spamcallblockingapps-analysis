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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35807a = Logger.getInstance(VerizonVideoPlayer.class);

    /* renamed from: d  reason: collision with root package name */
    private final WeakReference<Context> f35810d;
    private Uri e;
    private int f;
    private int g;
    private MediaPlayer h;
    private WeakReference<SurfaceView> i;
    private SurfaceHolder j;
    private ProgressHandler l;
    private HandlerThread m;
    private volatile int p;
    private float k = 1.0f;
    private int n = 1000;
    private int o = 0;
    private volatile int q = 0;

    /* renamed from: b  reason: collision with root package name */
    private final ExecutorService f35808b = Executors.newSingleThreadExecutor();

    /* renamed from: c  reason: collision with root package name */
    private final Set<VideoPlayer.VideoPlayerListener> f35809c = new HashSet();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            return new VerizonVideoPlayer(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer$MediaPlayerListener.class */
    public static class MediaPlayerListener implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<VerizonVideoPlayer> f35812a;

        MediaPlayerListener(VerizonVideoPlayer verizonVideoPlayer) {
            this.f35812a = new WeakReference<>(verizonVideoPlayer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(VerizonVideoPlayer verizonVideoPlayer) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f35809c) {
                videoPlayerListener.onSeekCompleted(verizonVideoPlayer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(VerizonVideoPlayer verizonVideoPlayer, int i) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f35809c) {
                videoPlayerListener.onProgress(verizonVideoPlayer, i);
                videoPlayerListener.onComplete(verizonVideoPlayer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(VerizonVideoPlayer verizonVideoPlayer, int i, int i2) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f35809c) {
                videoPlayerListener.onVideoSizeChanged(i, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(VerizonVideoPlayer verizonVideoPlayer) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f35809c) {
                videoPlayerListener.onLoaded(verizonVideoPlayer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void c(VerizonVideoPlayer verizonVideoPlayer) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f35809c) {
                videoPlayerListener.onLoaded(verizonVideoPlayer);
                videoPlayerListener.onReady(verizonVideoPlayer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void d(VerizonVideoPlayer verizonVideoPlayer) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f35809c) {
                videoPlayerListener.onError(verizonVideoPlayer);
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            final VerizonVideoPlayer verizonVideoPlayer = this.f35812a.get();
            if (verizonVideoPlayer != null) {
                verizonVideoPlayer.q = 6;
                verizonVideoPlayer.p = 6;
                verizonVideoPlayer.l.sendEmptyMessage(2);
                final int duration = verizonVideoPlayer.getDuration();
                verizonVideoPlayer.a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$OWhVoC_wcCaaUPpRBzSIV_8D7is
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.MediaPlayerListener.a(VerizonVideoPlayer.this, duration);
                    }
                });
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            final VerizonVideoPlayer verizonVideoPlayer = this.f35812a.get();
            if (verizonVideoPlayer == null) {
                return true;
            }
            if ((i != 1 || i2 != -19) && i != -38) {
                verizonVideoPlayer.q = 7;
                verizonVideoPlayer.a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$FW3CWWex3MEG60hbOnJmF_G3PWc
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.MediaPlayerListener.d(VerizonVideoPlayer.this);
                    }
                });
                return true;
            } else if (!Logger.isLogLevelEnabled(3)) {
                return true;
            } else {
                VerizonVideoPlayer.f35807a.d(String.format("Ignoring acceptable media error: (%d, %d)", Integer.valueOf(i), Integer.valueOf(i2)));
                return true;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.seekTo(1);
            final VerizonVideoPlayer verizonVideoPlayer = this.f35812a.get();
            if (verizonVideoPlayer == null) {
                return;
            }
            if (verizonVideoPlayer.j == null || !verizonVideoPlayer.j.getSurface().isValid()) {
                verizonVideoPlayer.q = 2;
                verizonVideoPlayer.a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$5svjq7vkOWmvpCmS7Okq5N39vco
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.MediaPlayerListener.b(VerizonVideoPlayer.this);
                    }
                });
                return;
            }
            verizonVideoPlayer.setAudioFocus();
            verizonVideoPlayer.q = 3;
            verizonVideoPlayer.a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$BK25P9UnYi2gKGS1LuWz5QMbmVs
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.MediaPlayerListener.c(VerizonVideoPlayer.this);
                }
            });
            if (verizonVideoPlayer.p == 4) {
                verizonVideoPlayer.play();
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            final VerizonVideoPlayer verizonVideoPlayer = this.f35812a.get();
            if (verizonVideoPlayer != null) {
                verizonVideoPlayer.a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$3SFT8JjvZMBn8qlQBm0pwcMdofk
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.MediaPlayerListener.a(VerizonVideoPlayer.this);
                    }
                });
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, final int i, final int i2) {
            final VerizonVideoPlayer verizonVideoPlayer = this.f35812a.get();
            if (verizonVideoPlayer != null && i2 != 0 && i != 0) {
                verizonVideoPlayer.f = i;
                verizonVideoPlayer.g = i2;
                SurfaceView surfaceView = (SurfaceView) verizonVideoPlayer.i.get();
                if (surfaceView != null) {
                    surfaceView.requestLayout();
                }
                verizonVideoPlayer.a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$MediaPlayerListener$FpVLBjIKBYTrgI9aITJvwiuyapo
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.MediaPlayerListener.a(VerizonVideoPlayer.this, i, i2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer$ProgressHandler.class */
    public static class ProgressHandler extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<VerizonVideoPlayer> f35813a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f35814b = false;

        /* renamed from: c  reason: collision with root package name */
        private int f35815c;

        ProgressHandler(VerizonVideoPlayer verizonVideoPlayer, Looper looper, int i) {
            super(looper);
            this.f35813a = new WeakReference<>(verizonVideoPlayer);
            this.f35815c = i;
        }

        private void a() {
            if (this.f35814b) {
                if (Logger.isLogLevelEnabled(3)) {
                    VerizonVideoPlayer.f35807a.d("Stopping progress handler.");
                }
                this.f35814b = false;
                removeMessages(3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(VerizonVideoPlayer verizonVideoPlayer, int i) {
            for (VideoPlayer.VideoPlayerListener videoPlayerListener : verizonVideoPlayer.f35809c) {
                videoPlayerListener.onProgress(verizonVideoPlayer, i);
            }
        }

        private void a(boolean z) {
            if (this.f35815c != -1 && !this.f35814b) {
                if (Logger.isLogLevelEnabled(3)) {
                    VerizonVideoPlayer.f35807a.d(String.format("Starting progress handler with interval %d ms.", Integer.valueOf(this.f35815c)));
                }
                this.f35814b = true;
                if (z) {
                    sendEmptyMessageDelayed(3, this.f35815c);
                } else {
                    sendEmptyMessage(3);
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                a(false);
            } else if (i == 2) {
                a();
            } else if (i == 3) {
                final VerizonVideoPlayer verizonVideoPlayer = this.f35813a.get();
                if (verizonVideoPlayer != null) {
                    final int currentPosition = verizonVideoPlayer.h.getCurrentPosition();
                    verizonVideoPlayer.a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$ProgressHandler$9KoNkfEXfr_QEMKg1oRKnQ8GF4s
                        @Override // java.lang.Runnable
                        public final void run() {
                            VerizonVideoPlayer.ProgressHandler.a(VerizonVideoPlayer.this, currentPosition);
                        }
                    });
                    sendEmptyMessageDelayed(3, this.f35815c);
                }
            } else if (i != 4) {
                VerizonVideoPlayer.f35807a.e(String.format("Invalid what %d sent to ProgressHandler.", Integer.valueOf(message.what)));
            } else {
                this.f35815c = message.arg1;
                if (this.f35814b) {
                    a();
                    if (this.f35815c != -1) {
                        a(true);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VerizonVideoPlayer$VideoViewInfo.class */
    public static class VideoViewInfo extends View.BaseSavedState {
        public static final Parcelable.Creator<VideoViewInfo> CREATOR = new Parcelable.Creator<VideoViewInfo>() { // from class: com.verizon.ads.videoplayer.VerizonVideoPlayer.VideoViewInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final VideoViewInfo createFromParcel(Parcel parcel) {
                return new VideoViewInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
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
        this.f35810d = new WeakReference<>(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(float f) {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f35809c) {
            videoPlayerListener.onVolumeChanged(this, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$UC7hbX38KhZQ1lLXjpwzt7FxPrw
            @Override // java.lang.Runnable
            public final void run() {
                VerizonVideoPlayer.this.i();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(VideoPlayer.VideoPlayerListener videoPlayerListener) {
        this.f35809c.remove(videoPlayerListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MediaPlayerListener mediaPlayerListener, MediaPlayer mediaPlayer) {
        this.h.setOnSeekCompleteListener(mediaPlayerListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(VideoPlayer.VideoPlayerListener videoPlayerListener) {
        this.f35809c.add(videoPlayerListener);
    }

    private boolean b() {
        return (this.q == 0 || this.q == 1 || this.q == 2 || this.q == 7) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f35809c) {
            videoPlayerListener.onReady(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f35809c) {
            videoPlayerListener.onError(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f35809c) {
            videoPlayerListener.onPaused(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f35809c) {
            videoPlayerListener.onPlay(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f35809c) {
            videoPlayerListener.onError(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f35809c) {
            videoPlayerListener.onUnloaded(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        for (VideoPlayer.VideoPlayerListener videoPlayerListener : this.f35809c) {
            videoPlayerListener.onClick(this);
        }
    }

    final void a(SurfaceHolder surfaceHolder) {
        this.j = surfaceHolder;
        if (!surfaceHolder.getSurface().isValid()) {
            this.q = 7;
            this.p = 7;
            a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$eKDzh9YvHmsQc9YJT7WKKIPmLD8
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.d();
                }
            });
            return;
        }
        MediaPlayer mediaPlayer = this.h;
        if (mediaPlayer != null) {
            mediaPlayer.setDisplay(this.j);
        }
        if (this.q == 2) {
            setAudioFocus();
            this.q = 3;
            SurfaceView surfaceView = this.i.get();
            if (!(surfaceView == null || this.f == 0 || this.g == 0)) {
                surfaceView.requestLayout();
            }
            a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$HCb1BhNRi5EoRDA2lBQ5_rMbkXI
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.c();
                }
            });
            if (this.p == 4) {
                play();
            }
        }
    }

    final void a(Runnable runnable) {
        ExecutorService executorService = this.f35808b;
        if (executorService != null && !executorService.isShutdown()) {
            this.f35808b.submit(runnable);
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getCurrentPosition() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("getCurrentPosition must be called from UI thread.");
            return -1;
        } else if (b()) {
            return this.h.getCurrentPosition();
        } else {
            return -1;
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getDuration() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("getDuration must be called from UI thread.");
            return -1;
        } else if (b() || this.q == 2) {
            return this.h.getDuration();
        } else {
            return -1;
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getState() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return this.q;
        }
        f35807a.e("unregisterListener must be called from UI thread.");
        return -1;
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getVideoHeight() {
        return this.g;
    }

    @Override // com.verizon.ads.VideoPlayer
    public int getVideoWidth() {
        return this.f;
    }

    @Override // com.verizon.ads.VideoPlayer
    public float getVolume() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return this.k;
        }
        f35807a.e("getVolume must be called from UI thread.");
        return -1.0f;
    }

    @Override // com.verizon.ads.VideoPlayer
    public void load(Uri uri) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("load must be called from UI thread.");
            return;
        }
        this.e = uri;
        if (uri != null) {
            unload();
            HandlerThread handlerThread = new HandlerThread("vp-progress-handler");
            this.m = handlerThread;
            handlerThread.start();
            this.l = new ProgressHandler(this, this.m.getLooper(), this.n);
            this.h = new MediaPlayer();
            SurfaceHolder surfaceHolder = this.j;
            if (surfaceHolder != null && surfaceHolder.getSurface().isValid()) {
                this.h.setDisplay(this.j);
            }
            final MediaPlayerListener mediaPlayerListener = new MediaPlayerListener(this);
            this.h.setOnPreparedListener(mediaPlayerListener);
            this.h.setOnCompletionListener(mediaPlayerListener);
            this.h.setOnErrorListener(mediaPlayerListener);
            this.h.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$sZRveuXSN8kHqkD6mi_fnw9Y39c
                @Override // android.media.MediaPlayer.OnSeekCompleteListener
                public final void onSeekComplete(MediaPlayer mediaPlayer) {
                    VerizonVideoPlayer.this.a(mediaPlayerListener, mediaPlayer);
                }
            });
            this.h.setOnVideoSizeChangedListener(mediaPlayerListener);
            try {
                Context context = this.f35810d.get();
                if (context == null) {
                    f35807a.d("load cannot complete; context has been released.");
                    return;
                }
                this.h.setDataSource(context, uri, (Map<String, String>) null);
                this.q = 1;
                this.h.prepareAsync();
            } catch (IOException e) {
                f35807a.e("An error occurred preparing the VideoPlayer.", e);
                this.q = 7;
                this.p = 7;
                a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$XQ1XE_8dfYePEQ0c0yEFdYWuBP4
                    @Override // java.lang.Runnable
                    public final void run() {
                        VerizonVideoPlayer.this.g();
                    }
                });
            }
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void load(String str) {
        load(Uri.parse(str));
    }

    @Override // com.verizon.ads.VideoPlayer
    public void pause() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("pause must be called from UI thread.");
        } else if (b() && this.h.isPlaying()) {
            this.h.pause();
            a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$vue3QTucGR0WUSl8XaVNV5VKS2g
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.e();
                }
            });
            this.q = 5;
            this.p = 5;
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void play() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("play must be called from UI thread.");
        } else if (!b() || this.q == 4) {
            this.p = 4;
        } else {
            setVolume(this.k);
            int i = this.o;
            if (i != 0) {
                this.h.seekTo(i);
                this.o = 0;
            }
            this.h.start();
            this.q = 4;
            this.p = 4;
            a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$Sdg1MMXRK8NdOV_xRLE6aNvw20k
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.f();
                }
            });
            this.l.sendEmptyMessage(1);
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void registerListener(final VideoPlayer.VideoPlayerListener videoPlayerListener) {
        if (videoPlayerListener == null) {
            f35807a.w("Cannot register a null instance.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("registerListener must be called from UI thread.");
        } else {
            a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$Z9aKnZKsSDqlARPGZvgr71hlP2k
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.b(videoPlayerListener);
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
        Context context = this.f35810d.get();
        if (context == null) {
            f35807a.d("releaseAudioFocus is not available. context was released.");
            return;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            audioManager.abandonAudioFocus(null);
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void replay() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("replay must be called from UI thread.");
            return;
        }
        if (Build.VERSION.SDK_INT <= 21) {
            Uri uri = this.e;
            if (uri != null) {
                load(uri);
            } else {
                return;
            }
        } else {
            seekTo(0);
        }
        play();
    }

    @Override // com.verizon.ads.VideoPlayer
    public void restoreInstanceState(AbsSavedState absSavedState) {
        if (absSavedState instanceof VideoViewInfo) {
            VideoViewInfo videoViewInfo = (VideoViewInfo) absSavedState;
            this.p = videoViewInfo.targetState;
            this.o = videoViewInfo.currentPosition;
            setVolume(videoViewInfo.volume);
            if (videoViewInfo.uri != null) {
                load(videoViewInfo.uri);
            }
            if (videoViewInfo.currentState == 4 || videoViewInfo.targetState == 4) {
                play();
            }
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public AbsSavedState saveInstanceState(Parcelable parcelable) {
        VideoViewInfo videoViewInfo = new VideoViewInfo(parcelable);
        videoViewInfo.currentState = this.q;
        videoViewInfo.targetState = this.p;
        videoViewInfo.currentPosition = getCurrentPosition();
        videoViewInfo.volume = getVolume();
        Uri uri = this.e;
        videoViewInfo.uri = uri != null ? uri.toString() : null;
        return videoViewInfo;
    }

    @Override // com.verizon.ads.VideoPlayer
    public void seekTo(int i) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("seekTo must be called from UI thread.");
        } else if (b()) {
            this.h.seekTo(i);
            this.o = 0;
        } else {
            this.o = i;
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void setAudioFocus() {
        Context context = this.f35810d.get();
        if (context == null) {
            f35807a.d("setAudioFocus is not available. context was released.");
            return;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return;
        }
        if (this.k > BitmapDescriptorFactory.HUE_RED) {
            audioManager.requestAudioFocus(null, 3, 3);
        } else {
            audioManager.abandonAudioFocus(null);
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void setProgressInterval(int i) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("setProgressInterval must be called from UI thread.");
            return;
        }
        int i2 = 100;
        if (i >= 100 || i == -1) {
            i2 = i;
        }
        this.n = i2;
        ProgressHandler progressHandler = this.l;
        if (progressHandler != null) {
            progressHandler.sendMessage(progressHandler.obtainMessage(4, i, 0));
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void setSurfaceView(SurfaceView surfaceView) {
        this.i = new WeakReference<>(surfaceView);
        SurfaceHolder holder = surfaceView.getHolder();
        this.j = holder;
        holder.addCallback(new SurfaceHolder.Callback() { // from class: com.verizon.ads.videoplayer.VerizonVideoPlayer.1
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                if (VerizonVideoPlayer.this.h != null && VerizonVideoPlayer.this.p == 4) {
                    VerizonVideoPlayer.this.play();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                VerizonVideoPlayer.this.a(surfaceHolder);
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                VerizonVideoPlayer.this.j = null;
                if (VerizonVideoPlayer.this.h != null) {
                    VerizonVideoPlayer.this.h.setDisplay(null);
                }
            }
        });
        surfaceView.getHolder().setType(3);
        surfaceView.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$s0r6lwSp_17HjKg830BA_N_DRuI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VerizonVideoPlayer.this.a(view);
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer
    public void setVolume(final float f) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("setVolume must be called from UI thread.");
            return;
        }
        this.k = f;
        MediaPlayer mediaPlayer = this.h;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f);
            a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$26V4ibV0WXjO5KeIxlWTc0z1z2w
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.a(f);
                }
            });
        }
        setAudioFocus();
    }

    @Override // com.verizon.ads.VideoPlayer
    public void unload() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("unload must be called from UI thread.");
        } else if (this.h != null) {
            HandlerThread handlerThread = this.m;
            if (handlerThread != null) {
                handlerThread.quit();
            }
            this.h.setDisplay(null);
            this.h.reset();
            this.h.release();
            this.h = null;
            this.q = 0;
            a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$tgrdziMvW5pLSNzdkz4bhJjFeI4
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.h();
                }
            });
        }
    }

    @Override // com.verizon.ads.VideoPlayer
    public void unregisterListener(final VideoPlayer.VideoPlayerListener videoPlayerListener) {
        if (videoPlayerListener == null) {
            f35807a.w("Cannot unregister a null instance.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            f35807a.e("unregisterListener must be called from UI thread.");
        } else {
            a(new Runnable() { // from class: com.verizon.ads.videoplayer._$$Lambda$VerizonVideoPlayer$ZU2ipimracsBaToCBPmTgH6_bzQ
                @Override // java.lang.Runnable
                public final void run() {
                    VerizonVideoPlayer.this.a(videoPlayerListener);
                }
            });
        }
    }
}
