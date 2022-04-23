package com.applovin.impl.adview;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.MediaController;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import java.util.Map;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2.class */
public class AppLovinVideoViewV2 extends SurfaceView implements MediaController.MediaPlayerControl {

    /* renamed from: a */
    public final C2374t f21219a;

    /* renamed from: b */
    public final AbstractC7036g.EnumC7040d f21220b;

    /* renamed from: c */
    public Uri f21221c;

    /* renamed from: d */
    public int f21222d;

    /* renamed from: e */
    public int f21223e;

    /* renamed from: h */
    public int f21226h;

    /* renamed from: i */
    public int f21227i;

    /* renamed from: j */
    public int f21228j;

    /* renamed from: k */
    public int f21229k;

    /* renamed from: l */
    public int f21230l;

    /* renamed from: m */
    public MediaPlayer.OnCompletionListener f21231m;

    /* renamed from: n */
    public MediaPlayer.OnPreparedListener f21232n;

    /* renamed from: o */
    public int f21233o;

    /* renamed from: p */
    public MediaPlayer.OnErrorListener f21234p;

    /* renamed from: q */
    public MediaPlayer.OnInfoListener f21235q;

    /* renamed from: r */
    public int f21236r;

    /* renamed from: s */
    public boolean f21237s;

    /* renamed from: t */
    public boolean f21238t;

    /* renamed from: u */
    public boolean f21239u;

    /* renamed from: v */
    public AudioManager f21240v;

    /* renamed from: f */
    public SurfaceHolder f21224f = null;

    /* renamed from: g */
    public MediaPlayer f21225g = null;

    /* renamed from: w */
    public int f21241w = 1;

    /* renamed from: x */
    public final MediaPlayer.OnVideoSizeChangedListener f21242x = new C6920b();

    /* renamed from: y */
    public final MediaPlayer.OnPreparedListener f21243y = new C6921c();

    /* renamed from: z */
    public final MediaPlayer.OnCompletionListener f21244z = new C6922d();

    /* renamed from: A */
    public final MediaPlayer.OnInfoListener f21215A = new C6923e();

    /* renamed from: B */
    public final MediaPlayer.OnErrorListener f21216B = new C6924f();

    /* renamed from: C */
    public final MediaPlayer.OnBufferingUpdateListener f21217C = new C6925g();

    /* renamed from: D */
    public final MediaPlayer.OnSeekCompleteListener f21218D = new C6926h();

    /* renamed from: com.applovin.impl.adview.AppLovinVideoViewV2$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2$a.class */
    public class SurfaceHolder$CallbackC6919a implements SurfaceHolder.Callback {
        public SurfaceHolder$CallbackC6919a() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            AppLovinVideoViewV2.this.f21219a.m30044b("AppLovinVideoView", "Surface changed with format: " + i + ", width: " + i2 + ", height: " + i3);
            AppLovinVideoViewV2.this.f21229k = i2;
            AppLovinVideoViewV2.this.f21230l = i3;
            boolean z = AppLovinVideoViewV2.this.f21223e == 3 || AppLovinVideoViewV2.this.f21223e == 4;
            boolean z2 = false;
            if (AppLovinVideoViewV2.this.f21227i == i2) {
                z2 = false;
                if (AppLovinVideoViewV2.this.f21228j == i3) {
                    z2 = true;
                }
            }
            if (AppLovinVideoViewV2.this.f21225g != null && z && z2) {
                if (AppLovinVideoViewV2.this.f21236r != 0) {
                    AppLovinVideoViewV2 appLovinVideoViewV2 = AppLovinVideoViewV2.this;
                    appLovinVideoViewV2.seekTo(appLovinVideoViewV2.f21236r);
                }
                AppLovinVideoViewV2.this.start();
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            AppLovinVideoViewV2.this.f21219a.m30044b("AppLovinVideoView", "Surface created");
            AppLovinVideoViewV2.this.f21224f = surfaceHolder;
            if (AppLovinVideoViewV2.this.f21225g != null) {
                AppLovinVideoViewV2.this.f21225g.setSurface(surfaceHolder.getSurface());
            } else {
                AppLovinVideoViewV2.this.m19365a();
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            AppLovinVideoViewV2.this.f21219a.m30044b("AppLovinVideoView", "Surface destroyed");
            AppLovinVideoViewV2.this.f21224f = null;
        }
    }

    /* renamed from: com.applovin.impl.adview.AppLovinVideoViewV2$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2$b.class */
    public class C6920b implements MediaPlayer.OnVideoSizeChangedListener {
        public C6920b() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            AppLovinVideoViewV2.this.f21227i = mediaPlayer.getVideoWidth();
            AppLovinVideoViewV2.this.f21228j = mediaPlayer.getVideoHeight();
            if (AppLovinVideoViewV2.this.f21227i != 0 && AppLovinVideoViewV2.this.f21228j != 0) {
                AppLovinVideoViewV2.this.getHolder().setFixedSize(AppLovinVideoViewV2.this.f21227i, AppLovinVideoViewV2.this.f21228j);
                AppLovinVideoViewV2.this.requestLayout();
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AppLovinVideoViewV2$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2$c.class */
    public class C6921c implements MediaPlayer.OnPreparedListener {
        public C6921c() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            AppLovinVideoViewV2.this.f21222d = 2;
            AppLovinVideoViewV2 appLovinVideoViewV2 = AppLovinVideoViewV2.this;
            appLovinVideoViewV2.f21239u = true;
            appLovinVideoViewV2.f21238t = true;
            appLovinVideoViewV2.f21237s = true;
            if (AppLovinVideoViewV2.this.f21232n != null) {
                AppLovinVideoViewV2.this.f21232n.onPrepared(AppLovinVideoViewV2.this.f21225g);
            }
            AppLovinVideoViewV2.this.f21227i = mediaPlayer.getVideoWidth();
            AppLovinVideoViewV2.this.f21228j = mediaPlayer.getVideoHeight();
            int i = AppLovinVideoViewV2.this.f21236r;
            if (i != 0) {
                AppLovinVideoViewV2.this.seekTo(i);
            }
            if (AppLovinVideoViewV2.this.f21227i != 0 && AppLovinVideoViewV2.this.f21228j != 0) {
                AppLovinVideoViewV2.this.getHolder().setFixedSize(AppLovinVideoViewV2.this.f21227i, AppLovinVideoViewV2.this.f21228j);
                if (!(AppLovinVideoViewV2.this.f21229k == AppLovinVideoViewV2.this.f21227i && AppLovinVideoViewV2.this.f21230l == AppLovinVideoViewV2.this.f21228j && AppLovinVideoViewV2.this.f21223e == 3)) {
                    return;
                }
            } else if (AppLovinVideoViewV2.this.f21223e != 3) {
                return;
            }
            AppLovinVideoViewV2.this.start();
        }
    }

    /* renamed from: com.applovin.impl.adview.AppLovinVideoViewV2$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2$d.class */
    public class C6922d implements MediaPlayer.OnCompletionListener {
        public C6922d() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            AppLovinVideoViewV2.this.f21222d = 5;
            AppLovinVideoViewV2.this.f21223e = 5;
            if (AppLovinVideoViewV2.this.f21231m != null) {
                AppLovinVideoViewV2.this.f21231m.onCompletion(AppLovinVideoViewV2.this.f21225g);
            }
            if (AppLovinVideoViewV2.this.f21241w != 0) {
                AppLovinVideoViewV2.this.f21240v.abandonAudioFocus(null);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AppLovinVideoViewV2$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2$e.class */
    public class C6923e implements MediaPlayer.OnInfoListener {
        public C6923e() {
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            if (AppLovinVideoViewV2.this.f21235q == null) {
                return true;
            }
            AppLovinVideoViewV2.this.f21235q.onInfo(mediaPlayer, i, i2);
            return true;
        }
    }

    /* renamed from: com.applovin.impl.adview.AppLovinVideoViewV2$f */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2$f.class */
    public class C6924f implements MediaPlayer.OnErrorListener {
        public C6924f() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            C2374t tVar = AppLovinVideoViewV2.this.f21219a;
            tVar.m30044b("AppLovinVideoView", "Media player error: " + i + ", " + i2);
            AppLovinVideoViewV2.this.f21222d = -1;
            AppLovinVideoViewV2.this.f21223e = -1;
            if (AppLovinVideoViewV2.this.f21234p == null || AppLovinVideoViewV2.this.f21234p.onError(AppLovinVideoViewV2.this.f21225g, i, i2)) {
            }
            return true;
        }
    }

    /* renamed from: com.applovin.impl.adview.AppLovinVideoViewV2$g */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2$g.class */
    public class C6925g implements MediaPlayer.OnBufferingUpdateListener {
        public C6925g() {
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
            C2374t tVar = AppLovinVideoViewV2.this.f21219a;
            tVar.m30044b("AppLovinVideoView", "Buffered: " + i + "%");
            AppLovinVideoViewV2.this.f21233o = i;
        }
    }

    /* renamed from: com.applovin.impl.adview.AppLovinVideoViewV2$h */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AppLovinVideoViewV2$h.class */
    public class C6926h implements MediaPlayer.OnSeekCompleteListener {
        public C6926h() {
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            AppLovinVideoViewV2.this.f21219a.m30044b("AppLovinVideoView", "Seek finished");
        }
    }

    public AppLovinVideoViewV2(AbstractC7036g.EnumC7040d dVar, Context context, C2341l lVar) {
        super(context);
        this.f21222d = 0;
        this.f21223e = 0;
        this.f21220b = dVar;
        this.f21219a = lVar.m30262d0();
        this.f21240v = (AudioManager) context.getSystemService("audio");
        getHolder().addCallback(new SurfaceHolder$CallbackC6919a());
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.f21222d = 0;
        this.f21223e = 0;
    }

    /* renamed from: a */
    public final void m19365a() {
        this.f21219a.m30044b("AppLovinVideoView", "Opening video");
        if (this.f21221c != null && this.f21224f != null) {
            if (this.f21225g != null) {
                this.f21219a.m30044b("AppLovinVideoView", "Using existing MediaPlayer");
                this.f21225g.start();
                return;
            }
            try {
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.f21225g = mediaPlayer;
                if (this.f21226h != 0) {
                    mediaPlayer.setAudioSessionId(this.f21226h);
                } else {
                    this.f21226h = mediaPlayer.getAudioSessionId();
                }
                this.f21225g.setOnPreparedListener(this.f21243y);
                this.f21225g.setOnVideoSizeChangedListener(this.f21242x);
                this.f21225g.setOnCompletionListener(this.f21244z);
                this.f21225g.setOnErrorListener(this.f21216B);
                this.f21225g.setOnInfoListener(this.f21215A);
                this.f21225g.setOnBufferingUpdateListener(this.f21217C);
                this.f21225g.setOnSeekCompleteListener(this.f21218D);
                this.f21233o = 0;
                this.f21225g.setDataSource(getContext(), this.f21221c, (Map<String, String>) null);
                this.f21225g.setDisplay(this.f21224f);
                this.f21225g.setScreenOnWhilePlaying(true);
                this.f21225g.prepareAsync();
                this.f21222d = 1;
            } catch (Throwable th) {
                C2374t.m30041c("AppLovinVideoView", "Unable to open video: " + this.f21221c, th);
                this.f21222d = -1;
                this.f21223e = -1;
                this.f21216B.onError(this.f21225g, 1, 0);
            }
        }
    }

    /* renamed from: b */
    public final boolean m19360b() {
        int i;
        boolean z = true;
        if (this.f21225g == null || (i = this.f21222d) == -1 || i == 0 || i == 1) {
            z = false;
        }
        return z;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return this.f21237s;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.f21238t;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.f21239u;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        if (this.f21226h == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f21226h = mediaPlayer.getAudioSessionId();
            mediaPlayer.release();
        }
        return this.f21226h;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        return this.f21225g != null ? this.f21233o : 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        return m19360b() ? this.f21225g.getCurrentPosition() : 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        return m19360b() ? this.f21225g.getDuration() : -1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return m19360b() && this.f21225g.isPlaying();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        int defaultSize = SurfaceView.getDefaultSize(this.f21227i, i);
        int defaultSize2 = SurfaceView.getDefaultSize(this.f21228j, i2);
        int i3 = defaultSize;
        int i4 = defaultSize2;
        if (this.f21227i > 0) {
            i3 = defaultSize;
            i4 = defaultSize2;
            if (this.f21228j > 0) {
                i3 = View.MeasureSpec.getSize(i);
                int size = View.MeasureSpec.getSize(i2);
                boolean z = true;
                boolean z2 = this.f21227i * defaultSize2 < this.f21228j * defaultSize;
                if (this.f21227i * defaultSize2 <= this.f21228j * defaultSize) {
                    z = false;
                }
                AbstractC7036g.EnumC7040d dVar = this.f21220b;
                if (dVar == AbstractC7036g.EnumC7040d.RESIZE_ASPECT) {
                    if (z2) {
                        i3 = (this.f21227i * size) / this.f21228j;
                    } else if (z) {
                        i4 = (this.f21228j * i3) / this.f21227i;
                        i3 = i3;
                    }
                    i4 = size;
                } else {
                    i3 = defaultSize;
                    i4 = defaultSize2;
                    if (dVar == AbstractC7036g.EnumC7040d.RESIZE_ASPECT_FILL) {
                        if (z2) {
                            i4 = (int) (this.f21228j * (i3 / this.f21227i));
                            i3 = i3;
                        } else {
                            if (z) {
                                i3 = (int) (this.f21227i * (size / this.f21228j));
                            }
                            i4 = size;
                        }
                    }
                }
            }
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() {
        this.f21219a.m30044b("AppLovinVideoView", "Pausing video");
        if (m19360b() && this.f21225g.isPlaying()) {
            this.f21225g.pause();
        }
        this.f21223e = 4;
    }

    public void resume() {
        this.f21219a.m30044b("AppLovinVideoView", "Resuming video");
        m19365a();
    }

    public void seekAndStart(long j) {
        C2374t tVar = this.f21219a;
        tVar.m30044b("AppLovinVideoView", "Seeking and starting to " + j + "ms...");
        MediaPlayer mediaPlayer = this.f21225g;
        if (mediaPlayer != null) {
            mediaPlayer.seekTo((int) j);
        } else {
            this.f21219a.m30039e("AppLovinVideoView", "Media player unavailable");
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) {
        C2374t tVar = this.f21219a;
        tVar.m30044b("AppLovinVideoView", "Seeking to " + i + "ms");
        if (m19360b()) {
            this.f21225g.seekTo(i);
            i = 0;
        } else {
            this.f21219a.m30044b("AppLovinVideoView", "Seek delayed");
        }
        this.f21236r = i;
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.f21231m = onCompletionListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.f21234p = onErrorListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.f21235q = onInfoListener;
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f21232n = onPreparedListener;
    }

    public void setVideoURI(Uri uri) {
        C2374t tVar = this.f21219a;
        tVar.m30044b("AppLovinVideoView", "Setting video uri: " + uri);
        this.f21221c = uri;
        this.f21236r = 0;
        m19365a();
        requestLayout();
        invalidate();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() {
        this.f21219a.m30044b("AppLovinVideoView", "Starting video");
        if (m19360b()) {
            this.f21225g.start();
        }
        this.f21223e = 3;
    }

    public void stopPlayback() {
        this.f21219a.m30044b("AppLovinVideoView", "Stopping playback");
        MediaPlayer mediaPlayer = this.f21225g;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f21225g.release();
            this.f21225g = null;
            this.f21222d = 0;
            this.f21223e = 0;
            this.f21240v.abandonAudioFocus(null);
        }
    }
}
