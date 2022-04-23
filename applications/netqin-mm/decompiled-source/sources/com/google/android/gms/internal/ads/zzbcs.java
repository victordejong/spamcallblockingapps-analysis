package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbcs;
import com.google.logging.type.LogSeverity;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3345a7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3424c7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3461d7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3498e7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3535f7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3572g7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3609h7;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3647i7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcs.class */
public final class zzbcs extends zzbdf implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {

    /* renamed from: q */
    public static final Map<Integer, String> f24774q = new HashMap();

    /* renamed from: c */
    public final zzbdx f24775c;

    /* renamed from: d */
    public final boolean f24776d;

    /* renamed from: e */
    public int f24777e = 0;

    /* renamed from: f */
    public int f24778f = 0;

    /* renamed from: g */
    public MediaPlayer f24779g;

    /* renamed from: h */
    public Uri f24780h;

    /* renamed from: i */
    public int f24781i;

    /* renamed from: j */
    public int f24782j;

    /* renamed from: k */
    public int f24783k;

    /* renamed from: l */
    public int f24784l;

    /* renamed from: m */
    public zzbds f24785m;

    /* renamed from: n */
    public boolean f24786n;

    /* renamed from: o */
    public int f24787o;

    /* renamed from: p */
    public zzbdc f24788p;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            f24774q.put(-1004, "MEDIA_ERROR_IO");
            f24774q.put(-1007, "MEDIA_ERROR_MALFORMED");
            f24774q.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            f24774q.put(-110, "MEDIA_ERROR_TIMED_OUT");
            f24774q.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        f24774q.put(100, "MEDIA_ERROR_SERVER_DIED");
        f24774q.put(1, "MEDIA_ERROR_UNKNOWN");
        f24774q.put(1, "MEDIA_INFO_UNKNOWN");
        f24774q.put(Integer.valueOf((int) LogSeverity.ALERT_VALUE), "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        f24774q.put(701, "MEDIA_INFO_BUFFERING_START");
        f24774q.put(702, "MEDIA_INFO_BUFFERING_END");
        f24774q.put(Integer.valueOf((int) LogSeverity.EMERGENCY_VALUE), "MEDIA_INFO_BAD_INTERLEAVING");
        f24774q.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        f24774q.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            f24774q.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            f24774q.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzbcs(Context context, boolean z, boolean z2, zzbdv zzbdvVar, zzbdx zzbdxVar) {
        super(context);
        setSurfaceTextureListener(this);
        this.f24775c = zzbdxVar;
        this.f24786n = z;
        this.f24776d = z2;
        zzbdxVar.m15748a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf, p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4057t7
    /* renamed from: a */
    public final void mo15737a() {
        m15822a(this.f24791b.m15743a());
    }

    /* renamed from: a */
    public final void m15822a(float f) {
        MediaPlayer mediaPlayer = this.f24779g;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException e) {
            }
        } else {
            zzbbq.m15852d("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: a */
    public final void mo15736a(float f, float f2) {
        zzbds zzbdsVar = this.f24785m;
        if (zzbdsVar != null) {
            zzbdsVar.m15764a(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: a */
    public final void mo15732a(zzbdc zzbdcVar) {
        this.f24788p = zzbdcVar;
    }

    /* renamed from: a */
    public final void m15820a(boolean z) {
        zzayp.m16153g("AdMediaPlayerView release");
        zzbds zzbdsVar = this.f24785m;
        if (zzbdsVar != null) {
            zzbdsVar.m15757b();
            this.f24785m = null;
        }
        MediaPlayer mediaPlayer = this.f24779g;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f24779g.release();
            this.f24779g = null;
            m15816h(0);
            if (z) {
                this.f24778f = 0;
                this.f24778f = 0;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: b */
    public final void mo15729b() {
        zzayp.m16153g("AdMediaPlayerView pause");
        if (m15817h() && this.f24779g.isPlaying()) {
            this.f24779g.pause();
            m15816h(4);
            zzayu.f24665h.post(new RunnableC3647i7(this));
        }
        this.f24778f = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: b */
    public final void mo15728b(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzayp.m16153g(sb.toString());
        if (m15817h()) {
            this.f24779g.seekTo(i);
            this.f24787o = 0;
            return;
        }
        this.f24787o = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: c */
    public final void mo15726c() {
        zzayp.m16153g("AdMediaPlayerView play");
        if (m15817h()) {
            this.f24779g.start();
            m15816h(3);
            this.f24790a.m15767a();
            zzayu.f24665h.post(new RunnableC3572g7(this));
        }
        this.f24778f = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: d */
    public final void mo15723d() {
        zzayp.m16153g("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f24779g;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f24779g.release();
            this.f24779g = null;
            m15816h(0);
            this.f24778f = 0;
        }
        this.f24775c.m15749a();
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    /* renamed from: e */
    public final String mo15721e() {
        String str = this.f24786n ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    /* renamed from: f */
    public final void m15819f() {
        zzayp.m16153g("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f24780h != null && surfaceTexture != null) {
            m15820a(false);
            try {
                zzp.m17953s();
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.f24779g = mediaPlayer;
                mediaPlayer.setOnBufferingUpdateListener(this);
                this.f24779g.setOnCompletionListener(this);
                this.f24779g.setOnErrorListener(this);
                this.f24779g.setOnInfoListener(this);
                this.f24779g.setOnPreparedListener(this);
                this.f24779g.setOnVideoSizeChangedListener(this);
                SurfaceTexture surfaceTexture2 = surfaceTexture;
                if (this.f24786n) {
                    zzbds zzbdsVar = new zzbds(getContext());
                    this.f24785m = zzbdsVar;
                    zzbdsVar.m15761a(surfaceTexture, getWidth(), getHeight());
                    this.f24785m.start();
                    surfaceTexture2 = this.f24785m.m15755c();
                    if (surfaceTexture2 == null) {
                        this.f24785m.m15757b();
                        this.f24785m = null;
                        surfaceTexture2 = surfaceTexture;
                    }
                }
                this.f24779g.setDataSource(getContext(), this.f24780h);
                zzp.m17952t();
                this.f24779g.setSurface(new Surface(surfaceTexture2));
                this.f24779g.setAudioStreamType(3);
                this.f24779g.setScreenOnWhilePlaying(true);
                this.f24779g.prepareAsync();
                m15816h(1);
            } catch (IOException | IllegalArgumentException | IllegalStateException e) {
                String valueOf = String.valueOf(this.f24780h);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
                sb.append("Failed to initialize MediaPlayer at ");
                sb.append(valueOf);
                zzbbq.m15853c(sb.toString(), e);
                onError(this.f24779g, 1, 0);
            }
        }
    }

    /* renamed from: g */
    public final void m15818g() {
        if (this.f24776d && m15817h() && this.f24779g.getCurrentPosition() > 0 && this.f24778f != 3) {
            zzayp.m16153g("AdMediaPlayerView nudging MediaPlayer");
            m15822a(0.0f);
            this.f24779g.start();
            int currentPosition = this.f24779g.getCurrentPosition();
            long b = zzp.m17962j().mo17091b();
            while (m15817h() && this.f24779g.getCurrentPosition() == currentPosition && zzp.m17962j().mo17091b() - b <= 250) {
            }
            this.f24779g.pause();
            mo15737a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int getCurrentPosition() {
        if (m15817h()) {
            return this.f24779g.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int getDuration() {
        if (m15817h()) {
            return this.f24779g.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int getVideoHeight() {
        MediaPlayer mediaPlayer = this.f24779g;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final int getVideoWidth() {
        MediaPlayer mediaPlayer = this.f24779g;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    /* renamed from: h */
    public final void m15816h(int i) {
        if (i == 3) {
            this.f24775c.m15747b();
            this.f24791b.m15740b();
        } else if (this.f24777e == 3) {
            this.f24775c.m15745c();
            this.f24791b.m15739c();
        }
        this.f24777e = i;
    }

    /* renamed from: h */
    public final boolean m15817h() {
        int i;
        return (this.f24779g == null || (i = this.f24777e) == -1 || i == 0 || i == 1) ? false : true;
    }

    /* renamed from: i */
    public final /* synthetic */ void m15815i(int i) {
        zzbdc zzbdcVar = this.f24788p;
        if (zzbdcVar != null) {
            zzbdcVar.onWindowVisibilityChanged(i);
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzayp.m16153g("AdMediaPlayerView completion");
        m15816h(5);
        this.f24778f = 5;
        zzayu.f24665h.post(new RunnableC3461d7(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = f24774q.get(Integer.valueOf(i));
        String str2 = f24774q.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzbbq.m15852d(sb.toString());
        m15816h(-1);
        this.f24778f = -1;
        zzayu.f24665h.post(new RunnableC3424c7(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = f24774q.get(Integer.valueOf(i));
        String str2 = f24774q.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzayp.m16153g(sb.toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ba, code lost:
        if (r10 > r0) goto L_0x00ea;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcs.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        zzayp.m16153g("AdMediaPlayerView prepared");
        m15816h(2);
        this.f24775c.m15744d();
        zzayu.f24665h.post(new RunnableC3345a7(this));
        this.f24781i = mediaPlayer.getVideoWidth();
        this.f24782j = mediaPlayer.getVideoHeight();
        int i = this.f24787o;
        if (i != 0) {
            mo15728b(i);
        }
        m15818g();
        int i2 = this.f24781i;
        int i3 = this.f24782j;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzbbq.m15854c(sb.toString());
        if (this.f24778f == 3) {
            mo15726c();
        }
        mo15737a();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzayp.m16153g("AdMediaPlayerView surface created");
        m15819f();
        zzayu.f24665h.post(new RunnableC3535f7(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzayp.m16153g("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f24779g;
        if (mediaPlayer != null && this.f24787o == 0) {
            this.f24787o = mediaPlayer.getCurrentPosition();
        }
        zzbds zzbdsVar = this.f24785m;
        if (zzbdsVar != null) {
            zzbdsVar.m15757b();
        }
        zzayu.f24665h.post(new RunnableC3609h7(this));
        m15820a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzayp.m16153g("AdMediaPlayerView surface changed");
        boolean z = true;
        boolean z2 = this.f24778f == 3;
        if (!(this.f24781i == i && this.f24782j == i2)) {
            z = false;
        }
        if (this.f24779g != null && z2 && z) {
            int i3 = this.f24787o;
            if (i3 != 0) {
                mo15728b(i3);
            }
            mo15726c();
        }
        zzbds zzbdsVar = this.f24785m;
        if (zzbdsVar != null) {
            zzbdsVar.m15763a(i, i2);
        }
        zzayu.f24665h.post(new RunnableC3498e7(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f24775c.m15746b(this);
        this.f24790a.m15766a(surfaceTexture, this.f24788p);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzayp.m16153g(sb.toString());
        this.f24781i = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.f24782j = videoHeight;
        if (this.f24781i != 0 && videoHeight != 0) {
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zzayp.m16153g(sb.toString());
        zzayu.f24665h.post(new Runnable(this, i) { // from class: c.d.b.d.g.a.b7

            /* renamed from: a */
            public final zzbcs f12341a;

            /* renamed from: b */
            public final int f12342b;

            {
                this.f12341a = this;
                this.f12342b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12341a.m15815i(this.f12342b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbdf
    public final void setVideoPath(String str) {
        Uri parse = Uri.parse(str);
        zzte a = zzte.m11439a(parse);
        if (a == null || a.f28969a != null) {
            if (a != null) {
                parse = Uri.parse(a.f28969a);
            }
            this.f24780h = parse;
            this.f24787o = 0;
            m15819f();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzbcs.class.getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
    }
}
