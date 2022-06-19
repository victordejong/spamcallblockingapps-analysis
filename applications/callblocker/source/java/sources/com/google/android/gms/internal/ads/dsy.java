package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
@TargetApi(16)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsy.class */
public final class dsy extends doy {

    /* renamed from: c */
    private static final int[] f15609c = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: A */
    private int f15610A;

    /* renamed from: B */
    private int f15611B;

    /* renamed from: C */
    private int f15612C;

    /* renamed from: D */
    private float f15613D;

    /* renamed from: E */
    private boolean f15614E;

    /* renamed from: F */
    private int f15615F;

    /* renamed from: G */
    private long f15616G;

    /* renamed from: H */
    private int f15617H;

    /* renamed from: b */
    dsz f15618b;

    /* renamed from: d */
    private final Context f15619d;

    /* renamed from: e */
    private final dtc f15620e;

    /* renamed from: f */
    private final dtd f15621f;

    /* renamed from: g */
    private final long f15622g;

    /* renamed from: h */
    private final int f15623h;

    /* renamed from: i */
    private final boolean f15624i;

    /* renamed from: j */
    private final long[] f15625j;

    /* renamed from: k */
    private dlf[] f15626k;

    /* renamed from: l */
    private dta f15627l;

    /* renamed from: m */
    private Surface f15628m;

    /* renamed from: n */
    private Surface f15629n;

    /* renamed from: o */
    private int f15630o;

    /* renamed from: p */
    private boolean f15631p;

    /* renamed from: q */
    private long f15632q;

    /* renamed from: r */
    private long f15633r;

    /* renamed from: s */
    private int f15634s;

    /* renamed from: t */
    private int f15635t;

    /* renamed from: u */
    private int f15636u;

    /* renamed from: v */
    private float f15637v;

    /* renamed from: w */
    private int f15638w;

    /* renamed from: x */
    private int f15639x;

    /* renamed from: y */
    private int f15640y;

    /* renamed from: z */
    private float f15641z;

    public dsy(Context context, dpa dpaVar, long j, cnz cnzVar, dte dteVar, int i) {
        this(context, dpaVar, 0L, null, false, cnzVar, dteVar, -1);
    }

    private dsy(Context context, dpa dpaVar, long j, dnb<dnc> dnbVar, boolean z, cnz cnzVar, dte dteVar, int i) {
        super(2, dpaVar, null, false);
        this.f15622g = 0L;
        this.f15623h = -1;
        this.f15619d = context.getApplicationContext();
        this.f15620e = new dtc(context);
        this.f15621f = new dtd(cnzVar, dteVar);
        this.f15624i = dsn.f15576a <= 22 && "foster".equals(dsn.f15577b) && "NVIDIA".equals(dsn.f15578c);
        this.f15625j = new long[10];
        this.f15616G = -9223372036854775807L;
        this.f15632q = -9223372036854775807L;
        this.f15638w = -1;
        this.f15639x = -1;
        this.f15641z = -1.0f;
        this.f15637v = -1.0f;
        this.f15630o = 1;
        m8682D();
    }

    /* renamed from: D */
    private final void m8682D() {
        this.f15610A = -1;
        this.f15611B = -1;
        this.f15613D = -1.0f;
        this.f15612C = -1;
    }

    /* renamed from: E */
    private final void m8681E() {
        if (this.f15610A == this.f15638w && this.f15611B == this.f15639x && this.f15612C == this.f15640y && this.f15613D == this.f15641z) {
            return;
        }
        this.f15621f.m8642a(this.f15638w, this.f15639x, this.f15640y, this.f15641z);
        this.f15610A = this.f15638w;
        this.f15611B = this.f15639x;
        this.f15612C = this.f15640y;
        this.f15613D = this.f15641z;
    }

    /* renamed from: F */
    private final void m8680F() {
        if (this.f15610A == -1 && this.f15611B == -1) {
            return;
        }
        this.f15621f.m8642a(this.f15638w, this.f15639x, this.f15640y, this.f15641z);
    }

    /* renamed from: G */
    private final void m8679G() {
        if (this.f15634s > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f15621f.m8641a(this.f15634s, elapsedRealtime - this.f15633r);
            this.f15634s = 0;
            this.f15633r = elapsedRealtime;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static int m8667a(String str, int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5;
        if (i != -1 && i2 != -1) {
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
                    i4 = i * i2;
                    i5 = 2;
                    i3 = (i4 * 3) / (i5 * 2);
                    break;
                case true:
                    if (!"BRAVIA 4K 2015".equals(dsn.f15579d)) {
                        i4 = ((dsn.m8708a(i, 16) * dsn.m8708a(i2, 16)) << 4) << 4;
                        i5 = 2;
                        i3 = (i4 * 3) / (i5 * 2);
                        break;
                    } else {
                        i3 = -1;
                        break;
                    }
                case true:
                    i4 = i * i2;
                    i5 = 2;
                    i3 = (i4 * 3) / (i5 * 2);
                    break;
                case true:
                case true:
                    i4 = i * i2;
                    i5 = 4;
                    i3 = (i4 * 3) / (i5 * 2);
                    break;
                default:
                    i3 = -1;
                    break;
            }
        } else {
            i3 = -1;
        }
        return i3;
    }

    /* renamed from: a */
    private final void m8675a(MediaCodec mediaCodec, int i, long j) {
        dso.m8691a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        dso.m8692a();
        this.f15243a.f14865e++;
    }

    @TargetApi(21)
    /* renamed from: a */
    private final void m8674a(MediaCodec mediaCodec, int i, long j, long j2) {
        m8681E();
        dso.m8691a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        dso.m8692a();
        this.f15243a.f14864d++;
        this.f15635t = 0;
        m8652v();
    }

    /* renamed from: a */
    private static boolean m8664a(boolean z, dlf dlfVar, dlf dlfVar2) {
        return dlfVar.f14635c.equals(dlfVar2.f14635c) && m8657d(dlfVar) == m8657d(dlfVar2) && (z || (dlfVar.f14639g == dlfVar2.f14639g && dlfVar.f14640h == dlfVar2.f14640h));
    }

    /* renamed from: b */
    private final void m8662b(MediaCodec mediaCodec, int i, long j) {
        m8681E();
        dso.m8691a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        dso.m8692a();
        this.f15243a.f14864d++;
        this.f15635t = 0;
        m8652v();
    }

    /* renamed from: b */
    private final boolean m8660b(boolean z) {
        return dsn.f15576a >= 23 && !this.f15614E && (!z || dsu.m8688a(this.f15619d));
    }

    /* renamed from: c */
    private static int m8658c(dlf dlfVar) {
        return dlfVar.f14636d != -1 ? dlfVar.f14636d : m8667a(dlfVar.f14635c, dlfVar.f14639g, dlfVar.f14640h);
    }

    /* renamed from: c */
    private static boolean m8659c(long j) {
        return j < -30000;
    }

    /* renamed from: d */
    private static int m8657d(dlf dlfVar) {
        return dlfVar.f14642j == -1 ? 0 : dlfVar.f14642j;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: w */
    private final void m8651w() {
        this.f15632q = this.f15622g > 0 ? SystemClock.elapsedRealtime() + this.f15622g : (char) 1;
    }

    /* renamed from: x */
    private final void m8650x() {
        MediaCodec m8970A;
        this.f15631p = false;
        if (dsn.f15576a < 23 || !this.f15614E || (m8970A = m8970A()) == null) {
            return;
        }
        this.f15618b = new dsz(this, m8970A);
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: C */
    public final void mo8683C() {
        try {
            super.mo8683C();
            if (this.f15629n == null) {
                return;
            }
            if (this.f15628m == this.f15629n) {
                this.f15628m = null;
            }
            this.f15629n.release();
            this.f15629n = null;
        } catch (Throwable th) {
            if (this.f15629n != null) {
                if (this.f15628m == this.f15629n) {
                    this.f15628m = null;
                }
                this.f15629n.release();
                this.f15629n = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final int mo8668a(dpa dpaVar, dlf dlfVar) {
        boolean z;
        int i = 0;
        int i2 = 0;
        String str = dlfVar.f14635c;
        if (dsg.m8751b(str)) {
            dmw dmwVar = dlfVar.f14638f;
            if (dmwVar != null) {
                int i3 = 0;
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (i3 >= dmwVar.f14871a) {
                        break;
                    }
                    z2 |= dmwVar.m9082a(i3).f14874a;
                    i3++;
                }
            } else {
                z = false;
            }
            doz mo8939a = dpaVar.mo8939a(str, z);
            if (mo8939a == null) {
                i2 = 1;
            } else {
                boolean m8949b = mo8939a.m8949b(dlfVar.f14634b);
                boolean z3 = m8949b;
                if (m8949b) {
                    z3 = m8949b;
                    if (dlfVar.f14639g > 0) {
                        z3 = m8949b;
                        if (dlfVar.f14640h > 0) {
                            if (dsn.f15576a >= 21) {
                                z3 = mo8939a.m8954a(dlfVar.f14639g, dlfVar.f14640h, dlfVar.f14641i);
                            } else {
                                boolean z4 = dlfVar.f14639g * dlfVar.f14640h <= dpb.m8942b();
                                z3 = z4;
                                if (!z4) {
                                    int i4 = dlfVar.f14639g;
                                    int i5 = dlfVar.f14640h;
                                    String str2 = dsn.f15580e;
                                    Log.d("MediaCodecVideoRenderer", new StringBuilder(String.valueOf(str2).length() + 56).append("FalseCheck [legacyFrameSize, ").append(i4).append("x").append(i5).append("] [").append(str2).append("]").toString());
                                    z3 = z4;
                                }
                            }
                        }
                    }
                }
                int i6 = mo8939a.f15269b ? 8 : 4;
                if (mo8939a.f15270c) {
                    i = 16;
                }
                i2 = i | i6 | (z3 ? 3 : 2);
            }
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.dkq, com.google.android.gms.internal.ads.dkv
    /* renamed from: a */
    public final void mo8678a(int i, Object obj) {
        if (i != 1) {
            if (i != 4) {
                super.mo8678a(i, obj);
                return;
            }
            this.f15630o = ((Integer) obj).intValue();
            MediaCodec m8970A = m8970A();
            if (m8970A == null) {
                return;
            }
            m8970A.setVideoScalingMode(this.f15630o);
            return;
        }
        Surface surface = (Surface) obj;
        Surface surface2 = surface;
        if (surface == null) {
            if (this.f15629n != null) {
                surface2 = this.f15629n;
            } else {
                doz m8969B = m8969B();
                surface2 = surface;
                if (m8969B != null) {
                    surface2 = surface;
                    if (m8660b(m8969B.f15271d)) {
                        this.f15629n = dsu.m8687a(this.f15619d, m8969B.f15271d);
                        surface2 = this.f15629n;
                    }
                }
            }
        }
        if (this.f15628m == surface2) {
            if (surface2 == null || surface2 == this.f15629n) {
                return;
            }
            m8680F();
            if (!this.f15631p) {
                return;
            }
            this.f15621f.m8640a(this.f15628m);
            return;
        }
        this.f15628m = surface2;
        int mo9212d = mo9212d();
        if (mo9212d == 1 || mo9212d == 2) {
            MediaCodec m8970A2 = m8970A();
            if (dsn.f15576a < 23 || m8970A2 == null || surface2 == null) {
                mo8683C();
                m8958z();
            } else {
                m8970A2.setOutputSurface(surface2);
            }
        }
        if (surface2 == null || surface2 == this.f15629n) {
            m8682D();
            m8650x();
            return;
        }
        m8680F();
        m8650x();
        if (mo9212d != 2) {
            return;
        }
        m8651w();
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: a */
    public final void mo8676a(long j, boolean z) {
        super.mo8676a(j, z);
        m8650x();
        this.f15635t = 0;
        if (this.f15617H != 0) {
            this.f15616G = this.f15625j[this.f15617H - 1];
            this.f15617H = 0;
        }
        if (z) {
            m8651w();
        } else {
            this.f15632q = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final void mo8673a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        this.f15638w = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        this.f15639x = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.f15641z = this.f15637v;
        if (dsn.f15576a < 21) {
            this.f15640y = this.f15636u;
        } else if (this.f15636u == 90 || this.f15636u == 270) {
            int i = this.f15638w;
            this.f15638w = this.f15639x;
            this.f15639x = i;
            this.f15641z = 1.0f / this.f15641z;
        }
        mediaCodec.setVideoScalingMode(this.f15630o);
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final void mo8671a(dmx dmxVar) {
        if (dsn.f15576a >= 23 || !this.f15614E) {
            return;
        }
        m8652v();
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x01ff, code lost:
        r11 = null;
     */
    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo8669a(com.google.android.gms.internal.ads.doz r8, android.media.MediaCodec r9, com.google.android.gms.internal.ads.dlf r10, android.media.MediaCrypto r11) {
        /*
            Method dump skipped, instructions count: 823
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dsy.mo8669a(com.google.android.gms.internal.ads.doz, android.media.MediaCodec, com.google.android.gms.internal.ads.dlf, android.media.MediaCrypto):void");
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final void mo8666a(String str, long j, long j2) {
        this.f15621f.m8636a(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: a */
    public final void mo8665a(boolean z) {
        super.mo8665a(z);
        this.f15615F = m9308q().f14665b;
        this.f15614E = this.f15615F != 0;
        this.f15621f.m8638a(this.f15243a);
        this.f15620e.m8646a();
    }

    @Override // com.google.android.gms.internal.ads.dkq
    /* renamed from: a */
    public final void mo8663a(dlf[] dlfVarArr, long j) {
        this.f15626k = dlfVarArr;
        if (this.f15616G == -9223372036854775807L) {
            this.f15616G = j;
        } else {
            if (this.f15617H == this.f15625j.length) {
                Log.w("MediaCodecVideoRenderer", new StringBuilder(65).append("Too many stream changes, so dropping offset: ").append(this.f15625j[this.f15617H - 1]).toString());
            } else {
                this.f15617H++;
            }
            this.f15625j[this.f15617H - 1] = j;
        }
        super.mo8663a(dlfVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final boolean mo8677a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        boolean z2;
        while (this.f15617H != 0 && j3 >= this.f15625j[0]) {
            this.f15616G = this.f15625j[0];
            this.f15617H--;
            System.arraycopy(this.f15625j, 1, this.f15625j, 0, this.f15617H);
        }
        long j4 = j3 - this.f15616G;
        if (z) {
            m8675a(mediaCodec, i, j4);
            z2 = true;
        } else {
            long j5 = j3 - j;
            if (this.f15628m == this.f15629n) {
                if (m8659c(j5)) {
                    m8675a(mediaCodec, i, j4);
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else if (!this.f15631p) {
                if (dsn.f15576a >= 21) {
                    m8674a(mediaCodec, i, j4, System.nanoTime());
                } else {
                    m8662b(mediaCodec, i, j4);
                }
                z2 = true;
            } else if (mo9212d() != 2) {
                z2 = false;
            } else {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long nanoTime = System.nanoTime();
                long m8645a = this.f15620e.m8645a(j3, ((j5 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
                long j6 = (m8645a - nanoTime) / 1000;
                if (m8659c(j6)) {
                    dso.m8691a("dropVideoBuffer");
                    mediaCodec.releaseOutputBuffer(i, false);
                    dso.m8692a();
                    this.f15243a.f14866f++;
                    this.f15634s++;
                    this.f15635t++;
                    this.f15243a.f14867g = Math.max(this.f15635t, this.f15243a.f14867g);
                    if (this.f15634s == this.f15623h) {
                        m8679G();
                    }
                    z2 = true;
                } else if (dsn.f15576a >= 21) {
                    if (j6 < 50000) {
                        m8674a(mediaCodec, i, j4, m8645a);
                        z2 = true;
                    }
                    z2 = false;
                } else {
                    if (j6 < 30000) {
                        if (j6 > 11000) {
                            try {
                                Thread.sleep((j6 - 10000) / 1000);
                            } catch (InterruptedException e) {
                                Thread.currentThread().interrupt();
                            }
                        }
                        m8662b(mediaCodec, i, j4);
                        z2 = true;
                    }
                    z2 = false;
                }
            }
        }
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final boolean mo8672a(MediaCodec mediaCodec, boolean z, dlf dlfVar, dlf dlfVar2) {
        return m8664a(z, dlfVar, dlfVar2) && dlfVar2.f14639g <= this.f15627l.f15643a && dlfVar2.f14640h <= this.f15627l.f15644b && dlfVar2.f14636d <= this.f15627l.f15645c;
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: a */
    protected final boolean mo8670a(doz dozVar) {
        return this.f15628m != null || m8660b(dozVar.f15271d);
    }

    @Override // com.google.android.gms.internal.ads.doy
    /* renamed from: b */
    public final void mo8661b(dlf dlfVar) {
        super.mo8661b(dlfVar);
        this.f15621f.m8639a(dlfVar);
        this.f15637v = dlfVar.f14643k == -1.0f ? 1.0f : dlfVar.f14643k;
        this.f15636u = m8657d(dlfVar);
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: n */
    public final void mo8656n() {
        super.mo8656n();
        this.f15634s = 0;
        this.f15633r = SystemClock.elapsedRealtime();
        this.f15632q = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: o */
    public final void mo8655o() {
        m8679G();
        super.mo8655o();
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dkq
    /* renamed from: p */
    public final void mo8654p() {
        this.f15638w = -1;
        this.f15639x = -1;
        this.f15641z = -1.0f;
        this.f15637v = -1.0f;
        this.f15616G = -9223372036854775807L;
        this.f15617H = 0;
        m8682D();
        m8650x();
        this.f15620e.m8644b();
        this.f15618b = null;
        this.f15614E = false;
        try {
            super.mo8654p();
        } finally {
            this.f15243a.m9088a();
            this.f15621f.m8635b(this.f15243a);
        }
    }

    @Override // com.google.android.gms.internal.ads.doy, com.google.android.gms.internal.ads.dli
    /* renamed from: t */
    public final boolean mo8653t() {
        boolean z = true;
        if (super.mo8653t() && (this.f15631p || ((this.f15629n != null && this.f15628m == this.f15629n) || m8970A() == null))) {
            this.f15632q = -9223372036854775807L;
        } else if (this.f15632q == -9223372036854775807L) {
            z = false;
        } else if (SystemClock.elapsedRealtime() >= this.f15632q) {
            this.f15632q = -9223372036854775807L;
            z = false;
        }
        return z;
    }

    /* renamed from: v */
    public final void m8652v() {
        if (!this.f15631p) {
            this.f15631p = true;
            this.f15621f.m8640a(this.f15628m);
        }
    }
}
