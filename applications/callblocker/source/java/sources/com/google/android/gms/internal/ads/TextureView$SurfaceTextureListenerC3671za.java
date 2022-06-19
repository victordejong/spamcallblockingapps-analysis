package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.C2341q;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
@TargetApi(14)
/* renamed from: com.google.android.gms.internal.ads.za */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/za.class */
public final class TextureView$SurfaceTextureListenerC3671za extends AbstractC3685zo implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {

    /* renamed from: c */
    private static final Map<Integer, String> f17664c = new HashMap();

    /* renamed from: d */
    private final aah f17665d;

    /* renamed from: e */
    private final boolean f17666e;

    /* renamed from: f */
    private int f17667f = 0;

    /* renamed from: g */
    private int f17668g = 0;

    /* renamed from: h */
    private MediaPlayer f17669h;

    /* renamed from: i */
    private Uri f17670i;

    /* renamed from: j */
    private int f17671j;

    /* renamed from: k */
    private int f17672k;

    /* renamed from: l */
    private int f17673l;

    /* renamed from: m */
    private int f17674m;

    /* renamed from: n */
    private int f17675n;

    /* renamed from: o */
    private aab f17676o;

    /* renamed from: p */
    private boolean f17677p;

    /* renamed from: q */
    private int f17678q;

    /* renamed from: r */
    private AbstractC3682zl f17679r;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            f17664c.put(-1004, "MEDIA_ERROR_IO");
            f17664c.put(-1007, "MEDIA_ERROR_MALFORMED");
            f17664c.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            f17664c.put(-110, "MEDIA_ERROR_TIMED_OUT");
            f17664c.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        f17664c.put(100, "MEDIA_ERROR_SERVER_DIED");
        f17664c.put(1, "MEDIA_ERROR_UNKNOWN");
        f17664c.put(1, "MEDIA_INFO_UNKNOWN");
        f17664c.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        f17664c.put(701, "MEDIA_INFO_BUFFERING_START");
        f17664c.put(702, "MEDIA_INFO_BUFFERING_END");
        f17664c.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        f17664c.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        f17664c.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            f17664c.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            f17664c.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public TextureView$SurfaceTextureListenerC3671za(Context context, boolean z, boolean z2, aae aaeVar, aah aahVar) {
        super(context);
        setSurfaceTextureListener(this);
        this.f17665d = aahVar;
        this.f17677p = z;
        this.f17666e = z2;
        this.f17665d.m13736a(this);
    }

    /* renamed from: a */
    private final void m6716a(float f) {
        if (this.f17669h == null) {
            C3556uu.m6745e("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
            return;
        }
        try {
            this.f17669h.setVolume(f, f);
        } catch (IllegalStateException e) {
        }
    }

    /* renamed from: a */
    private final void m6714a(boolean z) {
        C3556uu.m7052a("AdMediaPlayerView release");
        if (this.f17676o != null) {
            this.f17676o.m13756a();
            this.f17676o = null;
        }
        if (this.f17669h != null) {
            this.f17669h.reset();
            this.f17669h.release();
            this.f17669h = null;
            m6709h(0);
            if (!z) {
                return;
            }
            this.f17668g = 0;
            this.f17668g = 0;
        }
    }

    /* renamed from: f */
    private final void m6712f() {
        C3556uu.m7052a("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f17670i == null || surfaceTexture == null) {
            return;
        }
        m6714a(false);
        try {
            C2341q.m14728s();
            this.f17669h = new MediaPlayer();
            this.f17669h.setOnBufferingUpdateListener(this);
            this.f17669h.setOnCompletionListener(this);
            this.f17669h.setOnErrorListener(this);
            this.f17669h.setOnInfoListener(this);
            this.f17669h.setOnPreparedListener(this);
            this.f17669h.setOnVideoSizeChangedListener(this);
            this.f17673l = 0;
            if (this.f17677p) {
                this.f17676o = new aab(getContext());
                this.f17676o.m13752a(surfaceTexture, getWidth(), getHeight());
                this.f17676o.start();
                SurfaceTexture m13748b = this.f17676o.m13748b();
                if (m13748b != null) {
                    surfaceTexture = m13748b;
                    this.f17669h.setDataSource(getContext(), this.f17670i);
                    C2341q.m14727t();
                    this.f17669h.setSurface(new Surface(surfaceTexture));
                    this.f17669h.setAudioStreamType(3);
                    this.f17669h.setScreenOnWhilePlaying(true);
                    this.f17669h.prepareAsync();
                    m6709h(1);
                }
                this.f17676o.m13756a();
                this.f17676o = null;
            }
            this.f17669h.setDataSource(getContext(), this.f17670i);
            C2341q.m14727t();
            this.f17669h.setSurface(new Surface(surfaceTexture));
            this.f17669h.setAudioStreamType(3);
            this.f17669h.setScreenOnWhilePlaying(true);
            this.f17669h.prepareAsync();
            m6709h(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String valueOf = String.valueOf(this.f17670i);
            C3556uu.m6746d(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Failed to initialize MediaPlayer at ").append(valueOf).toString(), e);
            onError(this.f17669h, 1, 0);
        }
    }

    /* renamed from: g */
    private final void m6711g() {
        if (this.f17666e && m6710h() && this.f17669h.getCurrentPosition() > 0 && this.f17668g != 3) {
            C3556uu.m7052a("AdMediaPlayerView nudging MediaPlayer");
            m6716a(0.0f);
            this.f17669h.start();
            int currentPosition = this.f17669h.getCurrentPosition();
            long mo13862a = C2341q.m14737j().mo13862a();
            while (m6710h() && this.f17669h.getCurrentPosition() == currentPosition && C2341q.m14737j().mo13862a() - mo13862a <= 250) {
            }
            this.f17669h.pause();
            mo6692e();
        }
    }

    /* renamed from: h */
    private final void m6709h(int i) {
        if (i == 3) {
            this.f17665d.m13733c();
            this.f17696b.m13728b();
        } else if (this.f17667f == 3) {
            this.f17665d.m13732d();
            this.f17696b.m13727c();
        }
        this.f17667f = i;
    }

    /* renamed from: h */
    private final boolean m6710h() {
        boolean z = true;
        if (this.f17669h == null || this.f17667f == -1 || this.f17667f == 0 || this.f17667f == 1) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final String mo6702a() {
        String valueOf = String.valueOf(this.f17677p ? " spherical" : "");
        return valueOf.length() != 0 ? "MediaPlayer".concat(valueOf) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final void mo6701a(float f, float f2) {
        if (this.f17676o != null) {
            this.f17676o.m13755a(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final void mo6700a(int i) {
        C3556uu.m7052a(new StringBuilder(34).append("AdMediaPlayerView seek ").append(i).toString());
        if (!m6710h()) {
            this.f17678q = i;
            return;
        }
        this.f17669h.seekTo(i);
        this.f17678q = 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: a */
    public final void mo6699a(AbstractC3682zl abstractC3682zl) {
        this.f17679r = abstractC3682zl;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: b */
    public final void mo6697b() {
        C3556uu.m7052a("AdMediaPlayerView stop");
        if (this.f17669h != null) {
            this.f17669h.stop();
            this.f17669h.release();
            this.f17669h = null;
            m6709h(0);
            this.f17668g = 0;
        }
        this.f17665d.m13735b();
    }

    /* renamed from: b */
    public final /* synthetic */ void m6713b(int i) {
        if (this.f17679r != null) {
            this.f17679r.onWindowVisibilityChanged(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: c */
    public final void mo6696c() {
        C3556uu.m7052a("AdMediaPlayerView play");
        if (m6710h()) {
            this.f17669h.start();
            m6709h(3);
            this.f17695a.m6646a();
            C3567ve.f17498a.post(new RunnableC3680zj(this));
        }
        this.f17668g = 3;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    /* renamed from: d */
    public final void mo6694d() {
        C3556uu.m7052a("AdMediaPlayerView pause");
        if (m6710h() && this.f17669h.isPlaying()) {
            this.f17669h.pause();
            m6709h(4);
            C3567ve.f17498a.post(new RunnableC3683zm(this));
        }
        this.f17668g = 4;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo, com.google.android.gms.internal.ads.aai
    /* renamed from: e */
    public final void mo6692e() {
        m6716a(this.f17696b.m13731a());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final int getCurrentPosition() {
        return m6710h() ? this.f17669h.getCurrentPosition() : 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final int getDuration() {
        return m6710h() ? this.f17669h.getDuration() : -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final int getVideoHeight() {
        return this.f17669h != null ? this.f17669h.getVideoHeight() : 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final int getVideoWidth() {
        return this.f17669h != null ? this.f17669h.getVideoWidth() : 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.f17673l = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        C3556uu.m7052a("AdMediaPlayerView completion");
        m6709h(5);
        this.f17668g = 5;
        C3567ve.f17498a.post(new RunnableC3677zg(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = f17664c.get(Integer.valueOf(i));
        String str2 = f17664c.get(Integer.valueOf(i2));
        C3556uu.m6745e(new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length()).append("AdMediaPlayerView MediaPlayer error: ").append(str).append(":").append(str2).toString());
        m6709h(-1);
        this.f17668g = -1;
        C3567ve.f17498a.post(new RunnableC3675ze(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = f17664c.get(Integer.valueOf(i));
        String str2 = f17664c.get(Integer.valueOf(i2));
        C3556uu.m7052a(new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length()).append("AdMediaPlayerView MediaPlayer info: ").append(str).append(":").append(str2).toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x011b, code lost:
        if (r0 <= r6) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.TextureView$SurfaceTextureListenerC3671za.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        C3556uu.m7052a("AdMediaPlayerView prepared");
        m6709h(2);
        this.f17665d.m13737a();
        C3567ve.f17498a.post(new RunnableC3673zc(this));
        this.f17671j = mediaPlayer.getVideoWidth();
        this.f17672k = mediaPlayer.getVideoHeight();
        if (this.f17678q != 0) {
            mo6700a(this.f17678q);
        }
        m6711g();
        int i = this.f17671j;
        C3556uu.m6747d(new StringBuilder(62).append("AdMediaPlayerView stream dimensions: ").append(i).append(" x ").append(this.f17672k).toString());
        if (this.f17668g == 3) {
            mo6696c();
        }
        mo6692e();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        C3556uu.m7052a("AdMediaPlayerView surface created");
        m6712f();
        C3567ve.f17498a.post(new RunnableC3679zi(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        C3556uu.m7052a("AdMediaPlayerView surface destroyed");
        if (this.f17669h != null && this.f17678q == 0) {
            this.f17678q = this.f17669h.getCurrentPosition();
        }
        if (this.f17676o != null) {
            this.f17676o.m13756a();
        }
        C3567ve.f17498a.post(new RunnableC3681zk(this));
        m6714a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        boolean z = true;
        C3556uu.m7052a("AdMediaPlayerView surface changed");
        boolean z2 = this.f17668g == 3;
        if (this.f17671j != i || this.f17672k != i2) {
            z = false;
        }
        if (this.f17669h != null && z2 && z) {
            if (this.f17678q != 0) {
                mo6700a(this.f17678q);
            }
            mo6696c();
        }
        if (this.f17676o != null) {
            this.f17676o.m13754a(i, i2);
        }
        C3567ve.f17498a.post(new RunnableC3678zh(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f17665d.m13734b(this);
        this.f17695a.m6645a(surfaceTexture, this.f17679r);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        C3556uu.m7052a(new StringBuilder(57).append("AdMediaPlayerView size changed: ").append(i).append(" x ").append(i2).toString());
        this.f17671j = mediaPlayer.getVideoWidth();
        this.f17672k = mediaPlayer.getVideoHeight();
        if (this.f17671j == 0 || this.f17672k == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        C3556uu.m7052a(new StringBuilder(58).append("AdMediaPlayerView window visibility changed to ").append(i).toString());
        C3567ve.f17498a.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.zd

            /* renamed from: a */
            private final TextureView$SurfaceTextureListenerC3671za f17682a;

            /* renamed from: b */
            private final int f17683b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17682a = this;
                this.f17683b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17682a.m6713b(this.f17683b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3685zo
    public final void setVideoPath(String str) {
        Uri parse = Uri.parse(str);
        dvu m8486a = dvu.m8486a(parse);
        if (m8486a == null || m8486a.f15856a != null) {
            if (m8486a != null) {
                parse = Uri.parse(m8486a.f15856a);
            }
            this.f17670i = parse;
            this.f17678q = 0;
            m6712f();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public final String toString() {
        String name = getClass().getName();
        String hexString = Integer.toHexString(hashCode());
        return new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length()).append(name).append("@").append(hexString).toString();
    }
}
