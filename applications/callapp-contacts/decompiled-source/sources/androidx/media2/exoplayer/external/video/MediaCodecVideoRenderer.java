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
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.b.d;
import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.drm.o;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import androidx.media2.exoplayer.external.util.aa;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.m;
import androidx.media2.exoplayer.external.video.e;
import androidx.media2.exoplayer.external.video.g;
import androidx.media2.exoplayer.external.x;
import com.callapp.contacts.model.Constants;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/MediaCodecVideoRenderer.class */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f4200c = {Constants.BIG_SIZE_SCREEN, 1600, 1440, Constants.SMALL_SIZE_SCREEN, 960, 854, 640, 540, 480};

    /* renamed from: d  reason: collision with root package name */
    private static boolean f4201d;
    private static boolean e;
    private long A;
    private int B;
    private float C;
    private int D;
    private int E;
    private int F;
    private float G;
    private int H;
    private int I;
    private int J;
    private float K;
    private boolean L;
    private int M;
    private long N;
    private long O;
    private int P;
    private d Q;

    /* renamed from: b  reason: collision with root package name */
    b f4202b;
    private final Context f;
    private final e g;
    private final g.a h;
    private final long i;
    private final int j;
    private final boolean k;
    private final long[] l;
    private final long[] m;
    private a n;
    private boolean o;
    private boolean p;
    private Surface q;
    private Surface r;
    private int s;
    private boolean t;
    private long u;
    private long v;
    private long w;
    private int x;
    private int y;
    private int z;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$VideoDecoderException.class */
    public static final class VideoDecoderException extends MediaCodecRenderer.DecoderException {

        /* renamed from: c  reason: collision with root package name */
        public final int f4203c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f4204d;

        public VideoDecoderException(Throwable th, androidx.media2.exoplayer.external.mediacodec.a aVar, Surface surface) {
            super(th, aVar);
            this.f4203c = System.identityHashCode(surface);
            this.f4204d = surface == null || surface.isValid();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$a.class */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f4205a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4206b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4207c;

        public a(int i, int i2, int i3) {
            this.f4205a = i;
            this.f4206b = i2;
            this.f4207c = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$b.class */
    public final class b implements MediaCodec.OnFrameRenderedListener {
        private b(MediaCodec mediaCodec) {
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
            if (this == MediaCodecVideoRenderer.this.f4202b) {
                MediaCodecVideoRenderer.this.e(j);
            }
        }
    }

    public MediaCodecVideoRenderer(Context context, androidx.media2.exoplayer.external.mediacodec.b bVar) {
        this(context, bVar, 0L);
    }

    public MediaCodecVideoRenderer(Context context, androidx.media2.exoplayer.external.mediacodec.b bVar, long j) {
        this(context, bVar, j, null, null, -1);
    }

    public MediaCodecVideoRenderer(Context context, androidx.media2.exoplayer.external.mediacodec.b bVar, long j, Handler handler, g gVar, int i) {
        this(context, bVar, j, null, false, handler, gVar, i);
    }

    public MediaCodecVideoRenderer(Context context, androidx.media2.exoplayer.external.mediacodec.b bVar, long j, k<o> kVar, boolean z, Handler handler, g gVar, int i) {
        this(context, bVar, j, kVar, z, false, handler, gVar, i);
    }

    public MediaCodecVideoRenderer(Context context, androidx.media2.exoplayer.external.mediacodec.b bVar, long j, k<o> kVar, boolean z, boolean z2, Handler handler, g gVar, int i) {
        super(2, bVar, kVar, z, z2, 30.0f);
        this.i = j;
        this.j = i;
        Context applicationContext = context.getApplicationContext();
        this.f = applicationContext;
        this.g = new e(applicationContext);
        this.h = new g.a(handler, gVar);
        this.k = "NVIDIA".equals(ac.f4121c);
        this.l = new long[10];
        this.m = new long[10];
        this.O = -9223372036854775807L;
        this.N = -9223372036854775807L;
        this.v = -9223372036854775807L;
        this.D = -1;
        this.E = -1;
        this.G = -1.0f;
        this.C = -1.0f;
        this.s = 1;
        K();
    }

    private void H() {
        this.v = this.i > 0 ? SystemClock.elapsedRealtime() + this.i : -9223372036854775807L;
    }

    private void I() {
        MediaCodec C;
        this.t = false;
        if (ac.f4119a >= 23 && this.L && (C = C()) != null) {
            this.f4202b = new b(C);
        }
    }

    private void J() {
        if (!this.t) {
            this.t = true;
            this.h.a(this.q);
        }
    }

    private void K() {
        this.H = -1;
        this.I = -1;
        this.K = -1.0f;
        this.J = -1;
    }

    private void L() {
        int i = this.D;
        if (i != -1 || this.E != -1) {
            if (this.H != i || this.I != this.E || this.J != this.F || this.K != this.G) {
                this.h.a(i, this.E, this.F, this.G);
                this.H = this.D;
                this.I = this.E;
                this.J = this.F;
                this.K = this.G;
            }
        }
    }

    private void M() {
        int i = this.H;
        if (i != -1 || this.I != -1) {
            this.h.a(i, this.I, this.J, this.K);
        }
    }

    private void N() {
        if (this.x > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.h.a(this.x, elapsedRealtime - this.w);
            this.x = 0;
            this.w = elapsedRealtime;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(androidx.media2.exoplayer.external.mediacodec.a aVar, String str, int i, int i2) {
        char c2;
        int i3;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        str.hashCode();
        int i4 = 4;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 2:
            case 4:
                i3 = i * i2;
                i4 = 2;
                break;
            case 1:
            case 5:
                i3 = i * i2;
                break;
            case 3:
                if (!"BRAVIA 4K 2015".equals(ac.f4122d)) {
                    if ("Amazon".equals(ac.f4121c)) {
                        if ("KFSOWI".equals(ac.f4122d)) {
                            return -1;
                        }
                        if ("AFTS".equals(ac.f4122d) && aVar.g) {
                            return -1;
                        }
                    }
                    i3 = ac.a(i, 16) * ac.a(i2, 16) * 16 * 16;
                    i4 = 2;
                    break;
                } else {
                    return -1;
                }
            default:
                return -1;
        }
        return (i3 * 3) / (i4 * 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x012f, code lost:
        if (r8 == false) goto L_0x0138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0132, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0138, code lost:
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013c, code lost:
        if (r8 == false) goto L_0x0142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0142, code lost:
        r18 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0152, code lost:
        return new android.graphics.Point(r9, r18);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point a(androidx.media2.exoplayer.external.mediacodec.a r6, androidx.media2.exoplayer.external.Format r7) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer.a(androidx.media2.exoplayer.external.mediacodec.a, androidx.media2.exoplayer.external.Format):android.graphics.Point");
    }

    private static List<androidx.media2.exoplayer.external.mediacodec.a> a(androidx.media2.exoplayer.external.mediacodec.b bVar, Format format, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
        Pair<Integer, Integer> a2;
        List<androidx.media2.exoplayer.external.mediacodec.a> a3 = MediaCodecUtil.a(bVar.a(format.sampleMimeType, z, z2), format);
        if ("video/dolby-vision".equals(format.sampleMimeType) && (a2 = MediaCodecUtil.a(format)) != null) {
            int intValue = ((Integer) a2.first).intValue();
            if (intValue == 4 || intValue == 8) {
                a3.addAll(bVar.a("video/hevc", z, z2));
            } else if (intValue == 9) {
                a3.addAll(bVar.a("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(a3);
    }

    private void a(MediaCodec mediaCodec, int i) {
        aa.a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        aa.a();
        this.f3418a.f++;
    }

    private void a(MediaCodec mediaCodec, int i, int i2) {
        this.D = i;
        this.E = i2;
        this.G = this.C;
        if (ac.f4119a >= 21) {
            int i3 = this.B;
            if (i3 == 90 || i3 == 270) {
                int i4 = this.D;
                this.D = this.E;
                this.E = i4;
                this.G = 1.0f / this.G;
            }
        } else {
            this.F = this.B;
        }
        mediaCodec.setVideoScalingMode(this.s);
    }

    private void a(MediaCodec mediaCodec, int i, long j) {
        L();
        aa.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        aa.a();
        this.A = SystemClock.elapsedRealtime() * 1000;
        this.f3418a.e++;
        this.y = 0;
        J();
    }

    /* JADX WARN: Removed duplicated region for block: B:543:0x0ee0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 3838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer.a(java.lang.String):boolean");
    }

    private static int b(androidx.media2.exoplayer.external.mediacodec.a aVar, Format format) {
        if (format.maxInputSize == -1) {
            return a(aVar, format.sampleMimeType, format.width, format.height);
        }
        int size = format.initializationData.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += format.initializationData.get(i2).length;
        }
        return format.maxInputSize + i;
    }

    private void b(int i) {
        this.f3418a.g += i;
        this.x += i;
        this.y += i;
        this.f3418a.h = Math.max(this.y, this.f3418a.h);
        int i2 = this.j;
        if (i2 > 0 && this.x >= i2) {
            N();
        }
    }

    private void b(MediaCodec mediaCodec, int i) {
        L();
        aa.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        aa.a();
        this.A = SystemClock.elapsedRealtime() * 1000;
        this.f3418a.e++;
        this.y = 0;
        J();
    }

    private boolean b(androidx.media2.exoplayer.external.mediacodec.a aVar) {
        if (ac.f4119a < 23 || this.L || a(aVar.f3436a)) {
            return false;
        }
        return !aVar.g || DummySurface.isSecureSupported(this.f);
    }

    private static boolean f(long j) {
        return j < -30000;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final boolean B() {
        return this.L;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void E() {
        try {
            super.E();
        } finally {
            this.z = 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final boolean G() {
        try {
            return super.G();
        } finally {
            this.z = 0;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final float a(float f, Format[] formatArr) {
        float f2 = -1.0f;
        for (Format format : formatArr) {
            float f3 = format.frameRate;
            f2 = f2;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final int a(androidx.media2.exoplayer.external.mediacodec.a aVar, Format format, Format format2) {
        if (!aVar.a(format, format2, true) || format2.width > this.n.f4205a || format2.height > this.n.f4206b || b(aVar, format2) > this.n.f4207c) {
            return 0;
        }
        return format.initializationDataEquals(format2) ? 3 : 2;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final int a(androidx.media2.exoplayer.external.mediacodec.b bVar, k<o> kVar, Format format) throws MediaCodecUtil.DecoderQueryException {
        if (!m.b(format.sampleMimeType)) {
            return 0;
        }
        DrmInitData drmInitData = format.drmInitData;
        boolean z = drmInitData != null;
        List<androidx.media2.exoplayer.external.mediacodec.a> a2 = a(bVar, format, z, false);
        List<androidx.media2.exoplayer.external.mediacodec.a> list = a2;
        if (z) {
            list = a2;
            if (a2.isEmpty()) {
                list = a(bVar, format, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!(drmInitData == null || o.class.equals(format.exoMediaCryptoType) || (format.exoMediaCryptoType == null && a(kVar, drmInitData)))) {
            return 2;
        }
        androidx.media2.exoplayer.external.mediacodec.a aVar = list.get(0);
        boolean a3 = aVar.a(format);
        int i = aVar.b(format) ? 16 : 8;
        int i2 = 0;
        if (a3) {
            List<androidx.media2.exoplayer.external.mediacodec.a> a4 = a(bVar, format, z, true);
            i2 = 0;
            if (!a4.isEmpty()) {
                androidx.media2.exoplayer.external.mediacodec.a aVar2 = a4.get(0);
                i2 = 0;
                if (aVar2.a(format)) {
                    i2 = 0;
                    if (aVar2.b(format)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (a3 ? 4 : 3) | i | i2;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final MediaCodecRenderer.DecoderException a(Throwable th, androidx.media2.exoplayer.external.mediacodec.a aVar) {
        return new VideoDecoderException(th, aVar, this.q);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final List<androidx.media2.exoplayer.external.mediacodec.a> a(androidx.media2.exoplayer.external.mediacodec.b bVar, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return a(bVar, format, z, this.L);
    }

    @Override // androidx.media2.exoplayer.external.b, androidx.media2.exoplayer.external.af.b
    public final void a(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            Surface surface = (Surface) obj;
            Surface surface2 = surface;
            if (surface == null) {
                surface2 = this.r;
                if (surface2 == null) {
                    androidx.media2.exoplayer.external.mediacodec.a D = D();
                    surface2 = surface;
                    if (D != null) {
                        surface2 = surface;
                        if (b(D)) {
                            surface2 = DummySurface.newInstanceV17(this.f, D.g);
                            this.r = surface2;
                        }
                    }
                }
            }
            if (this.q != surface2) {
                this.q = surface2;
                int i_ = i_();
                MediaCodec C = C();
                if (C != null) {
                    if (ac.f4119a < 23 || surface2 == null || this.o) {
                        E();
                        A();
                    } else {
                        C.setOutputSurface(surface2);
                    }
                }
                if (surface2 == null || surface2 == this.r) {
                    K();
                    I();
                    return;
                }
                M();
                I();
                if (i_ == 2) {
                    H();
                }
            } else if (surface2 != null && surface2 != this.r) {
                M();
                if (this.t) {
                    this.h.a(this.q);
                }
            }
        } else if (i == 4) {
            this.s = ((Integer) obj).intValue();
            MediaCodec C2 = C();
            if (C2 != null) {
                C2.setVideoScalingMode(this.s);
            }
        } else if (i == 6) {
            this.Q = (d) obj;
        } else {
            super.a(i, obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void a(long j, boolean z) throws ExoPlaybackException {
        super.a(j, z);
        I();
        this.u = -9223372036854775807L;
        this.y = 0;
        this.N = -9223372036854775807L;
        int i = this.P;
        if (i != 0) {
            this.O = this.l[i - 1];
            this.P = 0;
        }
        if (z) {
            H();
        } else {
            this.v = -9223372036854775807L;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        a(mediaCodec, z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width"), z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height"));
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(e eVar) {
        this.z++;
        this.N = Math.max(eVar.f2950d, this.N);
        if (ac.f4119a < 23 && this.L) {
            e(eVar.f2950d);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(androidx.media2.exoplayer.external.mediacodec.a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f) {
        a aVar2;
        Pair<Integer, Integer> a2;
        String str = aVar.f3438c;
        Format[] t = t();
        int i = format.width;
        int i2 = format.height;
        int b2 = b(aVar, format);
        if (t.length == 1) {
            int i3 = b2;
            if (b2 != -1) {
                int a3 = a(aVar, format.sampleMimeType, format.width, format.height);
                i3 = b2;
                if (a3 != -1) {
                    i3 = Math.min((int) (b2 * 1.5f), a3);
                }
            }
            aVar2 = new a(i, i2, i3);
        } else {
            boolean z = false;
            int i4 = i2;
            for (Format format2 : t) {
                i = i;
                i4 = i4;
                b2 = b2;
                z = z;
                if (aVar.a(format, format2, false)) {
                    z |= format2.width == -1 || format2.height == -1;
                    i = Math.max(i, format2.width);
                    i4 = Math.max(i4, format2.height);
                    b2 = Math.max(b2, b(aVar, format2));
                }
            }
            int i5 = i;
            int i6 = i4;
            int i7 = b2;
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i);
                sb.append("x");
                sb.append(i4);
                j.a("MediaCodecVideoRenderer", sb.toString());
                Point a4 = a(aVar, format);
                i5 = i;
                i6 = i4;
                i7 = b2;
                if (a4 != null) {
                    i5 = Math.max(i, a4.x);
                    i6 = Math.max(i4, a4.y);
                    i7 = Math.max(b2, a(aVar, format.sampleMimeType, i5, i6));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i5);
                    sb2.append("x");
                    sb2.append(i6);
                    j.a("MediaCodecVideoRenderer", sb2.toString());
                }
            }
            aVar2 = new a(i5, i6, i7);
        }
        this.n = aVar2;
        boolean z2 = this.k;
        int i8 = this.M;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        androidx.media2.exoplayer.external.mediacodec.g.a(mediaFormat, format.initializationData);
        androidx.media2.exoplayer.external.mediacodec.g.a(mediaFormat, "frame-rate", format.frameRate);
        androidx.media2.exoplayer.external.mediacodec.g.a(mediaFormat, "rotation-degrees", format.rotationDegrees);
        androidx.media2.exoplayer.external.mediacodec.g.a(mediaFormat, format.colorInfo);
        if ("video/dolby-vision".equals(format.sampleMimeType) && (a2 = MediaCodecUtil.a(format)) != null) {
            androidx.media2.exoplayer.external.mediacodec.g.a(mediaFormat, "profile", ((Integer) a2.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar2.f4205a);
        mediaFormat.setInteger("max-height", aVar2.f4206b);
        androidx.media2.exoplayer.external.mediacodec.g.a(mediaFormat, "max-input-size", aVar2.f4207c);
        if (ac.f4119a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z2) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i8 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", true);
            mediaFormat.setInteger("audio-session-id", i8);
        }
        if (this.q == null) {
            androidx.media2.exoplayer.external.util.a.b(b(aVar));
            if (this.r == null) {
                this.r = DummySurface.newInstanceV17(this.f, aVar.g);
            }
            this.q = this.r;
        }
        mediaCodec.configure(mediaFormat, this.q, mediaCrypto, 0);
        if (ac.f4119a >= 23 && this.L) {
            this.f4202b = new b(mediaCodec);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(x xVar) throws ExoPlaybackException {
        super.a(xVar);
        final Format format = xVar.f4257c;
        final g.a aVar = this.h;
        if (aVar.f4233b != null) {
            aVar.f4232a.post(new Runnable(aVar, format) { // from class: androidx.media2.exoplayer.external.video.j

                /* renamed from: a  reason: collision with root package name */
                private final g.a f4240a;

                /* renamed from: b  reason: collision with root package name */
                private final Format f4241b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4240a = aVar;
                    this.f4241b = format;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    g.a aVar2 = this.f4240a;
                    aVar2.f4233b.a(this.f4241b);
                }
            });
        }
        this.C = format.pixelWidthHeightRatio;
        this.B = format.rotationDegrees;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void a(final String str, final long j, final long j2) {
        final g.a aVar = this.h;
        if (aVar.f4233b != null) {
            aVar.f4232a.post(new Runnable(aVar, str, j, j2) { // from class: androidx.media2.exoplayer.external.video.i

                /* renamed from: a  reason: collision with root package name */
                private final g.a f4236a;

                /* renamed from: b  reason: collision with root package name */
                private final String f4237b;

                /* renamed from: c  reason: collision with root package name */
                private final long f4238c;

                /* renamed from: d  reason: collision with root package name */
                private final long f4239d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4236a = aVar;
                    this.f4237b = str;
                    this.f4238c = j;
                    this.f4239d = j2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    g.a aVar2 = this.f4236a;
                    aVar2.f4233b.a(this.f4237b, this.f4238c, this.f4239d);
                }
            });
        }
        this.o = a(str);
        androidx.media2.exoplayer.external.mediacodec.a aVar2 = (androidx.media2.exoplayer.external.mediacodec.a) androidx.media2.exoplayer.external.util.a.a(D());
        boolean z = false;
        if (ac.f4119a >= 29) {
            z = false;
            if ("video/x-vnd.on2.vp9".equals(aVar2.f3437b)) {
                MediaCodecInfo.CodecProfileLevel[] a2 = aVar2.a();
                int length = a2.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (a2[i].profile == 16384) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.p = z;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void a(boolean z) throws ExoPlaybackException {
        super.a(z);
        int i = this.M;
        int i2 = u().tunnelingAudioSessionId;
        this.M = i2;
        this.L = i2 != 0;
        if (i2 != i) {
            E();
        }
        final g.a aVar = this.h;
        final d dVar = this.f3418a;
        if (aVar.f4233b != null) {
            aVar.f4232a.post(new Runnable(aVar, dVar) { // from class: androidx.media2.exoplayer.external.video.h

                /* renamed from: a  reason: collision with root package name */
                private final g.a f4234a;

                /* renamed from: b  reason: collision with root package name */
                private final d f4235b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4234a = aVar;
                    this.f4235b = dVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    g.a aVar2 = this.f4234a;
                    aVar2.f4233b.a(this.f4235b);
                }
            });
        }
        e eVar = this.g;
        eVar.i = false;
        if (eVar.f4222a != null) {
            eVar.f4223b.f4230b.sendEmptyMessage(1);
            if (eVar.f4224c != null) {
                e.a aVar2 = eVar.f4224c;
                aVar2.f4226a.registerDisplayListener(aVar2, null);
            }
            eVar.a();
        }
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(Format[] formatArr, long j) throws ExoPlaybackException {
        if (this.O == -9223372036854775807L) {
            this.O = j;
        } else {
            int i = this.P;
            long[] jArr = this.l;
            if (i == jArr.length) {
                long j2 = jArr[i - 1];
                StringBuilder sb = new StringBuilder(65);
                sb.append("Too many stream changes, so dropping offset: ");
                sb.append(j2);
                j.a("MediaCodecVideoRenderer", sb.toString());
            } else {
                this.P = i + 1;
            }
            long[] jArr2 = this.l;
            int i2 = this.P;
            jArr2[i2 - 1] = j;
            this.m[i2 - 1] = this.N;
        }
        super.a(formatArr, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0094, code lost:
        if ((f(r0) && r0 - r7.A > 100000) != false) goto L_0x030a;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x029f  */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [androidx.media2.exoplayer.external.video.e] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r16v16 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v4, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v8 */
    /* JADX WARN: Type inference failed for: r20v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer] */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r8, long r10, android.media.MediaCodec r12, java.nio.ByteBuffer r13, int r14, int r15, long r16, boolean r18, boolean r19) throws androidx.media2.exoplayer.external.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.video.MediaCodecVideoRenderer.a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean, boolean):boolean");
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final boolean a(androidx.media2.exoplayer.external.mediacodec.a aVar) {
        return this.q != null || b(aVar);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void b(androidx.media2.exoplayer.external.b.e eVar) throws ExoPlaybackException {
        if (this.p) {
            ByteBuffer byteBuffer = (ByteBuffer) androidx.media2.exoplayer.external.util.a.a(eVar.e);
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4 && b4 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    MediaCodec C = C();
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("hdr10-plus-info", bArr);
                    C.setParameters(bundle);
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer
    public final void c(long j) {
        this.z--;
        while (true) {
            int i = this.P;
            if (i != 0 && j >= this.m[0]) {
                long[] jArr = this.l;
                this.O = jArr[0];
                int i2 = i - 1;
                this.P = i2;
                System.arraycopy(jArr, 1, jArr, 0, i2);
                long[] jArr2 = this.m;
                System.arraycopy(jArr2, 1, jArr2, 0, this.P);
            } else {
                return;
            }
        }
    }

    protected final void e(long j) {
        Format d2 = d(j);
        if (d2 != null) {
            a(C(), d2.width, d2.height);
        }
        L();
        J();
        c(j);
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void p() {
        super.p();
        this.x = 0;
        this.w = SystemClock.elapsedRealtime();
        this.A = SystemClock.elapsedRealtime() * 1000;
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void q() {
        this.v = -9223372036854775807L;
        N();
        super.q();
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void r() {
        this.N = -9223372036854775807L;
        this.O = -9223372036854775807L;
        this.P = 0;
        K();
        I();
        e eVar = this.g;
        if (eVar.f4222a != null) {
            if (eVar.f4224c != null) {
                e.a aVar = eVar.f4224c;
                aVar.f4226a.unregisterDisplayListener(aVar);
            }
            eVar.f4223b.f4230b.sendEmptyMessage(2);
        }
        this.f4202b = null;
        try {
            super.r();
        } finally {
            this.h.a(this.f3418a);
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.b
    public final void s() {
        try {
            super.s();
            Surface surface = this.r;
            if (surface != null) {
                if (this.q == surface) {
                    this.q = null;
                }
                surface.release();
                this.r = null;
            }
        } catch (Throwable th) {
            if (this.r != null) {
                Surface surface2 = this.q;
                Surface surface3 = this.r;
                if (surface2 == surface3) {
                    this.q = null;
                }
                surface3.release();
                this.r = null;
            }
            throw th;
        }
    }

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecRenderer, androidx.media2.exoplayer.external.ag
    public final boolean x() {
        Surface surface;
        if (super.x() && (this.t || (((surface = this.r) != null && this.q == surface) || C() == null || this.L))) {
            this.v = -9223372036854775807L;
            return true;
        } else if (this.v == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.v) {
                return true;
            }
            this.v = -9223372036854775807L;
            return false;
        }
    }
}
