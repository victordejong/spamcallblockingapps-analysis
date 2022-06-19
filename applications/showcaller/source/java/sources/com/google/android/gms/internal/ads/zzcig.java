package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
@TargetApi(14)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcig.class */
public final class zzcig extends zzcii implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: f */
    private static final Map<Integer, String> f33859f;

    /* renamed from: g */
    private final kk0 f33860g;

    /* renamed from: h */
    private final lk0 f33861h;

    /* renamed from: i */
    private final boolean f33862i;

    /* renamed from: l */
    private MediaPlayer f33865l;

    /* renamed from: m */
    private Uri f33866m;

    /* renamed from: n */
    private int f33867n;

    /* renamed from: o */
    private int f33868o;

    /* renamed from: p */
    private int f33869p;

    /* renamed from: q */
    private int f33870q;

    /* renamed from: r */
    private int f33871r;

    /* renamed from: s */
    private hk0 f33872s;

    /* renamed from: t */
    private final boolean f33873t;

    /* renamed from: u */
    private int f33874u;

    /* renamed from: v */
    private rj0 f33875v;

    /* renamed from: j */
    private int f33863j = 0;

    /* renamed from: k */
    private int f33864k = 0;

    /* renamed from: w */
    private boolean f33876w = false;

    /* renamed from: x */
    private Integer f33877x = null;

    static {
        HashMap hashMap = new HashMap();
        f33859f = hashMap;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            hashMap.put(-1004, "MEDIA_ERROR_IO");
            hashMap.put(-1007, "MEDIA_ERROR_MALFORMED");
            hashMap.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            hashMap.put(-110, "MEDIA_ERROR_TIMED_OUT");
            hashMap.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        hashMap.put(100, "MEDIA_ERROR_SERVER_DIED");
        hashMap.put(1, "MEDIA_ERROR_UNKNOWN");
        hashMap.put(1, "MEDIA_INFO_UNKNOWN");
        hashMap.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        hashMap.put(701, "MEDIA_INFO_BUFFERING_START");
        hashMap.put(702, "MEDIA_INFO_BUFFERING_END");
        hashMap.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        hashMap.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        hashMap.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (i >= 19) {
            hashMap.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            hashMap.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzcig(Context context, kk0 kk0Var, boolean z, boolean z2, jk0 jk0Var, lk0 lk0Var) {
        super(context);
        setSurfaceTextureListener(this);
        this.f33860g = kk0Var;
        this.f33861h = lk0Var;
        this.f33873t = z;
        this.f33862i = z2;
        lk0Var.m13494a(this);
    }

    /* renamed from: C */
    private final void m8065C() {
        if (this.f33862i && m8063E() && this.f33865l.getCurrentPosition() > 0 && this.f33864k != 3) {
            C5722o1.m17990k("AdMediaPlayerView nudging MediaPlayer");
            m8062F(0.0f);
            this.f33865l.start();
            int currentPosition = this.f33865l.getCurrentPosition();
            long mo16807a = C5667s.m18153k().mo16807a();
            while (m8063E() && this.f33865l.getCurrentPosition() == currentPosition && C5667s.m18153k().mo16807a() - mo16807a <= 250) {
            }
            this.f33865l.pause();
            zzt();
        }
    }

    /* renamed from: D */
    private final void m8064D(boolean z) {
        C5722o1.m17990k("AdMediaPlayerView release");
        hk0 hk0Var = this.f33872s;
        if (hk0Var != null) {
            hk0Var.m14609c();
            this.f33872s = null;
        }
        MediaPlayer mediaPlayer = this.f33865l;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f33865l.release();
            this.f33865l = null;
            m8061G(0);
            if (!z) {
                return;
            }
            this.f33864k = 0;
        }
    }

    /* renamed from: E */
    private final boolean m8063E() {
        int i;
        return (this.f33865l == null || (i = this.f33863j) == -1 || i == 0 || i == 1) ? false : true;
    }

    /* renamed from: F */
    private final void m8062F(float f) {
        MediaPlayer mediaPlayer = this.f33865l;
        if (mediaPlayer == null) {
            ei0.m15464f("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
            return;
        }
        try {
            mediaPlayer.setVolume(f, f);
        } catch (IllegalStateException e) {
        }
    }

    /* renamed from: G */
    private final void m8061G(int i) {
        if (i == 3) {
            this.f33861h.m13490e();
            this.f33879e.m12639d();
        } else if (this.f33863j == 3) {
            this.f33861h.m13489f();
            this.f33879e.m12638e();
        }
        this.f33863j = i;
    }

    /* renamed from: K */
    public static /* synthetic */ void m8057K(zzcig zzcigVar, MediaPlayer mediaPlayer) {
        MediaPlayer.TrackInfo[] trackInfo;
        MediaFormat format;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue() || zzcigVar.f33860g == null || mediaPlayer == null || Build.VERSION.SDK_INT < 19 || (trackInfo = mediaPlayer.getTrackInfo()) == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
            if (trackInfo2 != null) {
                int trackType = trackInfo2.getTrackType();
                if (trackType == 1) {
                    MediaFormat format2 = trackInfo2.getFormat();
                    if (format2 != null) {
                        if (format2.containsKey("frame-rate")) {
                            try {
                                hashMap.put("frameRate", String.valueOf(format2.getFloat("frame-rate")));
                            } catch (ClassCastException e) {
                                hashMap.put("frameRate", String.valueOf(format2.getInteger("frame-rate")));
                            }
                        }
                        if (format2.containsKey("bitrate")) {
                            Integer valueOf = Integer.valueOf(format2.getInteger("bitrate"));
                            zzcigVar.f33877x = valueOf;
                            hashMap.put("bitRate", String.valueOf(valueOf));
                        }
                        if (format2.containsKey("width") && format2.containsKey("height")) {
                            int integer = format2.getInteger("width");
                            int integer2 = format2.getInteger("height");
                            StringBuilder sb = new StringBuilder(23);
                            sb.append(integer);
                            sb.append("x");
                            sb.append(integer2);
                            hashMap.put("resolution", sb.toString());
                        }
                        if (format2.containsKey("mime")) {
                            hashMap.put("videoMime", format2.getString("mime"));
                        }
                        if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                            hashMap.put("videoCodec", format2.getString("codecs-string"));
                        }
                    }
                } else if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                    if (format.containsKey("mime")) {
                        hashMap.put("audioMime", format.getString("mime"));
                    }
                    if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                        hashMap.put("audioCodec", format.getString("codecs-string"));
                    }
                }
            }
        }
        if (hashMap.isEmpty()) {
            return;
        }
        zzcigVar.f33860g.mo7959D0("onMetadataEvent", hashMap);
    }

    /* renamed from: t */
    private final void m8055t() {
        C5722o1.m17990k("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f33866m == null || surfaceTexture == null) {
            return;
        }
        m8064D(false);
        try {
            C5667s.m18144t();
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f33865l = mediaPlayer;
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.f33865l.setOnCompletionListener(this);
            this.f33865l.setOnErrorListener(this);
            this.f33865l.setOnInfoListener(this);
            this.f33865l.setOnPreparedListener(this);
            this.f33865l.setOnVideoSizeChangedListener(this);
            this.f33869p = 0;
            SurfaceTexture surfaceTexture2 = surfaceTexture;
            if (this.f33873t) {
                hk0 hk0Var = new hk0(getContext());
                this.f33872s = hk0Var;
                hk0Var.m14611a(surfaceTexture, getWidth(), getHeight());
                this.f33872s.start();
                surfaceTexture2 = this.f33872s.m14608d();
                if (surfaceTexture2 == null) {
                    this.f33872s.m14609c();
                    this.f33872s = null;
                    surfaceTexture2 = surfaceTexture;
                }
            }
            this.f33865l.setDataSource(getContext(), this.f33866m);
            C5667s.m18143u();
            this.f33865l.setSurface(new Surface(surfaceTexture2));
            this.f33865l.setAudioStreamType(3);
            this.f33865l.setScreenOnWhilePlaying(true);
            this.f33865l.prepareAsync();
            m8061G(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String valueOf = String.valueOf(this.f33866m);
            valueOf.length();
            ei0.m15463g("Failed to initialize MediaPlayer at ".concat(valueOf), e);
            onError(this.f33865l, 1, 0);
        }
    }

    /* renamed from: L */
    public final /* synthetic */ void m8056L(int i) {
        rj0 rj0Var = this.f33875v;
        if (rj0Var != null) {
            rj0Var.onWindowVisibilityChanged(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: h */
    public final String mo7985h() {
        String str = true != this.f33873t ? "" : " spherical";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: i */
    public final void mo7984i(rj0 rj0Var) {
        this.f33875v = rj0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: j */
    public final void mo7983j(String str) {
        Uri parse = Uri.parse(str);
        zzayn m8086k0 = zzayn.m8086k0(parse);
        if (m8086k0 == null || m8086k0.f33606d != null) {
            if (m8086k0 != null) {
                parse = Uri.parse(m8086k0.f33606d);
            }
            this.f33866m = parse;
            this.f33874u = 0;
            m8055t();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: k */
    public final void mo7982k() {
        C5722o1.m17990k("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f33865l;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f33865l.release();
            this.f33865l = null;
            m8061G(0);
            this.f33864k = 0;
        }
        this.f33861h.m13492c();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: l */
    public final void mo7981l() {
        C5722o1.m17990k("AdMediaPlayerView play");
        if (m8063E()) {
            this.f33865l.start();
            m8061G(3);
            this.f33878d.m15778a();
            C5679c2.f18451a.post(new pj0(this));
        }
        this.f33864k = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: m */
    public final void mo7980m() {
        C5722o1.m17990k("AdMediaPlayerView pause");
        if (m8063E() && this.f33865l.isPlaying()) {
            this.f33865l.pause();
            m8061G(4);
            C5679c2.f18451a.post(new qj0(this));
        }
        this.f33864k = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: n */
    public final int mo7979n() {
        if (m8063E()) {
            return this.f33865l.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: o */
    public final int mo7978o() {
        if (m8063E()) {
            return this.f33865l.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.f33869p = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        C5722o1.m17990k("AdMediaPlayerView completion");
        m8061G(5);
        this.f33864k = 5;
        C5679c2.f18451a.post(new jj0(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = f33859f;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        ei0.m15464f(sb.toString());
        m8061G(-1);
        this.f33864k = -1;
        C5679c2.f18451a.post(new lj0(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = f33859f;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        C5722o1.m17990k(sb.toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c4, code lost:
        if (r5 > r6) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
        if (r0 > r0) goto L33;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcig.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        C5722o1.m17990k("AdMediaPlayerView prepared");
        m8061G(2);
        this.f33861h.m13493b();
        C5679c2.f18451a.post(new ij0(this, mediaPlayer));
        this.f33867n = mediaPlayer.getVideoWidth();
        this.f33868o = mediaPlayer.getVideoHeight();
        int i = this.f33874u;
        if (i != 0) {
            mo7977p(i);
        }
        m8065C();
        int i2 = this.f33867n;
        int i3 = this.f33868o;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        ei0.m15465e(sb.toString());
        if (this.f33864k == 3) {
            mo7981l();
        }
        zzt();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        C5722o1.m17990k("AdMediaPlayerView surface created");
        m8055t();
        C5679c2.f18451a.post(new mj0(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        C5722o1.m17990k("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f33865l;
        if (mediaPlayer != null && this.f33874u == 0) {
            this.f33874u = mediaPlayer.getCurrentPosition();
        }
        hk0 hk0Var = this.f33872s;
        if (hk0Var != null) {
            hk0Var.m14609c();
        }
        C5679c2.f18451a.post(new oj0(this));
        m8064D(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        C5722o1.m17990k("AdMediaPlayerView surface changed");
        int i3 = this.f33864k;
        boolean z = false;
        if (this.f33867n == i) {
            z = false;
            if (this.f33868o == i2) {
                z = true;
            }
        }
        if (this.f33865l != null && i3 == 3 && z) {
            int i4 = this.f33874u;
            if (i4 != 0) {
                mo7977p(i4);
            }
            mo7981l();
        }
        hk0 hk0Var = this.f33872s;
        if (hk0Var != null) {
            hk0Var.m14610b(i, i2);
        }
        C5679c2.f18451a.post(new nj0(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f33861h.m13491d(this);
        this.f33878d.m15777b(surfaceTexture, this.f33875v);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        C5722o1.m17990k(sb.toString());
        this.f33867n = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.f33868o = videoHeight;
        if (this.f33867n == 0 || videoHeight == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        C5722o1.m17990k(sb.toString());
        C5679c2.f18451a.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.hj0

            /* renamed from: d */
            private final zzcig f23925d;

            /* renamed from: e */
            private final int f23926e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23925d = this;
                this.f23926e = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23925d.m8056L(this.f23926e);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: p */
    public final void mo7977p(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        C5722o1.m17990k(sb.toString());
        if (!m8063E()) {
            this.f33874u = i;
            return;
        }
        this.f33865l.seekTo(i);
        this.f33874u = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: q */
    public final void mo7976q(float f, float f2) {
        hk0 hk0Var = this.f33872s;
        if (hk0Var != null) {
            hk0Var.m14607e(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: r */
    public final int mo7975r() {
        MediaPlayer mediaPlayer = this.f33865l;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: s */
    public final int mo7974s() {
        MediaPlayer mediaPlayer = this.f33865l;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzcig.class.getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: u */
    public final long mo7972u() {
        if (this.f33877x != null) {
            return (mo7970w() * this.f33869p) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: v */
    public final long mo7971v() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: w */
    public final long mo7970w() {
        if (this.f33877x != null) {
            return mo7979n() * this.f33877x.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    /* renamed from: x */
    public final int mo7969x() {
        if (Build.VERSION.SDK_INT < 26 || !m8063E()) {
            return -1;
        }
        return this.f33865l.getMetrics().getInt("android.media.mediaplayer.dropped");
    }

    @Override // com.google.android.gms.internal.ads.zzcii, com.google.android.gms.internal.ads.nk0
    public final void zzt() {
        m8062F(this.f33879e.m12640c());
    }
}
