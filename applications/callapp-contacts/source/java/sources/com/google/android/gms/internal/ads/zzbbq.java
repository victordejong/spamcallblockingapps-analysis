package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbbq.class */
public final class zzbbq extends zzbbz implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {

    /* renamed from: d */
    private static final Map<Integer, String> f50151d;

    /* renamed from: a */
    aak f50152a;

    /* renamed from: e */
    private final abb f50153e;

    /* renamed from: f */
    private final aba f50154f;

    /* renamed from: g */
    private final boolean f50155g;

    /* renamed from: j */
    private MediaPlayer f50158j;

    /* renamed from: k */
    private Uri f50159k;

    /* renamed from: l */
    private int f50160l;

    /* renamed from: m */
    private int f50161m;

    /* renamed from: n */
    private int f50162n;

    /* renamed from: o */
    private int f50163o;

    /* renamed from: p */
    private int f50164p;

    /* renamed from: q */
    private aaz f50165q;

    /* renamed from: r */
    private boolean f50166r;

    /* renamed from: s */
    private int f50167s;

    /* renamed from: h */
    private int f50156h = 0;

    /* renamed from: i */
    private int f50157i = 0;

    /* renamed from: t */
    private Integer f50168t = null;

    static {
        HashMap hashMap = new HashMap();
        f50151d = hashMap;
        if (Build.VERSION.SDK_INT >= 17) {
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
        hashMap.put(Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_BURL_VALUE), "MEDIA_INFO_NOT_SEEKABLE");
        hashMap.put(Integer.valueOf((int) EventTypeExtended.EVENT_TYPE_EXTENDED_NURL_VALUE), "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            hashMap.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            hashMap.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public zzbbq(Context context, abb abbVar, boolean z, boolean z2, aay aayVar, aba abaVar) {
        super(context);
        setSurfaceTextureListener(this);
        this.f50153e = abbVar;
        this.f50154f = abaVar;
        this.f50166r = z;
        this.f50155g = z2;
        abaVar.m18922a(this);
    }

    /* renamed from: a */
    private final void m13881a(float f) {
        MediaPlayer mediaPlayer = this.f50158j;
        if (mediaPlayer == null) {
            zzd.zzez("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
            return;
        }
        try {
            mediaPlayer.setVolume(f, f);
        } catch (IllegalStateException e) {
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m13879a(zzbbq zzbbqVar, MediaPlayer mediaPlayer) {
        MediaPlayer.TrackInfo[] trackInfo;
        MediaFormat format;
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue() || zzbbqVar.f50153e == null || mediaPlayer == null || Build.VERSION.SDK_INT < 19 || (trackInfo = mediaPlayer.getTrackInfo()) == null) {
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
                            zzbbqVar.f50168t = valueOf;
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
        zzbbqVar.f50153e.mo13770a("onMetadataEvent", hashMap);
    }

    /* renamed from: a */
    private final void m13878a(boolean z) {
        zzd.zzed("AdMediaPlayerView release");
        aaz aazVar = this.f50165q;
        if (aazVar != null) {
            aazVar.m18930b();
            this.f50165q = null;
        }
        MediaPlayer mediaPlayer = this.f50158j;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f50158j.release();
            this.f50158j = null;
            m13877g(0);
            if (!z) {
                return;
            }
            this.f50157i = 0;
            this.f50157i = 0;
        }
    }

    /* renamed from: g */
    private final void m13877g(int i) {
        if (i == 3) {
            this.f50154f.m18919c();
            this.f50170c.m18916b();
        } else if (this.f50156h == 3) {
            this.f50154f.f39775a = false;
            this.f50170c.m18915c();
        }
        this.f50156h = i;
    }

    /* renamed from: n */
    private final void m13876n() {
        zzd.zzed("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f50159k == null || surfaceTexture == null) {
            return;
        }
        m13878a(false);
        try {
            zzr.zzll();
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f50158j = mediaPlayer;
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.f50158j.setOnCompletionListener(this);
            this.f50158j.setOnErrorListener(this);
            this.f50158j.setOnInfoListener(this);
            this.f50158j.setOnPreparedListener(this);
            this.f50158j.setOnVideoSizeChangedListener(this);
            this.f50162n = 0;
            SurfaceTexture surfaceTexture2 = surfaceTexture;
            if (this.f50166r) {
                aaz aazVar = new aaz(getContext());
                this.f50165q = aazVar;
                aazVar.m18934a(surfaceTexture, getWidth(), getHeight());
                this.f50165q.start();
                surfaceTexture2 = this.f50165q.m18928c();
                if (surfaceTexture2 == null) {
                    this.f50165q.m18930b();
                    this.f50165q = null;
                    surfaceTexture2 = surfaceTexture;
                }
            }
            this.f50158j.setDataSource(getContext(), this.f50159k);
            zzr.zzlm();
            this.f50158j.setSurface(new Surface(surfaceTexture2));
            this.f50158j.setAudioStreamType(3);
            this.f50158j.setScreenOnWhilePlaying(true);
            this.f50158j.prepareAsync();
            m13877g(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String valueOf = String.valueOf(this.f50159k);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
            sb.append("Failed to initialize MediaPlayer at ");
            sb.append(valueOf);
            zzd.zzd(sb.toString(), e);
            onError(this.f50158j, 1, 0);
        }
    }

    /* renamed from: o */
    private final void m13875o() {
        if (this.f50155g && m13874p() && this.f50158j.getCurrentPosition() > 0 && this.f50157i != 3) {
            zzd.zzed("AdMediaPlayerView nudging MediaPlayer");
            m13881a(BitmapDescriptorFactory.HUE_RED);
            this.f50158j.start();
            int currentPosition = this.f50158j.getCurrentPosition();
            long mo19039a = zzr.zzlc().mo19039a();
            while (m13874p() && this.f50158j.getCurrentPosition() == currentPosition && zzr.zzlc().mo19039a() - mo19039a <= 250) {
            }
            this.f50158j.pause();
            mo13819m();
        }
    }

    /* renamed from: p */
    private final boolean m13874p() {
        int i;
        return (this.f50158j == null || (i = this.f50156h) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final String mo13849a() {
        String str = this.f50166r ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final void mo13848a(float f, float f2) {
        aaz aazVar = this.f50165q;
        if (aazVar != null) {
            aazVar.m18937a(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final void mo13846a(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzd.zzed(sb.toString());
        if (!m13874p()) {
            this.f50167s = i;
            return;
        }
        this.f50158j.seekTo(i);
        this.f50167s = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: a */
    public final void mo13843a(aak aakVar) {
        this.f50152a = aakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: b */
    public final void mo13839b() {
        zzd.zzed("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f50158j;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f50158j.release();
            this.f50158j = null;
            m13877g(0);
            this.f50157i = 0;
        }
        this.f50154f.m18921b();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: c */
    public final void mo13835c() {
        zzd.zzed("AdMediaPlayerView play");
        if (m13874p()) {
            this.f50158j.start();
            m13877g(3);
            this.f50169b.f39722a = true;
            zzj.zzegq.post(new aai(this));
        }
        this.f50157i = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: d */
    public final void mo13832d() {
        zzd.zzed("AdMediaPlayerView pause");
        if (m13874p() && this.f50158j.isPlaying()) {
            this.f50158j.pause();
            m13877g(4);
            zzj.zzegq.post(new aah(this));
        }
        this.f50157i = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: e */
    public final int mo13830e() {
        if (m13874p()) {
            return this.f50158j.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: f */
    public final int mo13828f() {
        if (m13874p()) {
            return this.f50158j.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: g */
    public final int mo13826g() {
        MediaPlayer mediaPlayer = this.f50158j;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: h */
    public final int mo13824h() {
        MediaPlayer mediaPlayer = this.f50158j;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: i */
    public final long mo13823i() {
        if (this.f50168t != null) {
            return (mo13821k() * this.f50162n) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: j */
    public final long mo13822j() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: k */
    public final long mo13821k() {
        if (this.f50168t != null) {
            return mo13830e() * this.f50168t.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    /* renamed from: l */
    public final int mo13820l() {
        if (Build.VERSION.SDK_INT < 26 || !m13874p()) {
            return -1;
        }
        return this.f50158j.getMetrics().getInt("android.media.mediaplayer.dropped");
    }

    @Override // com.google.android.gms.internal.ads.zzbbz, com.google.android.gms.internal.ads.abe
    /* renamed from: m */
    public final void mo13819m() {
        m13881a(this.f50170c.m18918a());
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.f50162n = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzd.zzed("AdMediaPlayerView completion");
        m13877g(5);
        this.f50157i = 5;
        zzj.zzegq.post(new aab(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = f50151d;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzd.zzez(sb.toString());
        m13877g(-1);
        this.f50157i = -1;
        zzj.zzegq.post(new aae(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = f50151d;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzd.zzed(sb.toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b4, code lost:
        if (r5 > r6) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ef, code lost:
        if (r0 > r0) goto L31;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbq.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        zzd.zzed("AdMediaPlayerView prepared");
        m13877g(2);
        this.f50154f.m18923a();
        zzj.zzegq.post(new aac(this, mediaPlayer));
        this.f50160l = mediaPlayer.getVideoWidth();
        this.f50161m = mediaPlayer.getVideoHeight();
        int i = this.f50167s;
        if (i != 0) {
            mo13846a(i);
        }
        m13875o();
        int i2 = this.f50160l;
        int i3 = this.f50161m;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzd.zzey(sb.toString());
        if (this.f50157i == 3) {
            mo13835c();
        }
        mo13819m();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzd.zzed("AdMediaPlayerView surface created");
        m13876n();
        zzj.zzegq.post(new aad(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzd.zzed("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f50158j;
        if (mediaPlayer != null && this.f50167s == 0) {
            this.f50167s = mediaPlayer.getCurrentPosition();
        }
        aaz aazVar = this.f50165q;
        if (aazVar != null) {
            aazVar.m18930b();
        }
        zzj.zzegq.post(new aaf(this));
        m13878a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzd.zzed("AdMediaPlayerView surface changed");
        boolean z = true;
        boolean z2 = this.f50157i == 3;
        if (this.f50160l != i || this.f50161m != i2) {
            z = false;
        }
        if (this.f50158j != null && z2 && z) {
            int i3 = this.f50167s;
            if (i3 != 0) {
                mo13846a(i3);
            }
            mo13835c();
        }
        aaz aazVar = this.f50165q;
        if (aazVar != null) {
            aazVar.m18936a(i, i2);
        }
        zzj.zzegq.post(new aag(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f50154f.m18920b(this);
        this.f50169b.m18947a(surfaceTexture, this.f50152a);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzd.zzed(sb.toString());
        this.f50160l = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.f50161m = videoHeight;
        if (this.f50160l == 0 || videoHeight == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zzd.zzed(sb.toString());
        zzj.zzegq.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.aaa

            /* renamed from: a */
            private final zzbbq f39696a;

            /* renamed from: b */
            private final int f39697b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39696a = this;
                this.f39697b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbbq zzbbqVar = this.f39696a;
                int i2 = this.f39697b;
                if (zzbbqVar.f50152a != null) {
                    zzbbqVar.f50152a.onWindowVisibilityChanged(i2);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void setVideoPath(String str) {
        Uri parse = Uri.parse(str);
        zzti zzd = zzti.zzd(parse);
        if (zzd == null || zzd.url != null) {
            if (zzd != null) {
                parse = Uri.parse(zzd.url);
            }
            this.f50159k = parse;
            this.f50167s = 0;
            m13876n();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public final String toString() {
        String name = getClass().getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
    }
}
