package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zo3.class */
public final class zo3 extends ey2 {

    /* renamed from: E0 */
    private static final int[] f33021E0 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: F0 */
    private static boolean f33022F0;

    /* renamed from: G0 */
    private static boolean f33023G0;

    /* renamed from: H0 */
    private final Context f33024H0;

    /* renamed from: I0 */
    private final ip3 f33025I0;

    /* renamed from: J0 */
    private final tp3 f33026J0;

    /* renamed from: L0 */
    private yo3 f33028L0;

    /* renamed from: M0 */
    private boolean f33029M0;

    /* renamed from: N0 */
    private boolean f33030N0;

    /* renamed from: O0 */
    private Surface f33031O0;

    /* renamed from: P0 */
    private zzlu f33032P0;

    /* renamed from: Q0 */
    private boolean f33033Q0;

    /* renamed from: S0 */
    private boolean f33035S0;

    /* renamed from: T0 */
    private boolean f33036T0;

    /* renamed from: U0 */
    private boolean f33037U0;

    /* renamed from: V0 */
    private long f33038V0;

    /* renamed from: X0 */
    private long f33040X0;

    /* renamed from: Y0 */
    private int f33041Y0;

    /* renamed from: Z0 */
    private int f33042Z0;

    /* renamed from: a1 */
    private int f33043a1;

    /* renamed from: b1 */
    private long f33044b1;

    /* renamed from: c1 */
    private long f33045c1;

    /* renamed from: d1 */
    private long f33046d1;

    /* renamed from: e1 */
    private int f33047e1;

    /* renamed from: h1 */
    private int f33050h1;

    /* renamed from: l1 */
    private ap3 f33054l1;

    /* renamed from: K0 */
    private final boolean f33027K0 = "NVIDIA".equals(C7101wa.f31477c);

    /* renamed from: W0 */
    private long f33039W0 = -9223372036854775807L;

    /* renamed from: f1 */
    private int f33048f1 = -1;

    /* renamed from: g1 */
    private int f33049g1 = -1;

    /* renamed from: i1 */
    private float f33051i1 = -1.0f;

    /* renamed from: R0 */
    private int f33034R0 = 1;

    /* renamed from: k1 */
    private int f33053k1 = 0;

    /* renamed from: j1 */
    private z04 f33052j1 = null;

    public zo3(Context context, av2 av2Var, g03 g03Var, long j, boolean z, Handler handler, up3 up3Var, int i) {
        super(2, av2Var, g03Var, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.f33024H0 = applicationContext;
        this.f33025I0 = new ip3(applicationContext);
        this.f33026J0 = new tp3(handler, up3Var);
    }

    /* renamed from: J0 */
    private static List<vw2> m8301J0(g03 g03Var, C7021u4 c7021u4, boolean z, boolean z2) {
        Pair<Integer, Integer> m13300f;
        String str = c7021u4.f30511n;
        if (str == null) {
            return Collections.emptyList();
        }
        List<vw2> m13302d = mc3.m13302d(mc3.m13303c(str, z, z2), c7021u4);
        if ("video/dolby-vision".equals(str) && (m13300f = mc3.m13300f(c7021u4)) != null) {
            int intValue = ((Integer) m13300f.first).intValue();
            if (intValue == 16 || intValue == 256) {
                m13302d.addAll(mc3.m13303c("video/hevc", z, z2));
            } else if (intValue == 512) {
                m13302d.addAll(mc3.m13303c("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(m13302d);
    }

    /* renamed from: K0 */
    private final boolean m8300K0(vw2 vw2Var) {
        boolean z = true;
        if (C7101wa.f31475a >= 23 && !m8296O0(vw2Var.f31383a)) {
            if (vw2Var.f31388f) {
                if (zzlu.m7854a(this.f33024H0)) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: L0 */
    private static boolean m8299L0(long j) {
        return j < -30000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: M0 */
    private static int m8298M0(vw2 vw2Var, C7021u4 c7021u4) {
        boolean z;
        int i;
        int intValue;
        int i2 = c7021u4.f30516s;
        int i3 = c7021u4.f30517t;
        if (i2 == -1 || i3 == -1) {
            return -1;
        }
        String str = c7021u4.f30511n;
        int i4 = 2;
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> m13300f = mc3.m13300f(c7021u4);
            str = (m13300f == null || !((intValue = ((Integer) m13300f.first).intValue()) == 512 || intValue == 1 || intValue == 2)) ? "video/hevc" : "video/avc";
        }
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
            if (z) {
                String str2 = C7101wa.f31478d;
                if ("BRAVIA 4K 2015".equals(str2)) {
                    return -1;
                }
                if ("Amazon".equals(C7101wa.f31477c)) {
                    if ("KFSOWI".equals(str2)) {
                        return -1;
                    }
                    if ("AFTS".equals(str2) && vw2Var.f31388f) {
                        return -1;
                    }
                }
                i = C7101wa.m9698b0(i2, 16) * C7101wa.m9698b0(i3, 16) * 256;
            } else if (!z) {
                if (!z && !z) {
                    return -1;
                }
                i = i2 * i3;
                i4 = 4;
            }
            return (i * 3) / (i4 + i4);
        }
        i = i2 * i3;
        return (i * 3) / (i4 + i4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0117 A[FALL_THROUGH] */
    /* renamed from: O0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static final boolean m8296O0(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 4562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zo3.m8296O0(java.lang.String):boolean");
    }

    /* renamed from: R0 */
    protected static int m8292R0(vw2 vw2Var, C7021u4 c7021u4) {
        if (c7021u4.f30512o != -1) {
            int size = c7021u4.f30513p.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += c7021u4.f30513p.get(i2).length;
            }
            return c7021u4.f30512o + i;
        }
        return m8298M0(vw2Var, c7021u4);
    }

    /* renamed from: n0 */
    private final void m8283n0() {
        int i = this.f33048f1;
        int i2 = i;
        if (i == -1) {
            if (this.f33049g1 == -1) {
                return;
            }
            i2 = -1;
        }
        z04 z04Var = this.f33052j1;
        if (z04Var != null && z04Var.f32749c == i2 && z04Var.f32750d == this.f33049g1 && z04Var.f32751e == this.f33050h1 && z04Var.f32752f == this.f33051i1) {
            return;
        }
        z04 z04Var2 = new z04(i2, this.f33049g1, this.f33050h1, this.f33051i1);
        this.f33052j1 = z04Var2;
        this.f33026J0.m10582f(z04Var2);
    }

    /* renamed from: o0 */
    private final void m8281o0() {
        z04 z04Var = this.f33052j1;
        if (z04Var != null) {
            this.f33026J0.m10582f(z04Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: A */
    protected final boolean mo8310A(vw2 vw2Var) {
        return this.f33031O0 != null || m8300K0(vw2Var);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: A0 */
    protected final void mo8309A0(String str) {
        this.f33026J0.m10580h(str);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: B0 */
    protected final void mo8308B0(Exception exc) {
        C6952s9.m11098b("MediaCodecVideoRenderer", "Video codec error", exc);
        this.f33026J0.m10578j(exc);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: C0 */
    public final C6781nn mo8307C0(C7058v4 c7058v4) {
        C6781nn mo8307C0 = super.mo8307C0(c7058v4);
        this.f33026J0.m10585c(c7058v4.f31066a, mo8307C0);
        return mo8307C0;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: D0 */
    protected final void mo8306D0(C7021u4 c7021u4, MediaFormat mediaFormat) {
        ef3 m15344j0 = m15344j0();
        if (m15344j0 != null) {
            m15344j0.m15495n(this.f33034R0);
        }
        Objects.requireNonNull(mediaFormat);
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
        this.f33048f1 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.f33049g1 = integer;
        float f = c7021u4.f30520w;
        this.f33051i1 = f;
        if (C7101wa.f31475a >= 21) {
            int i = c7021u4.f30519v;
            if (i == 90 || i == 270) {
                int i2 = this.f33048f1;
                this.f33048f1 = integer;
                this.f33049g1 = i2;
                this.f33051i1 = 1.0f / f;
            }
        } else {
            this.f33050h1 = c7021u4.f30519v;
        }
        this.f33025I0.m14318g(c7021u4.f30518u);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: H */
    public final void mo8305H() {
        super.mo8305H();
        this.f33043a1 = 0;
    }

    /* renamed from: H0 */
    protected final void m8304H0(ef3 ef3Var, int i, long j) {
        m8283n0();
        C7027ua.m10377a("releaseOutputBuffer");
        ef3Var.m15501h(i, true);
        C7027ua.m10376b();
        this.f33045c1 = SystemClock.elapsedRealtime() * 1000;
        this.f22680x0.f27214e++;
        this.f33042Z0 = 0;
        m8293Q0();
    }

    /* renamed from: I0 */
    protected final void m8303I0(int i) {
        C6780nm c6780nm = this.f22680x0;
        c6780nm.f27216g += i;
        this.f33041Y0 += i;
        int i2 = this.f33042Z0 + i;
        this.f33042Z0 = i2;
        c6780nm.f27217h = Math.max(i2, c6780nm.f27217h);
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: J */
    public final boolean mo8302J() {
        zzlu zzluVar;
        if (super.mo8302J() && (this.f33035S0 || (((zzluVar = this.f33032P0) != null && this.f33031O0 == zzluVar) || m15344j0() == null))) {
            this.f33039W0 = -9223372036854775807L;
            return true;
        } else if (this.f33039W0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f33039W0) {
                return true;
            }
            this.f33039W0 = -9223372036854775807L;
            return false;
        }
    }

    /* renamed from: N0 */
    protected final void m8297N0(ef3 ef3Var, int i, long j, long j2) {
        m8283n0();
        C7027ua.m10377a("releaseOutputBuffer");
        ef3Var.m15500i(i, j2);
        C7027ua.m10376b();
        this.f33045c1 = SystemClock.elapsedRealtime() * 1000;
        this.f22680x0.f27214e++;
        this.f33042Z0 = 0;
        m8293Q0();
    }

    /* renamed from: P0 */
    protected final void m8295P0(long j) {
        C6780nm c6780nm = this.f22680x0;
        c6780nm.f27219j += j;
        c6780nm.f27220k++;
        this.f33046d1 += j;
        this.f33047e1++;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: Q */
    protected final zzfn mo8294Q(Throwable th, vw2 vw2Var) {
        return new zzlx(th, vw2Var, this.f33031O0);
    }

    /* renamed from: Q0 */
    final void m8293Q0() {
        this.f33037U0 = true;
        if (!this.f33035S0) {
            this.f33035S0 = true;
            this.f33026J0.m10581g(this.f33031O0);
            this.f33033Q0 = true;
        }
    }

    /* renamed from: S0 */
    protected final void m8291S0(ef3 ef3Var, int i, long j) {
        C7027ua.m10377a("skipVideoBuffer");
        ef3Var.m15501h(i, false);
        C7027ua.m10376b();
        this.f22680x0.f27215f++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [android.view.Surface] */
    @Override // com.google.android.gms.internal.ads.AbstractC7056v2, com.google.android.gms.internal.ads.AbstractC6838p6
    /* renamed from: a */
    public final void mo8290a(int i, Object obj) {
        if (i != 1) {
            if (i == 7) {
                this.f33054l1 = (ap3) obj;
                return;
            } else if (i == 10) {
                int intValue = ((Integer) obj).intValue();
                if (this.f33053k1 == intValue) {
                    return;
                }
                this.f33053k1 = intValue;
                return;
            } else if (i != 4) {
                if (i != 5) {
                    return;
                }
                this.f33025I0.m14324a(((Integer) obj).intValue());
                return;
            } else {
                this.f33034R0 = ((Integer) obj).intValue();
                ef3 m15344j0 = m15344j0();
                if (m15344j0 == null) {
                    return;
                }
                m15344j0.m15495n(this.f33034R0);
                return;
            }
        }
        zzlu zzluVar = obj instanceof Surface ? (Surface) obj : null;
        zzlu zzluVar2 = zzluVar;
        if (zzluVar == null) {
            zzluVar2 = this.f33032P0;
            if (zzluVar2 == null) {
                vw2 m15355B = m15355B();
                zzluVar2 = zzluVar;
                if (m15355B != null) {
                    zzluVar2 = zzluVar;
                    if (m8300K0(m15355B)) {
                        zzluVar2 = zzlu.m7853b(this.f33024H0, m15355B.f31388f);
                        this.f33032P0 = zzluVar2;
                    }
                }
            }
        }
        if (this.f33031O0 == zzluVar2) {
            if (zzluVar2 == null || zzluVar2 == this.f33032P0) {
                return;
            }
            m8281o0();
            if (!this.f33033Q0) {
                return;
            }
            this.f33026J0.m10581g(this.f33031O0);
            return;
        }
        this.f33031O0 = zzluVar2;
        this.f33025I0.m14321d(zzluVar2);
        this.f33033Q0 = false;
        int mo10117T = mo10117T();
        ef3 m15344j02 = m15344j0();
        if (m15344j02 != null) {
            if (C7101wa.f31475a < 23 || zzluVar2 == null || this.f33029M0) {
                m15354C();
                m15333z();
            } else {
                m15344j02.m15497l(zzluVar2);
            }
        }
        if (zzluVar2 == null || zzluVar2 == this.f33032P0) {
            this.f33052j1 = null;
            this.f33035S0 = false;
            int i2 = C7101wa.f31475a;
            return;
        }
        m8281o0();
        this.f33035S0 = false;
        int i3 = C7101wa.f31475a;
        if (mo10117T != 2) {
            return;
        }
        this.f33039W0 = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2, com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: b0 */
    public final void mo8289b0(float f, float f2) {
        super.mo8289b0(f, f2);
        this.f33025I0.m14319f(f);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6, com.google.android.gms.internal.ads.AbstractC7023u6
    /* renamed from: c */
    public final String mo8288c() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.ey2
    @TargetApi(29)
    /* renamed from: e0 */
    protected final void mo8287e0(C7205z3 c7205z3) {
        if (!this.f33030N0) {
            return;
        }
        ByteBuffer byteBuffer = c7205z3.f32801f;
        Objects.requireNonNull(byteBuffer);
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
        ef3 m15344j0 = m15344j0();
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        m15344j0.m15496m(bundle);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: f0 */
    public final void mo8286f0(long j) {
        super.mo8286f0(j);
        this.f33043a1--;
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: m */
    public final void mo8285m(boolean z, boolean z2) {
        super.mo8285m(z, z2);
        m10106h();
        this.f33026J0.m10587a(this.f22680x0);
        this.f33025I0.m14323b();
        this.f33036T0 = z2;
        this.f33037U0 = false;
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: n */
    public final void mo8284n(long j, boolean z) {
        super.mo8284n(j, z);
        this.f33035S0 = false;
        int i = C7101wa.f31475a;
        this.f33025I0.m14320e();
        this.f33044b1 = -9223372036854775807L;
        this.f33038V0 = -9223372036854775807L;
        this.f33042Z0 = 0;
        this.f33039W0 = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: o */
    protected final void mo8282o() {
        this.f33041Y0 = 0;
        this.f33040X0 = SystemClock.elapsedRealtime();
        this.f33045c1 = SystemClock.elapsedRealtime() * 1000;
        this.f33046d1 = 0L;
        this.f33047e1 = 0;
        this.f33025I0.m14322c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: p */
    protected final void mo8280p() {
        this.f33039W0 = -9223372036854775807L;
        if (this.f33041Y0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f33026J0.m10584d(this.f33041Y0, elapsedRealtime - this.f33040X0);
            this.f33041Y0 = 0;
            this.f33040X0 = elapsedRealtime;
        }
        int i = this.f33047e1;
        if (i != 0) {
            this.f33026J0.m10583e(this.f33046d1, i);
            this.f33046d1 = 0L;
            this.f33047e1 = 0;
        }
        this.f33025I0.m14316i();
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: q */
    public final void mo8279q() {
        this.f33052j1 = null;
        this.f33035S0 = false;
        int i = C7101wa.f31475a;
        this.f33033Q0 = false;
        this.f33025I0.m14315j();
        try {
            super.mo8279q();
        } finally {
            this.f33026J0.m10579i(this.f22680x0);
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2
    @TargetApi(17)
    /* renamed from: r */
    public final void mo8278r() {
        try {
            super.mo8278r();
            zzlu zzluVar = this.f33032P0;
            if (zzluVar == null) {
                return;
            }
            if (this.f33031O0 == zzluVar) {
                this.f33031O0 = null;
            }
            zzluVar.release();
            this.f33032P0 = null;
        } catch (Throwable th) {
            zzlu zzluVar2 = this.f33032P0;
            if (zzluVar2 != null) {
                if (this.f33031O0 == zzluVar2) {
                    this.f33031O0 = null;
                }
                zzluVar2.release();
                this.f33032P0 = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: t */
    protected final void mo8277t(C7205z3 c7205z3) {
        this.f33043a1++;
        int i = C7101wa.f31475a;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: t0 */
    protected final int mo8276t0(g03 g03Var, C7021u4 c7021u4) {
        if (!C7174y9.m8891b(c7021u4.f30511n)) {
            return 0;
        }
        boolean z = c7021u4.f30514q != null;
        List<vw2> m8301J0 = m8301J0(g03Var, c7021u4, z, false);
        List<vw2> list = m8301J0;
        if (z) {
            list = m8301J0;
            if (m8301J0.isEmpty()) {
                list = m8301J0(g03Var, c7021u4, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!ey2.m15345i0(c7021u4)) {
            return 2;
        }
        vw2 vw2Var = list.get(0);
        boolean m9856c = vw2Var.m9856c(c7021u4);
        int i = true != vw2Var.m9855d(c7021u4) ? 8 : 16;
        int i2 = 0;
        if (m9856c) {
            List<vw2> m8301J02 = m8301J0(g03Var, c7021u4, z, true);
            i2 = 0;
            if (!m8301J02.isEmpty()) {
                vw2 vw2Var2 = m8301J02.get(0);
                i2 = 0;
                if (vw2Var2.m9856c(c7021u4)) {
                    i2 = 0;
                    if (vw2Var2.m9855d(c7021u4)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (true != m9856c ? 3 : 4) | i | i2;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: u0 */
    protected final List<vw2> mo8275u0(g03 g03Var, C7021u4 c7021u4, boolean z) {
        return m8301J0(g03Var, c7021u4, false, false);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: w */
    protected final void mo8274w() {
        this.f33035S0 = false;
        int i = C7101wa.f31475a;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    @TargetApi(17)
    /* renamed from: w0 */
    protected final zt2 mo8273w0(vw2 vw2Var, C7021u4 c7021u4, MediaCrypto mediaCrypto, float f) {
        yo3 yo3Var;
        Pair<Integer, Integer> m13300f;
        Point point;
        zzlu zzluVar = this.f33032P0;
        if (zzluVar != null && zzluVar.f34210f != vw2Var.f31388f) {
            zzluVar.release();
            this.f33032P0 = null;
        }
        String str = vw2Var.f31385c;
        C7021u4[] m10107g = m10107g();
        int i = c7021u4.f30516s;
        int i2 = c7021u4.f30517t;
        int m8292R0 = m8292R0(vw2Var, c7021u4);
        int length = m10107g.length;
        if (length == 1) {
            int i3 = m8292R0;
            if (m8292R0 != -1) {
                int m8298M0 = m8298M0(vw2Var, c7021u4);
                i3 = m8292R0;
                if (m8298M0 != -1) {
                    i3 = Math.min((int) (m8292R0 * 1.5f), m8298M0);
                }
            }
            yo3Var = new yo3(i, i2, i3);
        } else {
            int i4 = 0;
            boolean z = false;
            int i5 = i2;
            while (i4 < length) {
                C7021u4 c7021u42 = m10107g[i4];
                C7021u4 c7021u43 = c7021u42;
                if (c7021u4.f30523z != null) {
                    c7021u43 = c7021u42;
                    if (c7021u42.f30523z == null) {
                        C6947s4 m10418a = c7021u42.m10418a();
                        m10418a.m11117z(c7021u4.f30523z);
                        c7021u43 = m10418a.m11168I();
                    }
                }
                int i6 = i;
                int i7 = i5;
                int i8 = m8292R0;
                boolean z2 = z;
                if (vw2Var.m9854e(c7021u4, c7021u43).f27233d != 0) {
                    int i9 = c7021u43.f30516s;
                    z2 = z | (i9 == -1 || c7021u43.f30517t == -1);
                    i6 = Math.max(i, i9);
                    i7 = Math.max(i5, c7021u43.f30517t);
                    i8 = Math.max(m8292R0, m8292R0(vw2Var, c7021u43));
                }
                i4++;
                i = i6;
                i5 = i7;
                m8292R0 = i8;
                z = z2;
            }
            if (z) {
                StringBuilder sb = new StringBuilder(66);
                sb.append("Resolutions unknown. Codec max resolution: ");
                sb.append(i);
                sb.append("x");
                sb.append(i5);
                Log.w("MediaCodecVideoRenderer", sb.toString());
                int i10 = c7021u4.f30517t;
                int i11 = c7021u4.f30516s;
                int i12 = i10 > i11 ? i10 : i11;
                int i13 = i10 <= i11 ? i10 : i11;
                float f2 = i13 / i12;
                int[] iArr = f33021E0;
                for (int i14 = 0; i14 < 9; i14++) {
                    int i15 = iArr[i14];
                    int i16 = (int) (i15 * f2);
                    if (i15 <= i12 || i16 <= i13) {
                        break;
                    } else if (C7101wa.f31475a >= 21) {
                        int i17 = i10 <= i11 ? i15 : i16;
                        if (i10 <= i11) {
                            i15 = i16;
                        }
                        Point m9852g = vw2Var.m9852g(i17, i15);
                        if (vw2Var.m9853f(m9852g.x, m9852g.y, c7021u4.f30518u)) {
                            point = m9852g;
                            break;
                        }
                    } else {
                        try {
                            int m9698b0 = C7101wa.m9698b0(i15, 16) * 16;
                            int m9698b02 = C7101wa.m9698b0(i16, 16) * 16;
                            if (m9698b0 * m9698b02 <= mc3.m13301e()) {
                                int i18 = i10 <= i11 ? m9698b0 : m9698b02;
                                if (i10 <= i11) {
                                    m9698b0 = m9698b02;
                                }
                                point = new Point(i18, m9698b0);
                            }
                        } catch (zzfy e) {
                        }
                    }
                }
                point = null;
                if (point != null) {
                    i = Math.max(i, point.x);
                    i5 = Math.max(i5, point.y);
                    C6947s4 m10418a2 = c7021u4.m10418a();
                    m10418a2.m11124s(i);
                    m10418a2.m11123t(i5);
                    m8292R0 = Math.max(m8292R0, m8298M0(vw2Var, m10418a2.m11168I()));
                    StringBuilder sb2 = new StringBuilder(57);
                    sb2.append("Codec max resolution adjusted to: ");
                    sb2.append(i);
                    sb2.append("x");
                    sb2.append(i5);
                    Log.w("MediaCodecVideoRenderer", sb2.toString());
                }
            }
            yo3Var = new yo3(i, i5, m8292R0);
        }
        this.f33028L0 = yo3Var;
        boolean z3 = this.f33027K0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", c7021u4.f30516s);
        mediaFormat.setInteger("height", c7021u4.f30517t);
        C7063v9.m10066a(mediaFormat, c7021u4.f30513p);
        float f3 = c7021u4.f30518u;
        if (f3 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f3);
        }
        C7063v9.m10065b(mediaFormat, "rotation-degrees", c7021u4.f30519v);
        gm3 gm3Var = c7021u4.f30523z;
        if (gm3Var != null) {
            C7063v9.m10065b(mediaFormat, "color-transfer", gm3Var.f23413d);
            C7063v9.m10065b(mediaFormat, "color-standard", gm3Var.f23411b);
            C7063v9.m10065b(mediaFormat, "color-range", gm3Var.f23412c);
            byte[] bArr = gm3Var.f23414e;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(c7021u4.f30511n) && (m13300f = mc3.m13300f(c7021u4)) != null) {
            C7063v9.m10065b(mediaFormat, "profile", ((Integer) m13300f.first).intValue());
        }
        mediaFormat.setInteger("max-width", yo3Var.f32582a);
        mediaFormat.setInteger("max-height", yo3Var.f32583b);
        C7063v9.m10065b(mediaFormat, "max-input-size", yo3Var.f32584c);
        if (C7101wa.f31475a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z3) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (this.f33031O0 == null) {
            if (!m8300K0(vw2Var)) {
                throw new IllegalStateException();
            }
            if (this.f33032P0 == null) {
                this.f33032P0 = zzlu.m7853b(this.f33024H0, vw2Var.f31388f);
            }
            this.f33031O0 = this.f33032P0;
        }
        return zt2.m8184b(vw2Var, mediaFormat, c7021u4, this.f33031O0, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0032, code lost:
        if (r11.f30517t > r0.f32583b) goto L6;
     */
    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: x0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.C6781nn mo8272x0(com.google.android.gms.internal.ads.vw2 r9, com.google.android.gms.internal.ads.C7021u4 r10, com.google.android.gms.internal.ads.C7021u4 r11) {
        /*
            r8 = this;
            r0 = r9
            r1 = r10
            r2 = r11
            com.google.android.gms.internal.ads.nn r0 = r0.m9854e(r1, r2)
            r12 = r0
            r0 = r12
            int r0 = r0.f27234e
            r13 = r0
            r0 = r11
            int r0 = r0.f30516s
            r14 = r0
            r0 = r8
            com.google.android.gms.internal.ads.yo3 r0 = r0.f33028L0
            r15 = r0
            r0 = r14
            r1 = r15
            int r1 = r1.f32582a
            if (r0 > r1) goto L35
            r0 = r13
            r14 = r0
            r0 = r11
            int r0 = r0.f30517t
            r1 = r15
            int r1 = r1.f32583b
            if (r0 <= r1) goto L3d
        L35:
            r0 = r13
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 | r1
            r14 = r0
        L3d:
            r0 = r14
            r13 = r0
            r0 = r9
            r1 = r11
            int r0 = m8292R0(r0, r1)
            r1 = r8
            com.google.android.gms.internal.ads.yo3 r1 = r1.f33028L0
            int r1 = r1.f32584c
            if (r0 <= r1) goto L57
            r0 = r14
            r1 = 64
            r0 = r0 | r1
            r13 = r0
        L57:
            r0 = r9
            java.lang.String r0 = r0.f31383a
            r9 = r0
            r0 = r13
            if (r0 == 0) goto L67
            r0 = 0
            r14 = r0
            goto L71
        L67:
            r0 = r12
            int r0 = r0.f27233d
            r14 = r0
            r0 = 0
            r13 = r0
        L71:
            com.google.android.gms.internal.ads.nn r0 = new com.google.android.gms.internal.ads.nn
            r1 = r0
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r14
            r6 = r13
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zo3.mo8272x0(com.google.android.gms.internal.ads.vw2, com.google.android.gms.internal.ads.u4, com.google.android.gms.internal.ads.u4):com.google.android.gms.internal.ads.nn");
    }

    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: y */
    protected final boolean mo8271y(long j, long j2, ef3 ef3Var, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C7021u4 c7021u4) {
        int m10103k;
        Objects.requireNonNull(ef3Var);
        if (this.f33038V0 == -9223372036854775807L) {
            this.f33038V0 = j;
        }
        if (j3 != this.f33044b1) {
            this.f33025I0.m14317h(j3);
            this.f33044b1 = j3;
        }
        long m15346h0 = m15346h0();
        long j4 = j3 - m15346h0;
        if (z && !z2) {
            m8291S0(ef3Var, i, j4);
            return true;
        }
        float m15347g0 = m15347g0();
        int mo10117T = mo10117T();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        ?? r0 = (long) ((j3 - j) / m15347g0);
        char c = r0;
        if (mo10117T == 2) {
            c = r0 - (elapsedRealtime - j2);
        }
        if (this.f33031O0 == this.f33032P0) {
            if (!m8299L0(c)) {
                return false;
            }
            m8291S0(ef3Var, i, j4);
            m8295P0(c);
            return true;
        }
        long j5 = this.f33045c1;
        boolean z3 = this.f33037U0 ? !this.f33035S0 : !(mo10117T != 2 && !this.f33036T0);
        if (this.f33039W0 == -9223372036854775807L && j >= m15346h0 && (z3 || (mo10117T == 2 && m8299L0(c) && elapsedRealtime - j5 > 100000))) {
            long nanoTime = System.nanoTime();
            if (C7101wa.f31475a >= 21) {
                m8297N0(ef3Var, i, j4, nanoTime);
            } else {
                m8304H0(ef3Var, i, j4);
            }
            m8295P0(c);
            return true;
        } else if (mo10117T != 2 || j == this.f33038V0) {
            return false;
        } else {
            long nanoTime2 = System.nanoTime();
            long m14314k = this.f33025I0.m14314k((c * 1000) + nanoTime2);
            long j6 = (m14314k - nanoTime2) / 1000;
            long j7 = this.f33039W0;
            if (j6 < -500000 && !z2 && (m10103k = m10103k(j)) != 0) {
                C6780nm c6780nm = this.f22680x0;
                c6780nm.f27218i++;
                int i4 = this.f33043a1 + m10103k;
                if (j7 != -9223372036854775807L) {
                    c6780nm.f27215f += i4;
                } else {
                    m8303I0(i4);
                }
                m15353D();
                return false;
            } else if (m8299L0(j6) && !z2) {
                if (j7 != -9223372036854775807L) {
                    m8291S0(ef3Var, i, j4);
                } else {
                    C7027ua.m10377a("dropVideoBuffer");
                    ef3Var.m15501h(i, false);
                    C7027ua.m10376b();
                    m8303I0(1);
                }
                m8295P0(j6);
                return true;
            } else if (C7101wa.f31475a >= 21) {
                if (j6 >= 50000) {
                    return false;
                }
                m8297N0(ef3Var, i, j4, m14314k);
                m8295P0(j6);
                return true;
            } else if (j6 >= 30000) {
                return false;
            } else {
                if (j6 > 11000) {
                    try {
                        Thread.sleep(((-10000) + j6) / 1000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                m8304H0(ef3Var, i, j4);
                m8295P0(j6);
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: y0 */
    protected final float mo8270y0(float f, C7021u4 c7021u4, C7021u4[] c7021u4Arr) {
        float f2;
        int length = c7021u4Arr.length;
        int i = 0;
        float f3 = -1.0f;
        while (true) {
            f2 = f3;
            if (i >= length) {
                break;
            }
            float f4 = c7021u4Arr[i].f30518u;
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

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: z0 */
    protected final void mo8269z0(String str, long j, long j2) {
        this.f33026J0.m10586b(str, j, j2);
        this.f33029M0 = m8296O0(str);
        vw2 m15355B = m15355B();
        Objects.requireNonNull(m15355B);
        boolean z = false;
        if (C7101wa.f31475a >= 29) {
            z = false;
            if ("video/x-vnd.on2.vp9".equals(m15355B.f31384b)) {
                MediaCodecInfo.CodecProfileLevel[] m9857b = m15355B.m9857b();
                int length = m9857b.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (m9857b[i].profile == 16384) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.f33030N0 = z;
    }
}
