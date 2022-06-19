package cn.jzvd;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:cn/jzvd/JZMediaSystem.class */
public class JZMediaSystem extends AbstractTextureView$SurfaceTextureListenerC2130u implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnVideoSizeChangedListener {
    public MediaPlayer mediaPlayer;

    public JZMediaSystem(Jzvd jzvd) {
        super(jzvd);
    }

    /* renamed from: lambda$onBufferingUpdate$8 */
    public /* synthetic */ void m28010a(int i) {
        this.jzvd.setBufferProgress(i);
    }

    /* renamed from: lambda$onCompletion$7 */
    public /* synthetic */ void m28009b() {
        this.jzvd.mo27956y();
    }

    /* renamed from: lambda$onError$10 */
    public /* synthetic */ void m28008c(int i, int i2) {
        this.jzvd.mo27449z(i, i2);
    }

    /* renamed from: lambda$onInfo$11 */
    public /* synthetic */ void m28007d(int i, int i2) {
        this.jzvd.mo27470A(i, i2);
    }

    /* renamed from: lambda$onPrepared$6 */
    public /* synthetic */ void m28006e() {
        this.jzvd.m27998B();
    }

    /* renamed from: lambda$onSeekComplete$9 */
    public /* synthetic */ void m28005f() {
        this.jzvd.m27997D();
    }

    /* renamed from: lambda$onVideoSizeChanged$12 */
    public /* synthetic */ void m28004g(int i, int i2) {
        this.jzvd.mo27463K(i, i2);
    }

    /* renamed from: lambda$pause$2 */
    public /* synthetic */ void m28003h() {
        this.mediaPlayer.pause();
    }

    /* renamed from: lambda$prepare$0 */
    public /* synthetic */ void m28002i() {
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mediaPlayer = mediaPlayer;
            mediaPlayer.setAudioStreamType(3);
            this.mediaPlayer.setLooping(this.jzvd.f7312q.f7391e);
            this.mediaPlayer.setOnPreparedListener(this);
            this.mediaPlayer.setOnCompletionListener(this);
            this.mediaPlayer.setOnBufferingUpdateListener(this);
            this.mediaPlayer.setScreenOnWhilePlaying(true);
            this.mediaPlayer.setOnSeekCompleteListener(this);
            this.mediaPlayer.setOnErrorListener(this);
            this.mediaPlayer.setOnInfoListener(this);
            this.mediaPlayer.setOnVideoSizeChangedListener(this);
            MediaPlayer.class.getDeclaredMethod("setDataSource", String.class, Map.class).invoke(this.mediaPlayer, this.jzvd.f7312q.m27953c().toString(), this.jzvd.f7312q.f7390d);
            this.mediaPlayer.prepareAsync();
            this.mediaPlayer.setSurface(new Surface(AbstractTextureView$SurfaceTextureListenerC2130u.SAVED_SURFACE));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static /* synthetic */ void lambda$release$4(MediaPlayer mediaPlayer, HandlerThread handlerThread) {
        mediaPlayer.setSurface(null);
        mediaPlayer.release();
        handlerThread.quit();
    }

    /* renamed from: lambda$seekTo$3 */
    public /* synthetic */ void m28001j(long j) {
        try {
            this.mediaPlayer.seekTo((int) j);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: lambda$setVolume$5 */
    public /* synthetic */ void m28000k(float f, float f2) {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f2);
        }
    }

    /* renamed from: lambda$start$1 */
    public /* synthetic */ void m27999l() {
        this.mediaPlayer.start();
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public long getCurrentPosition() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public long getDuration() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getDuration();
        }
        return 0L;
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public boolean isPlaying() {
        return this.mediaPlayer.isPlaying();
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, final int i) {
        this.handler.post(new Runnable() { // from class: cn.jzvd.b
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28010a(i);
            }
        });
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.handler.post(new Runnable() { // from class: cn.jzvd.h
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28009b();
            }
        });
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, final int i, final int i2) {
        this.handler.post(new Runnable() { // from class: cn.jzvd.e
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28008c(i, i2);
            }
        });
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, final int i, final int i2) {
        this.handler.post(new Runnable() { // from class: cn.jzvd.g
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28007d(i, i2);
            }
        });
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.handler.post(new Runnable() { // from class: cn.jzvd.i
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28006e();
            }
        });
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        this.handler.post(new Runnable() { // from class: cn.jzvd.a
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28005f();
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        SurfaceTexture surfaceTexture2 = AbstractTextureView$SurfaceTextureListenerC2130u.SAVED_SURFACE;
        if (surfaceTexture2 != null) {
            this.jzvd.f7293I.setSurfaceTexture(surfaceTexture2);
            return;
        }
        AbstractTextureView$SurfaceTextureListenerC2130u.SAVED_SURFACE = surfaceTexture;
        prepare();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, final int i, final int i2) {
        this.handler.post(new Runnable() { // from class: cn.jzvd.k
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28004g(i, i2);
            }
        });
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void pause() {
        this.mMediaHandler.post(new Runnable() { // from class: cn.jzvd.f
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28003h();
            }
        });
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void prepare() {
        release();
        HandlerThread handlerThread = new HandlerThread("JZVD");
        this.mMediaHandlerThread = handlerThread;
        handlerThread.start();
        this.mMediaHandler = new Handler(this.mMediaHandlerThread.getLooper());
        this.handler = new Handler();
        this.mMediaHandler.post(new Runnable() { // from class: cn.jzvd.j
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28002i();
            }
        });
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void release() {
        final HandlerThread handlerThread;
        final MediaPlayer mediaPlayer;
        Handler handler = this.mMediaHandler;
        if (handler == null || (handlerThread = this.mMediaHandlerThread) == null || (mediaPlayer = this.mediaPlayer) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: cn.jzvd.c
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.lambda$release$4(mediaPlayer, handlerThread);
            }
        });
        this.mediaPlayer = null;
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void seekTo(final long j) {
        this.mMediaHandler.post(new Runnable() { // from class: cn.jzvd.l
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28001j(j);
            }
        });
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void setSpeed(float f) {
        PlaybackParams playbackParams = this.mediaPlayer.getPlaybackParams();
        playbackParams.setSpeed(f);
        this.mediaPlayer.setPlaybackParams(playbackParams);
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void setSurface(Surface surface) {
        this.mediaPlayer.setSurface(surface);
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void setVolume(final float f, final float f2) {
        Handler handler = this.mMediaHandler;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: cn.jzvd.d
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m28000k(f, f2);
            }
        });
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void start() {
        this.mMediaHandler.post(new Runnable() { // from class: cn.jzvd.m
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaSystem.this.m27999l();
            }
        });
    }
}
