package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.zhy.http.okhttp.OkHttpUtils;
import java.nio.ByteBuffer;
@TargetApi(16)
/* renamed from: com.google.android.gms.internal.ads.zi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zi.class */
public final class C7220zi extends AbstractC6588if {

    /* renamed from: Q */
    private final Context f32931Q;

    /* renamed from: R */
    private final C6331bj f32932R;

    /* renamed from: S */
    private final C6629jj f32933S;

    /* renamed from: T */
    private final boolean f32934T;

    /* renamed from: U */
    private final long[] f32935U;

    /* renamed from: V */
    private zzanm[] f32936V;

    /* renamed from: W */
    private C7183yi f32937W;

    /* renamed from: X */
    private Surface f32938X;

    /* renamed from: Y */
    private Surface f32939Y;

    /* renamed from: Z */
    private boolean f32940Z;

    /* renamed from: a0 */
    private long f32941a0;

    /* renamed from: b0 */
    private long f32942b0;

    /* renamed from: c0 */
    private int f32943c0;

    /* renamed from: d0 */
    private int f32944d0;

    /* renamed from: e0 */
    private int f32945e0;

    /* renamed from: f0 */
    private float f32946f0;

    /* renamed from: g0 */
    private int f32947g0;

    /* renamed from: h0 */
    private int f32948h0;

    /* renamed from: i0 */
    private int f32949i0;

    /* renamed from: j0 */
    private float f32950j0;

    /* renamed from: k0 */
    private int f32951k0;

    /* renamed from: l0 */
    private int f32952l0;

    /* renamed from: m0 */
    private int f32953m0;

    /* renamed from: n0 */
    private float f32954n0;

    /* renamed from: o0 */
    private long f32955o0;

    /* renamed from: p0 */
    private int f32956p0;

    public C7220zi(Context context, AbstractC6662kf abstractC6662kf, long j, Handler handler, AbstractC6666kj abstractC6666kj, int i) {
        super(2, abstractC6662kf, null, false);
        this.f32931Q = context.getApplicationContext();
        this.f32932R = new C6331bj(context);
        this.f32933S = new C6629jj(handler, abstractC6666kj);
        boolean z = false;
        if (C6961si.f29514a <= 22) {
            z = false;
            if ("foster".equals(C6961si.f29515b)) {
                z = false;
                if ("NVIDIA".equals(C6961si.f29516c)) {
                    z = true;
                }
            }
        }
        this.f32934T = z;
        this.f32935U = new long[10];
        this.f32955o0 = -9223372036854775807L;
        this.f32941a0 = -9223372036854775807L;
        this.f32947g0 = -1;
        this.f32948h0 = -1;
        this.f32950j0 = -1.0f;
        this.f32946f0 = -1.0f;
        m8367b0();
    }

    /* renamed from: a0 */
    private final boolean m8368a0(boolean z) {
        boolean z2 = true;
        if (C6961si.f29514a >= 23) {
            if (z) {
                if (zzavk.m8094a(this.f32931Q)) {
                    return true;
                }
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    /* renamed from: b0 */
    private final void m8367b0() {
        this.f32951k0 = -1;
        this.f32952l0 = -1;
        this.f32954n0 = -1.0f;
        this.f32953m0 = -1;
    }

    /* renamed from: e0 */
    private final void m8365e0() {
        int i = this.f32951k0;
        int i2 = this.f32947g0;
        if (i == i2 && this.f32952l0 == this.f32948h0 && this.f32953m0 == this.f32949i0 && this.f32954n0 == this.f32950j0) {
            return;
        }
        this.f32933S.m14110f(i2, this.f32948h0, this.f32949i0, this.f32950j0);
        this.f32951k0 = this.f32947g0;
        this.f32952l0 = this.f32948h0;
        this.f32953m0 = this.f32949i0;
        this.f32954n0 = this.f32950j0;
    }

    /* renamed from: f0 */
    private final void m8364f0() {
        if (this.f32951k0 == -1 && this.f32952l0 == -1) {
            return;
        }
        this.f32933S.m14110f(this.f32947g0, this.f32948h0, this.f32949i0, this.f32950j0);
    }

    /* renamed from: g0 */
    private final void m8363g0() {
        if (this.f32943c0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f32933S.m14111e(this.f32943c0, elapsedRealtime - this.f32942b0);
            this.f32943c0 = 0;
            this.f32942b0 = elapsedRealtime;
        }
    }

    /* renamed from: h0 */
    private static boolean m8362h0(long j) {
        return j < -30000;
    }

    /* renamed from: i0 */
    private static int m8361i0(zzanm zzanmVar) {
        int i = zzanmVar.f33562p;
        int i2 = i;
        if (i == -1) {
            i2 = 0;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: B */
    protected final int mo8383B(AbstractC6662kf abstractC6662kf, zzanm zzanmVar) {
        boolean z;
        String str = zzanmVar.f33555i;
        int i = 0;
        if (!C6553hi.m14640b(str)) {
            return 0;
        }
        zzapk zzapkVar = zzanmVar.f33558l;
        if (zzapkVar != null) {
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                z = z2;
                if (i2 >= zzapkVar.f33580f) {
                    break;
                }
                z2 |= zzapkVar.m8098a(i2).f33577h;
                i2++;
            }
        } else {
            z = false;
        }
        C6550hf m11913a = C6884qf.m11913a(str, z);
        if (m11913a == null) {
            return 1;
        }
        boolean m14683d = m11913a.m14683d(zzanmVar.f33552f);
        boolean z3 = m14683d;
        if (m14683d) {
            int i3 = zzanmVar.f33559m;
            z3 = m14683d;
            if (i3 > 0) {
                int i4 = zzanmVar.f33560n;
                z3 = m14683d;
                if (i4 > 0) {
                    if (C6961si.f29514a >= 21) {
                        z3 = m11913a.m14682e(i3, i4, zzanmVar.f33561o);
                    } else {
                        boolean z4 = i3 * i4 <= C6884qf.m11911c();
                        z3 = z4;
                        if (!z4) {
                            int i5 = zzanmVar.f33559m;
                            int i6 = zzanmVar.f33560n;
                            String str2 = C6961si.f29518e;
                            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 56);
                            sb.append("FalseCheck [legacyFrameSize, ");
                            sb.append(i5);
                            sb.append("x");
                            sb.append(i6);
                            sb.append("] [");
                            sb.append(str2);
                            sb.append("]");
                            Log.d("MediaCodecVideoRenderer", sb.toString());
                            z3 = z4;
                        }
                    }
                }
            }
        }
        int i7 = true != m11913a.f23882b ? 4 : 8;
        if (true == m11913a.f23883c) {
            i = 16;
        }
        return (true != z3 ? 2 : 3) | i7 | i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: I */
    public final boolean mo8382I() {
        Surface surface;
        if (super.mo8382I() && (this.f32940Z || (((surface = this.f32939Y) != null && this.f32938X == surface) || m14411R() == null))) {
            this.f32941a0 = -9223372036854775807L;
            return true;
        } else if (this.f32941a0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f32941a0) {
                return true;
            }
            this.f32941a0 = -9223372036854775807L;
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: J */
    protected final void mo8381J(C6550hf c6550hf, MediaCodec mediaCodec, zzanm zzanmVar, MediaCrypto mediaCrypto) {
        boolean z;
        int i;
        zzanm[] zzanmVarArr = this.f32936V;
        int i2 = zzanmVar.f33559m;
        int i3 = zzanmVar.f33560n;
        int i4 = zzanmVar.f33556j;
        int i5 = i4;
        if (i4 == -1) {
            String str = zzanmVar.f33555i;
            if (i2 != -1 && i3 != -1) {
                int i6 = 4;
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
                if (z && !z) {
                    if (!z) {
                        if (!z) {
                            if (z || z) {
                                i = i2 * i3;
                                i5 = (i * 3) / (i6 + i6);
                            }
                        }
                    } else if (!"BRAVIA 4K 2015".equals(C6961si.f29517d)) {
                        i = C6961si.m11017e(i2, 16) * C6961si.m11017e(i3, 16) * 256;
                        i6 = 2;
                        i5 = (i * 3) / (i6 + i6);
                    }
                }
                i = i2 * i3;
                i6 = 2;
                i5 = (i * 3) / (i6 + i6);
            }
            i5 = -1;
        }
        int length = zzanmVarArr.length;
        C7183yi c7183yi = new C7183yi(i2, i3, i5);
        this.f32937W = c7183yi;
        boolean z2 = this.f32934T;
        MediaFormat m8101l = zzanmVar.m8101l();
        m8101l.setInteger("max-width", c7183yi.f32514a);
        m8101l.setInteger("max-height", c7183yi.f32515b);
        int i7 = c7183yi.f32516c;
        if (i7 != -1) {
            m8101l.setInteger("max-input-size", i7);
        }
        if (z2) {
            m8101l.setInteger("auto-frc", 0);
        }
        if (this.f32938X == null) {
            C6367ci.m16039d(m8368a0(c6550hf.f23884d));
            if (this.f32939Y == null) {
                this.f32939Y = zzavk.m8093b(this.f32931Q, c6550hf.f23884d);
            }
            this.f32938X = this.f32939Y;
        }
        mediaCodec.configure(m8101l, this.f32938X, (MediaCrypto) null, 0);
        int i8 = C6961si.f29514a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: K */
    protected final void mo8380K(String str, long j, long j2) {
        this.f32933S.m14113c(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: L */
    public final void mo8379L(zzanm zzanmVar) {
        super.mo8379L(zzanmVar);
        this.f32933S.m14112d(zzanmVar);
        float f = zzanmVar.f33563q;
        float f2 = f;
        if (f == -1.0f) {
            f2 = 1.0f;
        }
        this.f32946f0 = f2;
        this.f32945e0 = m8361i0(zzanmVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: M */
    protected final void mo8378M(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        boolean z = false;
        if (mediaFormat.containsKey("crop-right")) {
            z = false;
            if (mediaFormat.containsKey("crop-left")) {
                z = false;
                if (mediaFormat.containsKey("crop-bottom")) {
                    z = false;
                    if (mediaFormat.containsKey("crop-top")) {
                        z = true;
                    }
                }
            }
        }
        this.f32947g0 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.f32948h0 = integer;
        float f = this.f32946f0;
        this.f32950j0 = f;
        if (C6961si.f29514a >= 21) {
            int i = this.f32945e0;
            if (i == 90 || i == 270) {
                int i2 = this.f32947g0;
                this.f32947g0 = integer;
                this.f32948h0 = i2;
                this.f32950j0 = 1.0f / f;
            }
        } else {
            this.f32949i0 = this.f32945e0;
        }
        mediaCodec.setVideoScalingMode(1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: N */
    protected final boolean mo8377N(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) {
        while (true) {
            int i3 = this.f32956p0;
            if (i3 == 0) {
                break;
            }
            long[] jArr = this.f32935U;
            long j4 = jArr[0];
            if (j3 < j4) {
                break;
            }
            this.f32955o0 = j4;
            int i4 = i3 - 1;
            this.f32956p0 = i4;
            System.arraycopy(jArr, 1, jArr, 0, i4);
        }
        long j5 = j3 - this.f32955o0;
        if (z) {
            m8372W(mediaCodec, i, j5);
            return true;
        }
        long j6 = j3 - j;
        if (this.f32938X == this.f32939Y) {
            if (!m8362h0(j6)) {
                return false;
            }
            m8372W(mediaCodec, i, j5);
            return true;
        } else if (!this.f32940Z) {
            if (C6961si.f29514a >= 21) {
                m8370Y(mediaCodec, i, j5, System.nanoTime());
                return true;
            }
            m8371X(mediaCodec, i, j5);
            return true;
        } else if (mo10365a() != 2) {
            return false;
        } else {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long nanoTime = System.nanoTime();
            long m16334c = this.f32932R.m16334c(j3, ((j6 - ((elapsedRealtime * 1000) - j2)) * 1000) + nanoTime);
            long j7 = (m16334c - nanoTime) / 1000;
            if (!m8362h0(j7)) {
                if (C6961si.f29514a >= 21) {
                    if (j7 >= 50000) {
                        return false;
                    }
                    m8370Y(mediaCodec, i, j5, m16334c);
                    return true;
                } else if (j7 >= 30000) {
                    return false;
                } else {
                    if (j7 > 11000) {
                        try {
                            Thread.sleep((j7 - OkHttpUtils.DEFAULT_MILLISECONDS) / 1000);
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                        }
                    }
                    m8371X(mediaCodec, i, j5);
                    return true;
                }
            }
            C6887qi.m11884a("dropVideoBuffer");
            mediaCodec.releaseOutputBuffer(i, false);
            C6887qi.m11883b();
            C6511gd c6511gd = this.f24237P;
            c6511gd.f23309f++;
            this.f32943c0++;
            int i5 = this.f32944d0 + 1;
            this.f32944d0 = i5;
            c6511gd.f23310g = Math.max(i5, c6511gd.f23310g);
            if (this.f32943c0 != -1) {
                return true;
            }
            m8363g0();
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: Q */
    protected final boolean mo8376Q(C6550hf c6550hf) {
        return this.f32938X != null || m8368a0(c6550hf.f23884d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: T */
    public final void mo8375T() {
        try {
            super.mo8375T();
            Surface surface = this.f32939Y;
            if (surface == null) {
                return;
            }
            if (this.f32938X == surface) {
                this.f32938X = null;
            }
            surface.release();
            this.f32939Y = null;
        } catch (Throwable th) {
            Surface surface2 = this.f32939Y;
            if (surface2 != null) {
                if (this.f32938X == surface2) {
                    this.f32938X = null;
                }
                surface2.release();
                this.f32939Y = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: U */
    protected final void mo8374U(C6548hd c6548hd) {
        int i = C6961si.f29514a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if
    /* renamed from: V */
    protected final boolean mo8373V(MediaCodec mediaCodec, boolean z, zzanm zzanmVar, zzanm zzanmVar2) {
        if (!zzanmVar.f33555i.equals(zzanmVar2.f33555i) || m8361i0(zzanmVar) != m8361i0(zzanmVar2)) {
            return false;
        }
        if (!z && (zzanmVar.f33559m != zzanmVar2.f33559m || zzanmVar.f33560n != zzanmVar2.f33560n)) {
            return false;
        }
        int i = zzanmVar2.f33559m;
        C7183yi c7183yi = this.f32937W;
        return i <= c7183yi.f32514a && zzanmVar2.f33560n <= c7183yi.f32515b && zzanmVar2.f33556j <= c7183yi.f32516c;
    }

    /* renamed from: W */
    protected final void m8372W(MediaCodec mediaCodec, int i, long j) {
        C6887qi.m11884a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        C6887qi.m11883b();
        this.f24237P.f23308e++;
    }

    /* renamed from: X */
    protected final void m8371X(MediaCodec mediaCodec, int i, long j) {
        m8365e0();
        C6887qi.m11884a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        C6887qi.m11883b();
        this.f24237P.f23307d++;
        this.f32944d0 = 0;
        m8369Z();
    }

    @TargetApi(21)
    /* renamed from: Y */
    protected final void m8370Y(MediaCodec mediaCodec, int i, long j, long j2) {
        m8365e0();
        C6887qi.m11884a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j2);
        C6887qi.m11883b();
        this.f24237P.f23307d++;
        this.f32944d0 = 0;
        m8369Z();
    }

    /* renamed from: Z */
    final void m8369Z() {
        if (!this.f32940Z) {
            this.f32940Z = true;
            this.f32933S.m14109g(this.f32938X);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6509gb
    /* renamed from: c */
    public final void mo8366c(int i, Object obj) {
        if (i == 1) {
            Surface surface = (Surface) obj;
            zzavk zzavkVar = surface;
            if (surface == null) {
                zzavkVar = this.f32939Y;
                if (zzavkVar == null) {
                    C6550hf m14410S = m14410S();
                    zzavkVar = surface;
                    if (m14410S != null) {
                        zzavkVar = surface;
                        if (m8368a0(m14410S.f23884d)) {
                            zzavkVar = zzavk.m8093b(this.f32931Q, m14410S.f23884d);
                            this.f32939Y = zzavkVar;
                        }
                    }
                }
            }
            if (this.f32938X == zzavkVar) {
                if (zzavkVar == null || zzavkVar == this.f32939Y) {
                    return;
                }
                m8364f0();
                if (!this.f32940Z) {
                    return;
                }
                this.f32933S.m14109g(this.f32938X);
                return;
            }
            this.f32938X = zzavkVar;
            int mo10365a = mo10365a();
            if (mo10365a == 1 || mo10365a == 2) {
                MediaCodec m14411R = m14411R();
                if (C6961si.f29514a < 23 || m14411R == null || zzavkVar == null) {
                    mo8375T();
                    m14412P();
                } else {
                    m14411R.setOutputSurface(zzavkVar);
                }
            }
            if (zzavkVar == null || zzavkVar == this.f32939Y) {
                m8367b0();
                this.f32940Z = false;
                int i2 = C6961si.f29514a;
                return;
            }
            m8364f0();
            this.f32940Z = false;
            int i3 = C6961si.f29514a;
            if (mo10365a != 2) {
                return;
            }
            this.f32941a0 = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: q */
    public final void mo8360q(boolean z) {
        super.mo8360q(z);
        int i = m16090w().f31496b;
        this.f32933S.m14114b(this.f24237P);
        this.f32932R.m16336a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: r */
    protected final void mo8359r(zzanm[] zzanmVarArr, long j) {
        this.f32936V = zzanmVarArr;
        if (this.f32955o0 == -9223372036854775807L) {
            this.f32955o0 = j;
            return;
        }
        int i = this.f32956p0;
        if (i == 10) {
            long j2 = this.f32935U[9];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j2);
            Log.w("MediaCodecVideoRenderer", sb.toString());
        } else {
            this.f32956p0 = i + 1;
        }
        this.f32935U[this.f32956p0 - 1] = j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: s */
    public final void mo8358s(long j, boolean z) {
        super.mo8358s(j, z);
        this.f32940Z = false;
        int i = C6961si.f29514a;
        this.f32944d0 = 0;
        int i2 = this.f32956p0;
        if (i2 != 0) {
            this.f32955o0 = this.f32935U[i2 - 1];
            this.f32956p0 = 0;
        }
        this.f32941a0 = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: t */
    protected final void mo8357t() {
        this.f32943c0 = 0;
        this.f32942b0 = SystemClock.elapsedRealtime();
        this.f32941a0 = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: u */
    protected final void mo8356u() {
        m8363g0();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6588if, com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: v */
    public final void mo8355v() {
        this.f32947g0 = -1;
        this.f32948h0 = -1;
        this.f32950j0 = -1.0f;
        this.f32946f0 = -1.0f;
        this.f32955o0 = -9223372036854775807L;
        this.f32956p0 = 0;
        m8367b0();
        this.f32940Z = false;
        int i = C6961si.f29514a;
        this.f32932R.m16335b();
        try {
            super.mo8355v();
        } finally {
            this.f24237P.m14962a();
            this.f32933S.m14108h(this.f24237P);
        }
    }
}
