package androidx.media2.exoplayer.external.video;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.C1475o;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.mediacodec.AbstractC1660b;
import androidx.media2.exoplayer.external.mediacodec.C1659a;
import androidx.media2.exoplayer.external.mediacodec.C1666g;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.p063b.C1441d;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1994aa;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2012m;
import androidx.media2.exoplayer.external.video.AbstractC2048g;
import androidx.media2.exoplayer.external.video.C2044e;
import com.callapp.contacts.model.Constants;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/MediaCodecVideoRenderer.class */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {

    /* renamed from: c */
    private static final int[] f8172c = {Constants.BIG_SIZE_SCREEN, 1600, 1440, Constants.SMALL_SIZE_SCREEN, 960, 854, 640, 540, 480};

    /* renamed from: d */
    private static boolean f8173d;

    /* renamed from: e */
    private static boolean f8174e;

    /* renamed from: A */
    private long f8175A;

    /* renamed from: B */
    private int f8176B;

    /* renamed from: C */
    private float f8177C;

    /* renamed from: D */
    private int f8178D;

    /* renamed from: E */
    private int f8179E;

    /* renamed from: F */
    private int f8180F;

    /* renamed from: G */
    private float f8181G;

    /* renamed from: H */
    private int f8182H;

    /* renamed from: I */
    private int f8183I;

    /* renamed from: J */
    private int f8184J;

    /* renamed from: K */
    private float f8185K;

    /* renamed from: L */
    private boolean f8186L;

    /* renamed from: M */
    private int f8187M;

    /* renamed from: N */
    private long f8188N;

    /* renamed from: O */
    private long f8189O;

    /* renamed from: P */
    private int f8190P;

    /* renamed from: Q */
    private AbstractC2043d f8191Q;

    /* renamed from: b */
    C2037b f8192b;

    /* renamed from: f */
    private final Context f8193f;

    /* renamed from: g */
    private final C2044e f8194g;

    /* renamed from: h */
    private final AbstractC2048g.C2049a f8195h;

    /* renamed from: i */
    private final long f8196i;

    /* renamed from: j */
    private final int f8197j;

    /* renamed from: k */
    private final boolean f8198k;

    /* renamed from: l */
    private final long[] f8199l;

    /* renamed from: m */
    private final long[] f8200m;

    /* renamed from: n */
    private C2036a f8201n;

    /* renamed from: o */
    private boolean f8202o;

    /* renamed from: p */
    private boolean f8203p;

    /* renamed from: q */
    private Surface f8204q;

    /* renamed from: r */
    private Surface f8205r;

    /* renamed from: s */
    private int f8206s;

    /* renamed from: t */
    private boolean f8207t;

    /* renamed from: u */
    private long f8208u;

    /* renamed from: v */
    private long f8209v;

    /* renamed from: w */
    private long f8210w;

    /* renamed from: x */
    private int f8211x;

    /* renamed from: y */
    private int f8212y;

    /* renamed from: z */
    private int f8213z;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$VideoDecoderException.class */
    public static final class VideoDecoderException extends MediaCodecRenderer.DecoderException {

        /* renamed from: c */
        public final int f8214c;

        /* renamed from: d */
        public final boolean f8215d;

        public VideoDecoderException(Throwable th, C1659a c1659a, Surface surface) {
            super(th, c1659a);
            this.f8214c = System.identityHashCode(surface);
            this.f8215d = surface == null || surface.isValid();
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a.class */
    protected static final class C2036a {

        /* renamed from: a */
        public final int f8216a;

        /* renamed from: b */
        public final int f8217b;

        /* renamed from: c */
        public final int f8218c;

        public C2036a(int i, int i2, int i3) {
            this.f8216a = i;
            this.f8217b = i2;
            this.f8218c = i3;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b.class */
    public final class C2037b implements MediaCodec.OnFrameRenderedListener {
        private C2037b(MediaCodec mediaCodec) {
            MediaCodecVideoRenderer.this = r6;
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
            if (this != MediaCodecVideoRenderer.this.f8192b) {
                return;
            }
            MediaCodecVideoRenderer.this.m41437e(j);
        }
    }

    public MediaCodecVideoRenderer(Context context, AbstractC1660b abstractC1660b) {
        this(context, abstractC1660b, 0L);
    }

    public MediaCodecVideoRenderer(Context context, AbstractC1660b abstractC1660b, long j) {
        this(context, abstractC1660b, j, null, null, -1);
    }

    public MediaCodecVideoRenderer(Context context, AbstractC1660b abstractC1660b, long j, Handler handler, AbstractC2048g abstractC2048g, int i) {
        this(context, abstractC1660b, j, null, false, handler, abstractC2048g, i);
    }

    public MediaCodecVideoRenderer(Context context, AbstractC1660b abstractC1660b, long j, AbstractC1468k<C1475o> abstractC1468k, boolean z, Handler handler, AbstractC2048g abstractC2048g, int i) {
        this(context, abstractC1660b, j, abstractC1468k, z, false, handler, abstractC2048g, i);
    }

    public MediaCodecVideoRenderer(Context context, AbstractC1660b abstractC1660b, long j, AbstractC1468k<C1475o> abstractC1468k, boolean z, boolean z2, Handler handler, AbstractC2048g abstractC2048g, int i) {
        super(2, abstractC1660b, abstractC1468k, z, z2, 30.0f);
        this.f8196i = j;
        this.f8197j = i;
        Context applicationContext = context.getApplicationContext();
        this.f8193f = applicationContext;
        this.f8194g = new C2044e(applicationContext);
        this.f8195h = new AbstractC2048g.C2049a(handler, abstractC2048g);
        this.f8198k = "NVIDIA".equals(C1996ac.f8064c);
        this.f8199l = new long[10];
        this.f8200m = new long[10];
        this.f8189O = -9223372036854775807L;
        this.f8188N = -9223372036854775807L;
        this.f8209v = -9223372036854775807L;
        this.f8178D = -1;
        this.f8179E = -1;
        this.f8181G = -1.0f;
        this.f8177C = -1.0f;
        this.f8206s = 1;
        m41467K();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: H */
    private void m41470H() {
        this.f8209v = this.f8196i > 0 ? SystemClock.elapsedRealtime() + this.f8196i : (char) 1;
    }

    /* renamed from: I */
    private void m41469I() {
        MediaCodec C;
        this.f8207t = false;
        if (C1996ac.f8062a < 23 || !this.f8186L || (C = m42476C()) == null) {
            return;
        }
        this.f8192b = new C2037b(C);
    }

    /* renamed from: J */
    private void m41468J() {
        if (!this.f8207t) {
            this.f8207t = true;
            this.f8195h.m41421a(this.f8204q);
        }
    }

    /* renamed from: K */
    private void m41467K() {
        this.f8182H = -1;
        this.f8183I = -1;
        this.f8185K = -1.0f;
        this.f8184J = -1;
    }

    /* renamed from: L */
    private void m41466L() {
        int i = this.f8178D;
        if (i == -1 && this.f8179E == -1) {
            return;
        }
        if (this.f8182H == i && this.f8183I == this.f8179E && this.f8184J == this.f8180F && this.f8185K == this.f8181G) {
            return;
        }
        this.f8195h.m41423a(i, this.f8179E, this.f8180F, this.f8181G);
        this.f8182H = this.f8178D;
        this.f8183I = this.f8179E;
        this.f8184J = this.f8180F;
        this.f8185K = this.f8181G;
    }

    /* renamed from: M */
    private void m41465M() {
        int i = this.f8182H;
        if (i == -1 && this.f8183I == -1) {
            return;
        }
        this.f8195h.m41423a(i, this.f8183I, this.f8184J, this.f8185K);
    }

    /* renamed from: N */
    private void m41464N() {
        if (this.f8211x > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f8195h.m41422a(this.f8211x, elapsedRealtime - this.f8210w);
            this.f8211x = 0;
            this.f8210w = elapsedRealtime;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static int m41452a(C1659a c1659a, String str, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
            case true:
            case true:
                i4 = i * i2;
                i3 = 2;
                break;
            case true:
            case true:
                i4 = i * i2;
                i3 = 4;
                break;
            case true:
                if ("BRAVIA 4K 2015".equals(C1996ac.f8065d)) {
                    return -1;
                }
                if ("Amazon".equals(C1996ac.f8064c)) {
                    if ("KFSOWI".equals(C1996ac.f8065d)) {
                        return -1;
                    }
                    if ("AFTS".equals(C1996ac.f8065d) && c1659a.f6652g) {
                        return -1;
                    }
                }
                i4 = C1996ac.m41675a(i, 16) * C1996ac.m41675a(i2, 16) * 16 * 16;
                i3 = 2;
                break;
            default:
                return -1;
        }
        return (i4 * 3) / (i3 * 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x012f, code lost:
        if (r8 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0132, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0138, code lost:
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013c, code lost:
        if (r8 == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0142, code lost:
        r18 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0152, code lost:
        return new android.graphics.Point(r9, r18);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point m41454a(androidx.media2.exoplayer.external.mediacodec.C1659a r6, androidx.media2.exoplayer.external.Format r7) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer.m41454a(androidx.media2.exoplayer.external.mediacodec.a, androidx.media2.exoplayer.external.Format):android.graphics.Point");
    }

    /* renamed from: a */
    private static List<C1659a> m41450a(AbstractC1660b abstractC1660b, Format format, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
        Pair<Integer, Integer> m42449a;
        List<C1659a> m42440a = MediaCodecUtil.m42440a(abstractC1660b.mo42414a(format.sampleMimeType, z, z2), format);
        if ("video/dolby-vision".equals(format.sampleMimeType) && (m42449a = MediaCodecUtil.m42449a(format)) != null) {
            int intValue = ((Integer) m42449a.first).intValue();
            if (intValue == 4 || intValue == 8) {
                m42440a.addAll(abstractC1660b.mo42414a("video/hevc", z, z2));
            } else if (intValue == 9) {
                m42440a.addAll(abstractC1660b.mo42414a("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(m42440a);
    }

    /* renamed from: a */
    private void m41461a(MediaCodec mediaCodec, int i) {
        C1994aa.m41683a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C1994aa.m41684a();
        this.f6591a.f5489f++;
    }

    /* renamed from: a */
    private void m41460a(MediaCodec mediaCodec, int i, int i2) {
        this.f8178D = i;
        this.f8179E = i2;
        this.f8181G = this.f8177C;
        if (C1996ac.f8062a >= 21) {
            int i3 = this.f8176B;
            if (i3 == 90 || i3 == 270) {
                int i4 = this.f8178D;
                this.f8178D = this.f8179E;
                this.f8179E = i4;
                this.f8181G = 1.0f / this.f8181G;
            }
        } else {
            this.f8180F = this.f8176B;
        }
        mediaCodec.setVideoScalingMode(this.f8206s);
    }

    /* renamed from: a */
    private void m41459a(MediaCodec mediaCodec, int i, long j) {
        m41466L();
        C1994aa.m41683a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        C1994aa.m41684a();
        this.f8175A = SystemClock.elapsedRealtime() * 1000;
        this.f6591a.f5488e++;
        this.f8212y = 0;
        m41468J();
    }

    /* JADX WARN: Removed duplicated region for block: B:543:0x0ee0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m41447a(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 3838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer.m41447a(java.lang.String):boolean");
    }

    /* renamed from: b */
    private static int m41439b(C1659a c1659a, Format format) {
        if (format.maxInputSize != -1) {
            int size = format.initializationData.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += format.initializationData.get(i2).length;
            }
            return format.maxInputSize + i;
        }
        return m41452a(c1659a, format.sampleMimeType, format.width, format.height);
    }

    /* renamed from: b */
    private void m41443b(int i) {
        this.f6591a.f5490g += i;
        this.f8211x += i;
        this.f8212y += i;
        this.f6591a.f5491h = Math.max(this.f8212y, this.f6591a.f5491h);
        int i2 = this.f8197j;
        if (i2 <= 0 || this.f8211x < i2) {
            return;
        }
        m41464N();
    }

    /* renamed from: b */
    private void m41442b(MediaCodec mediaCodec, int i) {
        m41466L();
        C1994aa.m41683a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        C1994aa.m41684a();
        this.f8175A = SystemClock.elapsedRealtime() * 1000;
        this.f6591a.f5488e++;
        this.f8212y = 0;
        m41468J();
    }

    /* renamed from: b */
    private boolean m41440b(C1659a c1659a) {
        if (C1996ac.f8062a < 23 || this.f8186L || m41447a(c1659a.f6646a)) {
            return false;
        }
        return !c1659a.f6652g || DummySurface.isSecureSupported(this.f8193f);
    }

    /* renamed from: f */
    private static boolean m41436f(long j) {
        return j < -30000;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: B */
    public final boolean mo41473B() {
        return this.f8186L;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: E */
    public final void mo41472E() {
        try {
            super.mo41472E();
        } finally {
            this.f8213z = 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: G */
    public final boolean mo41471G() {
        try {
            return super.mo41471G();
        } finally {
            this.f8213z = 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final float mo41463a(float f, Format[] formatArr) {
        float f2;
        int length = formatArr.length;
        int i = 0;
        float f3 = -1.0f;
        while (true) {
            f2 = f3;
            if (i >= length) {
                break;
            }
            float f4 = formatArr[i].frameRate;
            float f5 = f2;
            if (f4 != -1.0f) {
                f5 = Math.max(f2, f4);
            }
            i++;
            f3 = f5;
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final int mo41453a(C1659a c1659a, Format format, Format format2) {
        if (!c1659a.m42423a(format, format2, true) || format2.width > this.f8201n.f8216a || format2.height > this.f8201n.f8217b || m41439b(c1659a, format2) > this.f8201n.f8218c) {
            return 0;
        }
        return format.initializationDataEquals(format2) ? 3 : 2;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final int mo41449a(AbstractC1660b abstractC1660b, AbstractC1468k<C1475o> abstractC1468k, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!C2012m.m41573b(format.sampleMimeType)) {
            return 0;
        }
        DrmInitData drmInitData = format.drmInitData;
        boolean z = drmInitData != null;
        List<C1659a> m41450a = m41450a(abstractC1660b, format, z, false);
        List<C1659a> list = m41450a;
        if (z) {
            list = m41450a;
            if (m41450a.isEmpty()) {
                list = m41450a(abstractC1660b, format, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!(drmInitData == null || C1475o.class.equals(format.exoMediaCryptoType) || (format.exoMediaCryptoType == null && m42934a(abstractC1468k, drmInitData)))) {
            return 2;
        }
        C1659a c1659a = list.get(0);
        boolean m42424a = c1659a.m42424a(format);
        int i = c1659a.m42418b(format) ? 16 : 8;
        int i2 = 0;
        if (m42424a) {
            List<C1659a> m41450a2 = m41450a(abstractC1660b, format, z, true);
            i2 = 0;
            if (!m41450a2.isEmpty()) {
                C1659a c1659a2 = m41450a2.get(0);
                i2 = 0;
                if (c1659a2.m42424a(format)) {
                    i2 = 0;
                    if (c1659a2.m42418b(format)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (m42424a ? 4 : 3) | i | i2;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final MediaCodecRenderer.DecoderException mo41445a(Throwable th, C1659a c1659a) {
        return new VideoDecoderException(th, c1659a, this.f8204q);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final List<C1659a> mo41451a(AbstractC1660b abstractC1660b, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return m41450a(abstractC1660b, format, z, this.f8186L);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b, androidx.media2.exoplayer.external.C1372af.AbstractC1374b
    /* renamed from: a */
    public final void mo41430a(int i, Object obj) throws ExoPlaybackException {
        if (i != 1) {
            if (i != 4) {
                if (i == 6) {
                    this.f8191Q = (AbstractC2043d) obj;
                    return;
                } else {
                    super.mo41430a(i, obj);
                    return;
                }
            }
            this.f8206s = ((Integer) obj).intValue();
            MediaCodec C = m42476C();
            if (C == null) {
                return;
            }
            C.setVideoScalingMode(this.f8206s);
            return;
        }
        Surface surface = (Surface) obj;
        DummySurface dummySurface = surface;
        if (surface == null) {
            dummySurface = this.f8205r;
            if (dummySurface == null) {
                C1659a D = m42475D();
                dummySurface = surface;
                if (D != null) {
                    dummySurface = surface;
                    if (m41440b(D)) {
                        dummySurface = DummySurface.newInstanceV17(this.f8193f, D.f6652g);
                        this.f8205r = dummySurface;
                    }
                }
            }
        }
        if (this.f8204q == dummySurface) {
            if (dummySurface == null || dummySurface == this.f8205r) {
                return;
            }
            m41465M();
            if (!this.f8207t) {
                return;
            }
            this.f8195h.m41421a(this.f8204q);
            return;
        }
        this.f8204q = dummySurface;
        int i_ = mo42923i_();
        MediaCodec C2 = m42476C();
        if (C2 != null) {
            if (C1996ac.f8062a < 23 || dummySurface == null || this.f8202o) {
                mo41472E();
                m42477A();
            } else {
                C2.setOutputSurface(dummySurface);
            }
        }
        if (dummySurface == null || dummySurface == this.f8205r) {
            m41467K();
            m41469I();
            return;
        }
        m41465M();
        m41469I();
        if (i_ != 2) {
            return;
        }
        m41470H();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41179a(long j, boolean z) throws ExoPlaybackException {
        super.mo41179a(j, z);
        m41469I();
        this.f8208u = -9223372036854775807L;
        this.f8212y = 0;
        this.f8188N = -9223372036854775807L;
        int i = this.f8190P;
        if (i != 0) {
            this.f8189O = this.f8199l[i - 1];
            this.f8190P = 0;
        }
        if (z) {
            m41470H();
        } else {
            this.f8209v = -9223372036854775807L;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41458a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        m41460a(mediaCodec, z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width"), z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height"));
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41457a(C1442e c1442e) {
        this.f8213z++;
        this.f8188N = Math.max(c1442e.f5495d, this.f8188N);
        if (C1996ac.f8062a >= 23 || !this.f8186L) {
            return;
        }
        m41437e(c1442e.f5495d);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41455a(C1659a c1659a, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        C2036a c2036a;
        Pair<Integer, Integer> m42449a;
        String str = c1659a.f6648c;
        Format[] t = m42917t();
        int i = format.width;
        int i2 = format.height;
        int m41439b = m41439b(c1659a, format);
        if (t.length == 1) {
            int i3 = m41439b;
            if (m41439b != -1) {
                int m41452a = m41452a(c1659a, format.sampleMimeType, format.width, format.height);
                i3 = m41439b;
                if (m41452a != -1) {
                    i3 = Math.min((int) (m41439b * 1.5f), m41452a);
                }
            }
            c2036a = new C2036a(i, i2, i3);
        } else {
            int length = t.length;
            int i4 = 0;
            boolean z = false;
            int i5 = i2;
            while (i4 < length) {
                Format format2 = t[i4];
                int i6 = i;
                int i7 = i5;
                int i8 = m41439b;
                boolean z2 = z;
                if (c1659a.m42423a(format, format2, false)) {
                    z2 = z | (format2.width == -1 || format2.height == -1);
                    i6 = Math.max(i, format2.width);
                    i7 = Math.max(i5, format2.height);
                    i8 = Math.max(m41439b, m41439b(c1659a, format2));
                }
                i4++;
                i = i6;
                i5 = i7;
                m41439b = i8;
                z = z2;
            }
            int i9 = i;
            int i10 = i5;
            int i11 = m41439b;
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i);
                sb.append("x");
                sb.append(i5);
                C2009j.m41584a("MediaCodecVideoRenderer", sb.toString());
                Point m41454a = m41454a(c1659a, format);
                i9 = i;
                i10 = i5;
                i11 = m41439b;
                if (m41454a != null) {
                    i9 = Math.max(i, m41454a.x);
                    i10 = Math.max(i5, m41454a.y);
                    i11 = Math.max(m41439b, m41452a(c1659a, format.sampleMimeType, i9, i10));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i9);
                    sb2.append("x");
                    sb2.append(i10);
                    C2009j.m41584a("MediaCodecVideoRenderer", sb2.toString());
                }
            }
            c2036a = new C2036a(i9, i10, i11);
        }
        this.f8201n = c2036a;
        boolean z3 = this.f8198k;
        int i12 = this.f8187M;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        C1666g.m42409a(mediaFormat, format.initializationData);
        C1666g.m42411a(mediaFormat, "frame-rate", format.frameRate);
        C1666g.m42410a(mediaFormat, "rotation-degrees", format.rotationDegrees);
        C1666g.m42412a(mediaFormat, format.colorInfo);
        if ("video/dolby-vision".equals(format.sampleMimeType) && (m42449a = MediaCodecUtil.m42449a(format)) != null) {
            C1666g.m42410a(mediaFormat, "profile", ((Integer) m42449a.first).intValue());
        }
        mediaFormat.setInteger("max-width", c2036a.f8216a);
        mediaFormat.setInteger("max-height", c2036a.f8217b);
        C1666g.m42410a(mediaFormat, "max-input-size", c2036a.f8218c);
        if (C1996ac.f8062a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z3) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i12 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i12);
        }
        if (this.f8204q == null) {
            C1993a.m41686b(m41440b(c1659a));
            if (this.f8205r == null) {
                this.f8205r = DummySurface.newInstanceV17(this.f8193f, c1659a.f6652g);
            }
            this.f8204q = this.f8205r;
        }
        mediaCodec.configure(mediaFormat, this.f8204q, mediaCrypto, 0);
        if (C1996ac.f8062a < 23 || !this.f8186L) {
            return;
        }
        this.f8192b = new C2037b(mediaCodec);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41448a(C2058x c2058x) throws ExoPlaybackException {
        super.mo41448a(c2058x);
        Format format = c2058x.f8282c;
        AbstractC2048g.C2049a c2049a = this.f8195h;
        if (c2049a.f8257b != null) {
            c2049a.f8256a.post(new Runnable(c2049a, format) { // from class: androidx.media2.exoplayer.external.video.j

                /* renamed from: a */
                private final AbstractC2048g.C2049a f8264a;

                /* renamed from: b */
                private final Format f8265b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8264a = c2049a;
                    this.f8265b = format;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC2048g.C2049a c2049a2 = this.f8264a;
                    c2049a2.f8257b.mo41238a(this.f8265b);
                }
            });
        }
        this.f8177C = format.pixelWidthHeightRatio;
        this.f8176B = format.rotationDegrees;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final void mo41446a(String str, long j, long j2) {
        AbstractC2048g.C2049a c2049a = this.f8195h;
        if (c2049a.f8257b != null) {
            c2049a.f8256a.post(new Runnable(c2049a, str, j, j2) { // from class: androidx.media2.exoplayer.external.video.i

                /* renamed from: a */
                private final AbstractC2048g.C2049a f8260a;

                /* renamed from: b */
                private final String f8261b;

                /* renamed from: c */
                private final long f8262c;

                /* renamed from: d */
                private final long f8263d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8260a = c2049a;
                    this.f8261b = str;
                    this.f8262c = j;
                    this.f8263d = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC2048g.C2049a c2049a2 = this.f8260a;
                    c2049a2.f8257b.mo41234a(this.f8261b, this.f8262c, this.f8263d);
                }
            });
        }
        this.f8202o = m41447a(str);
        C1659a c1659a = (C1659a) C1993a.m41690a(m42475D());
        boolean z = false;
        if (C1996ac.f8062a >= 29) {
            z = false;
            if ("video/x-vnd.on2.vp9".equals(c1659a.f6647b)) {
                MediaCodecInfo.CodecProfileLevel[] m42428a = c1659a.m42428a();
                int length = m42428a.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (m42428a[i].profile == 16384) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.f8203p = z;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41444a(boolean z) throws ExoPlaybackException {
        super.mo41444a(z);
        int i = this.f8187M;
        int i2 = m42916u().tunnelingAudioSessionId;
        this.f8187M = i2;
        this.f8186L = i2 != 0;
        if (i2 != i) {
            mo41472E();
        }
        AbstractC2048g.C2049a c2049a = this.f8195h;
        C1441d c1441d = this.f6591a;
        if (c2049a.f8257b != null) {
            c2049a.f8256a.post(new Runnable(c2049a, c1441d) { // from class: androidx.media2.exoplayer.external.video.h

                /* renamed from: a */
                private final AbstractC2048g.C2049a f8258a;

                /* renamed from: b */
                private final C1441d f8259b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8258a = c2049a;
                    this.f8259b = c1441d;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC2048g.C2049a c2049a2 = this.f8258a;
                    c2049a2.f8257b.mo41237a(this.f8259b);
                }
            });
        }
        C2044e c2044e = this.f8194g;
        c2044e.f8244i = false;
        if (c2044e.f8236a != null) {
            c2044e.f8237b.f8252b.sendEmptyMessage(1);
            if (c2044e.f8238c != null) {
                C2044e.C2045a c2045a = c2044e.f8238c;
                c2045a.f8248a.registerDisplayListener(c2045a, null);
            }
            c2044e.m41427a();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41176a(Format[] formatArr, long j) throws ExoPlaybackException {
        if (this.f8189O == -9223372036854775807L) {
            this.f8189O = j;
        } else {
            int i = this.f8190P;
            long[] jArr = this.f8199l;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                C2009j.m41584a("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.f8190P = i + 1;
            }
            long[] jArr2 = this.f8199l;
            int i2 = this.f8190P;
            jArr2[i2 - 1] = j;
            this.f8200m[i2 - 1] = this.f8188N;
        }
        super.mo41176a(formatArr, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0094, code lost:
        if ((m41436f(r0) && r0 - r7.f8175A > 100000) != false) goto L119;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x029f  */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo41462a(long r8, long r10, android.media.MediaCodec r12, java.nio.ByteBuffer r13, int r14, int r15, long r16, boolean r18, boolean r19) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer.mo41462a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean, boolean):boolean");
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: a */
    public final boolean mo41456a(C1659a c1659a) {
        return this.f8204q != null || m41440b(c1659a);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: b */
    public final void mo41441b(C1442e c1442e) throws ExoPlaybackException {
        if (!this.f8203p) {
            return;
        }
        ByteBuffer byteBuffer = (ByteBuffer) C1993a.m41690a(c1442e.f5496e);
        if (byteBuffer.remaining() < 7) {
            return;
        }
        byte b = byteBuffer.get();
        short s = byteBuffer.getShort();
        short s2 = byteBuffer.getShort();
        byte b2 = byteBuffer.get();
        byte b3 = byteBuffer.get();
        byteBuffer.position(0);
        if (b != -75 || s != 60 || s2 != 1 || b2 != 4 || b3 != 0) {
            return;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        byteBuffer.position(0);
        MediaCodec C = m42476C();
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        C.setParameters(bundle);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /* renamed from: c */
    public final void mo41438c(long j) {
        this.f8213z--;
        while (true) {
            int i = this.f8190P;
            if (i == 0 || j < this.f8200m[0]) {
                return;
            }
            long[] jArr = this.f8199l;
            this.f8189O = jArr[0];
            int i2 = i - 1;
            this.f8190P = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.f8200m;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f8190P);
        }
    }

    /* renamed from: e */
    protected final void m41437e(long j) {
        Format d = m42456d(j);
        if (d != null) {
            m41460a(m42476C(), d.width, d.height);
        }
        m41466L();
        m41468J();
        mo41438c(j);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: p */
    public final void mo41435p() {
        super.mo41435p();
        this.f8211x = 0;
        this.f8210w = SystemClock.elapsedRealtime();
        this.f8175A = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: q */
    public final void mo41434q() {
        this.f8209v = -9223372036854775807L;
        m41464N();
        super.mo41434q();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: r */
    public final void mo41429r() {
        this.f8188N = -9223372036854775807L;
        this.f8189O = -9223372036854775807L;
        this.f8190P = 0;
        m41467K();
        m41469I();
        C2044e c2044e = this.f8194g;
        if (c2044e.f8236a != null) {
            if (c2044e.f8238c != null) {
                C2044e.C2045a c2045a = c2044e.f8238c;
                c2045a.f8248a.unregisterDisplayListener(c2045a);
            }
            c2044e.f8237b.f8252b.sendEmptyMessage(2);
        }
        this.f8192b = null;
        try {
            super.mo41429r();
        } finally {
            this.f8195h.m41420a(this.f6591a);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: s */
    public final void mo41433s() {
        try {
            super.mo41433s();
            Surface surface = this.f8205r;
            if (surface == null) {
                return;
            }
            if (this.f8204q == surface) {
                this.f8204q = null;
            }
            surface.release();
            this.f8205r = null;
        } catch (Throwable th) {
            if (this.f8205r != null) {
                Surface surface2 = this.f8204q;
                Surface surface3 = this.f8205r;
                if (surface2 == surface3) {
                    this.f8204q = null;
                }
                surface3.release();
                this.f8205r = null;
            }
            throw th;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: x */
    public final boolean mo41174x() {
        Surface surface;
        if (super.mo41174x() && (this.f8207t || (((surface = this.f8205r) != null && this.f8204q == surface) || m42476C() == null || this.f8186L))) {
            this.f8209v = -9223372036854775807L;
            return true;
        } else if (this.f8209v == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f8209v) {
                return true;
            }
            this.f8209v = -9223372036854775807L;
            return false;
        }
    }
}
