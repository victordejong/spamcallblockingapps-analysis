package com.allinone.callerid.callscreen.CustomMedia;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Surface;
import cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u;
import cn.jzvd.Jzvd;
import com.allinone.callerid.callscreen.CustomMedia.JZMediaExo;
import com.allinone.callerid.util.C3810q;
import com.google.android.exoplayer2.AbstractC5162o0;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.C4798a0;
import com.google.android.exoplayer2.C4851b0;
import com.google.android.exoplayer2.C5102l0;
import com.google.android.exoplayer2.C5160n0;
import com.google.android.exoplayer2.C5581x0;
import com.google.android.exoplayer2.C5584y;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.C5285s;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.trackselection.C5396a;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.upstream.C5482m;
import com.google.android.exoplayer2.upstream.C5483n;
import com.google.android.exoplayer2.upstream.C5488p;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.video.AbstractC5568p;
import com.google.android.exoplayer2.video.C5567o;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/CustomMedia/JZMediaExo.class */
public class JZMediaExo extends AbstractTextureView$SurfaceTextureListenerC2130u implements AbstractC5162o0.AbstractC5163a, AbstractC5568p {
    private Runnable callback;
    private C5581x0 simpleExoPlayer;
    private long startTime;
    private String TAG = "JZMediaExo";
    private long previousSeek = 0;

    /* renamed from: com.allinone.callerid.callscreen.CustomMedia.JZMediaExo$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/CustomMedia/JZMediaExo$b.class */
    public class RunnableC2324b implements Runnable {
        private RunnableC2324b() {
            JZMediaExo.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m27640b(int i) {
            JZMediaExo.this.jzvd.setBufferProgress(i);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (JZMediaExo.this.simpleExoPlayer != null) {
                final int m19701U = JZMediaExo.this.simpleExoPlayer.m19701U();
                JZMediaExo.this.handler.post(new Runnable() { // from class: com.allinone.callerid.callscreen.CustomMedia.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        JZMediaExo.RunnableC2324b.this.m27640b(m19701U);
                    }
                });
                if (m19701U < 100) {
                    JZMediaExo jZMediaExo = JZMediaExo.this;
                    jZMediaExo.handler.postDelayed(jZMediaExo.callback, 300L);
                    return;
                }
                JZMediaExo jZMediaExo2 = JZMediaExo.this;
                jZMediaExo2.handler.removeCallbacks(jZMediaExo2.callback);
            }
        }
    }

    public JZMediaExo(Jzvd jzvd) {
        super(jzvd);
    }

    /* renamed from: lambda$onPlayerError$4 */
    public /* synthetic */ void m27646a() {
        this.jzvd.mo27449z(1000, 1000);
    }

    /* renamed from: lambda$onPlayerStateChanged$3 */
    public /* synthetic */ void m27645b(int i, boolean z) {
        if (i == 2) {
            this.handler.post(this.callback);
        } else if (i != 3) {
            if (i != 4) {
                return;
            }
            this.jzvd.mo27956y();
        } else if (!z) {
        } else {
            this.jzvd.mo27465I();
        }
    }

    /* renamed from: lambda$onSeekProcessed$5 */
    public /* synthetic */ void m27644c() {
        this.jzvd.m27997D();
    }

    /* renamed from: lambda$onVideoSizeChanged$1 */
    public /* synthetic */ void m27643d(int i, int i2) {
        this.jzvd.mo27463K(i, i2);
    }

    /* renamed from: lambda$prepare$0 */
    public /* synthetic */ void m27642e(Context context) {
        try {
            this.simpleExoPlayer = C4851b0.m21438a(context, new C4798a0(context), new DefaultTrackSelector(new C5396a.C5400d(new C5483n())), new C5584y(new C5482m(true, 65536), 360000, 600000, 1000, 5000, -1, false));
            C5488p c5488p = new C5488p(context, C5515h0.m18855Q(context, context.getResources().getString(2131755110)));
            String obj = this.jzvd.f7312q.m27953c().toString();
            HlsMediaSource m20093b = obj.contains(".m3u8") ? new HlsMediaSource.Factory(c5488p).m20093b(Uri.parse(obj), this.handler, null) : new C5285s.C5287b(c5488p).m19851a(Uri.parse(obj));
            this.simpleExoPlayer.mo18408v(this);
            String str = this.TAG;
            Log.e(str, "URL Link = " + obj);
            this.simpleExoPlayer.mo18422o(this);
            if (Boolean.valueOf(this.jzvd.f7312q.f7391e).booleanValue()) {
                this.simpleExoPlayer.mo18473E(1);
            } else {
                this.simpleExoPlayer.mo18473E(0);
            }
            this.simpleExoPlayer.m18400z0(m20093b);
            this.simpleExoPlayer.mo18406w(true);
            this.callback = new RunnableC2324b();
            this.simpleExoPlayer.mo18449a(new Surface(this.jzvd.f7293I.getSurfaceTexture()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static /* synthetic */ void lambda$release$2(C5581x0 c5581x0, HandlerThread handlerThread) {
        c5581x0.m18478B0();
        handlerThread.quit();
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public long getCurrentPosition() {
        C5581x0 c5581x0 = this.simpleExoPlayer;
        if (c5581x0 != null) {
            return c5581x0.getCurrentPosition();
        }
        return 0L;
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public long getDuration() {
        C5581x0 c5581x0 = this.simpleExoPlayer;
        if (c5581x0 != null) {
            return c5581x0.getDuration();
        }
        return 0L;
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public boolean isPlaying() {
        return this.simpleExoPlayer.mo18435h();
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public /* bridge */ /* synthetic */ void onIsPlayingChanged(boolean z) {
        C5160n0.m20286a(this, z);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onLoadingChanged(boolean z) {
        Log.e(this.TAG, "onLoadingChanged");
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onPlaybackParametersChanged(C5102l0 c5102l0) {
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public /* bridge */ /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
        C5160n0.m20283d(this, i);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        String str = this.TAG;
        Log.e(str, "onPlayerError" + exoPlaybackException.toString());
        C3810q.m24071b().m24060m(exoPlaybackException.getMessage());
        this.handler.post(new Runnable() { // from class: com.allinone.callerid.callscreen.CustomMedia.e
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaExo.this.m27646a();
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onPlayerStateChanged(final boolean z, final int i) {
        String str = this.TAG;
        Log.e(str, "onPlayerStateChanged" + i + "/ready=" + String.valueOf(z));
        this.handler.post(new Runnable() { // from class: com.allinone.callerid.callscreen.CustomMedia.b
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaExo.this.m27645b(i, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onPositionDiscontinuity(int i) {
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5568p
    public void onRenderedFirstFrame() {
        String str = this.TAG;
        Log.e(str, "onRenderedFirstFrame-loadingtime:" + (System.currentTimeMillis() - this.startTime) + "ms");
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onRepeatModeChanged(int i) {
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onSeekProcessed() {
        this.handler.post(new Runnable() { // from class: com.allinone.callerid.callscreen.CustomMedia.a
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaExo.this.m27644c();
            }
        });
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onShuffleModeEnabledChanged(boolean z) {
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5568p
    public /* bridge */ /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        C5567o.m18536a(this, i, i2);
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

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public /* bridge */ /* synthetic */ void onTimelineChanged(AbstractC5585y0 abstractC5585y0, int i) {
        C5160n0.m20277j(this, abstractC5585y0, i);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onTimelineChanged(AbstractC5585y0 abstractC5585y0, Object obj, int i) {
        Log.e(this.TAG, "onTimelineChanged");
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onTracksChanged(TrackGroupArray trackGroupArray, C5411g c5411g) {
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5568p
    public void onVideoSizeChanged(final int i, final int i2, int i3, float f) {
        this.handler.post(new Runnable() { // from class: com.allinone.callerid.callscreen.CustomMedia.c
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaExo.this.m27643d(i, i2);
            }
        });
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void pause() {
        try {
            C5581x0 c5581x0 = this.simpleExoPlayer;
            if (c5581x0 == null) {
                return;
            }
            c5581x0.mo18406w(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void prepare() {
        Log.e(this.TAG, "prepare");
        this.startTime = System.currentTimeMillis();
        final Context context = this.jzvd.getContext();
        release();
        HandlerThread handlerThread = new HandlerThread("JZVD");
        this.mMediaHandlerThread = handlerThread;
        handlerThread.start();
        this.mMediaHandler = new Handler(this.mMediaHandlerThread.getLooper());
        this.handler = new Handler();
        this.mMediaHandler.post(new Runnable() { // from class: com.allinone.callerid.callscreen.CustomMedia.f
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaExo.this.m27642e(context);
            }
        });
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void release() {
        final HandlerThread handlerThread;
        final C5581x0 c5581x0;
        Handler handler = this.mMediaHandler;
        if (handler == null || (handlerThread = this.mMediaHandlerThread) == null || (c5581x0 = this.simpleExoPlayer) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.allinone.callerid.callscreen.CustomMedia.d
            @Override // java.lang.Runnable
            public final void run() {
                JZMediaExo.lambda$release$2(C5581x0.this, handlerThread);
            }
        });
        this.simpleExoPlayer = null;
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void seekTo(long j) {
        if (j != this.previousSeek) {
            this.simpleExoPlayer.m19698X(j);
            this.previousSeek = j;
            this.jzvd.f7321z = j;
        }
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void setSpeed(float f) {
        this.simpleExoPlayer.m18472E0(new C5102l0(f, 1.0f));
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void setSurface(Surface surface) {
        this.simpleExoPlayer.mo18449a(surface);
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void setVolume(float f, float f2) {
        try {
            C5581x0 c5581x0 = this.simpleExoPlayer;
            if (c5581x0 == null) {
                return;
            }
            c5581x0.m18465I0(f);
            this.simpleExoPlayer.m18465I0(f2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // cn.jzvd.AbstractTextureView$SurfaceTextureListenerC2130u
    public void start() {
        this.simpleExoPlayer.mo18406w(true);
    }
}
