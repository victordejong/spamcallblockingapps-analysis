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

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Integer, String> f28603d;

    /* renamed from: a  reason: collision with root package name */
    aak f28604a;
    private final abb e;
    private final aba f;
    private final boolean g;
    private MediaPlayer j;
    private Uri k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private aaz q;
    private boolean r;
    private int s;
    private int h = 0;
    private int i = 0;
    private Integer t = null;

    static {
        HashMap hashMap = new HashMap();
        f28603d = hashMap;
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
        this.e = abbVar;
        this.f = abaVar;
        this.r = z;
        this.g = z2;
        abaVar.a(this);
    }

    private final void a(float f) {
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException e) {
            }
        } else {
            zzd.zzez("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(zzbbq zzbbqVar, MediaPlayer mediaPlayer) {
        MediaPlayer.TrackInfo[] trackInfo;
        MediaFormat format;
        if (!(!((Boolean) ekb.e().a(aq.bl)).booleanValue() || zzbbqVar.e == null || mediaPlayer == null || Build.VERSION.SDK_INT < 19 || (trackInfo = mediaPlayer.getTrackInfo()) == null)) {
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
                                zzbbqVar.t = valueOf;
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
            if (!hashMap.isEmpty()) {
                zzbbqVar.e.a("onMetadataEvent", hashMap);
            }
        }
    }

    private final void a(boolean z) {
        zzd.zzed("AdMediaPlayerView release");
        aaz aazVar = this.q;
        if (aazVar != null) {
            aazVar.b();
            this.q = null;
        }
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.j.release();
            this.j = null;
            g(0);
            if (z) {
                this.i = 0;
                this.i = 0;
            }
        }
    }

    private final void g(int i) {
        if (i == 3) {
            this.f.c();
            this.f28606c.b();
        } else if (this.h == 3) {
            this.f.f23036a = false;
            this.f28606c.c();
        }
        this.h = i;
    }

    private final void n() {
        zzd.zzed("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.k != null && surfaceTexture != null) {
            a(false);
            try {
                zzr.zzll();
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.j = mediaPlayer;
                mediaPlayer.setOnBufferingUpdateListener(this);
                this.j.setOnCompletionListener(this);
                this.j.setOnErrorListener(this);
                this.j.setOnInfoListener(this);
                this.j.setOnPreparedListener(this);
                this.j.setOnVideoSizeChangedListener(this);
                this.n = 0;
                SurfaceTexture surfaceTexture2 = surfaceTexture;
                if (this.r) {
                    aaz aazVar = new aaz(getContext());
                    this.q = aazVar;
                    aazVar.a(surfaceTexture, getWidth(), getHeight());
                    this.q.start();
                    surfaceTexture2 = this.q.c();
                    if (surfaceTexture2 == null) {
                        this.q.b();
                        this.q = null;
                        surfaceTexture2 = surfaceTexture;
                    }
                }
                this.j.setDataSource(getContext(), this.k);
                zzr.zzlm();
                this.j.setSurface(new Surface(surfaceTexture2));
                this.j.setAudioStreamType(3);
                this.j.setScreenOnWhilePlaying(true);
                this.j.prepareAsync();
                g(1);
            } catch (IOException | IllegalArgumentException | IllegalStateException e) {
                String valueOf = String.valueOf(this.k);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
                sb.append("Failed to initialize MediaPlayer at ");
                sb.append(valueOf);
                zzd.zzd(sb.toString(), e);
                onError(this.j, 1, 0);
            }
        }
    }

    private final void o() {
        if (this.g && p() && this.j.getCurrentPosition() > 0 && this.i != 3) {
            zzd.zzed("AdMediaPlayerView nudging MediaPlayer");
            a(BitmapDescriptorFactory.HUE_RED);
            this.j.start();
            int currentPosition = this.j.getCurrentPosition();
            long a2 = zzr.zzlc().a();
            while (p() && this.j.getCurrentPosition() == currentPosition && zzr.zzlc().a() - a2 <= 250) {
            }
            this.j.pause();
            m();
        }
    }

    private final boolean p() {
        int i;
        return (this.j == null || (i = this.h) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final String a() {
        String str = this.r ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void a(float f, float f2) {
        aaz aazVar = this.q;
        if (aazVar != null) {
            aazVar.a(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void a(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzd.zzed(sb.toString());
        if (p()) {
            this.j.seekTo(i);
            this.s = 0;
            return;
        }
        this.s = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void a(aak aakVar) {
        this.f28604a = aakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void b() {
        zzd.zzed("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.j.release();
            this.j = null;
            g(0);
            this.i = 0;
        }
        this.f.b();
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void c() {
        zzd.zzed("AdMediaPlayerView play");
        if (p()) {
            this.j.start();
            g(3);
            this.f28605b.f23019a = true;
            zzj.zzegq.post(new aai(this));
        }
        this.i = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final void d() {
        zzd.zzed("AdMediaPlayerView pause");
        if (p() && this.j.isPlaying()) {
            this.j.pause();
            g(4);
            zzj.zzegq.post(new aah(this));
        }
        this.i = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int e() {
        if (p()) {
            return this.j.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int f() {
        if (p()) {
            return this.j.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int g() {
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int h() {
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long i() {
        if (this.t != null) {
            return (k() * this.n) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long j() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final long k() {
        if (this.t != null) {
            return e() * this.t.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzbbz
    public final int l() {
        if (Build.VERSION.SDK_INT < 26 || !p()) {
            return -1;
        }
        return this.j.getMetrics().getInt("android.media.mediaplayer.dropped");
    }

    @Override // com.google.android.gms.internal.ads.zzbbz, com.google.android.gms.internal.ads.abe
    public final void m() {
        a(this.f28606c.a());
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.n = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzd.zzed("AdMediaPlayerView completion");
        g(5);
        this.i = 5;
        zzj.zzegq.post(new aab(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = f28603d;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzd.zzez(sb.toString());
        g(-1);
        this.i = -1;
        zzj.zzegq.post(new aae(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = f28603d;
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
        if (r5 > r6) goto L_0x00f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ef, code lost:
        if (r0 > r0) goto L_0x00f2;
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
        g(2);
        this.f.a();
        zzj.zzegq.post(new aac(this, mediaPlayer));
        this.l = mediaPlayer.getVideoWidth();
        this.m = mediaPlayer.getVideoHeight();
        int i = this.s;
        if (i != 0) {
            a(i);
        }
        o();
        int i2 = this.l;
        int i3 = this.m;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzd.zzey(sb.toString());
        if (this.i == 3) {
            c();
        }
        m();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzd.zzed("AdMediaPlayerView surface created");
        n();
        zzj.zzegq.post(new aad(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzd.zzed("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.j;
        if (mediaPlayer != null && this.s == 0) {
            this.s = mediaPlayer.getCurrentPosition();
        }
        aaz aazVar = this.q;
        if (aazVar != null) {
            aazVar.b();
        }
        zzj.zzegq.post(new aaf(this));
        a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzd.zzed("AdMediaPlayerView surface changed");
        boolean z = true;
        boolean z2 = this.i == 3;
        if (!(this.l == i && this.m == i2)) {
            z = false;
        }
        if (this.j != null && z2 && z) {
            int i3 = this.s;
            if (i3 != 0) {
                a(i3);
            }
            c();
        }
        aaz aazVar = this.q;
        if (aazVar != null) {
            aazVar.a(i, i2);
        }
        zzj.zzegq.post(new aag(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f.b(this);
        this.f28605b.a(surfaceTexture, this.f28604a);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzd.zzed(sb.toString());
        this.l = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.m = videoHeight;
        if (this.l != 0 && videoHeight != 0) {
            requestLayout();
        }
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zzd.zzed(sb.toString());
        zzj.zzegq.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.aaa

            /* renamed from: a  reason: collision with root package name */
            private final zzbbq f22993a;

            /* renamed from: b  reason: collision with root package name */
            private final int f22994b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22993a = this;
                this.f22994b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbbq zzbbqVar = this.f22993a;
                int i2 = this.f22994b;
                if (zzbbqVar.f28604a != null) {
                    zzbbqVar.f28604a.onWindowVisibilityChanged(i2);
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
            this.k = parse;
            this.s = 0;
            n();
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
