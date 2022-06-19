package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x92.class */
public final class x92 extends ey2 implements AbstractC7026u9 {

    /* renamed from: E0 */
    private final Context f31940E0;

    /* renamed from: F0 */
    private final hh1 f31941F0;

    /* renamed from: G0 */
    private final jo1 f31942G0;

    /* renamed from: H0 */
    private int f31943H0;

    /* renamed from: I0 */
    private boolean f31944I0;

    /* renamed from: J0 */
    private C7021u4 f31945J0;

    /* renamed from: K0 */
    private long f31946K0;

    /* renamed from: L0 */
    private boolean f31947L0;

    /* renamed from: M0 */
    private boolean f31948M0;

    /* renamed from: N0 */
    private boolean f31949N0;

    /* renamed from: O0 */
    private AbstractC6949s6 f31950O0;

    public x92(Context context, av2 av2Var, g03 g03Var, boolean z, Handler handler, ii1 ii1Var, jo1 jo1Var) {
        super(1, av2Var, g03Var, false, 44100.0f);
        this.f31940E0 = context.getApplicationContext();
        this.f31942G0 = jo1Var;
        this.f31941F0 = new hh1(handler, ii1Var);
        jo1Var.mo10809n(new v72(this, null));
    }

    /* renamed from: I0 */
    private final int m9318I0(vw2 vw2Var, C7021u4 c7021u4) {
        int i;
        if (!"OMX.google.raw.decoder".equals(vw2Var.f31383a) || (i = C7101wa.f31475a) >= 24 || (i == 23 && C7101wa.m9671z(this.f31940E0))) {
            return c7021u4.f30512o;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: J0 */
    private final void m9317J0() {
        char mo10822a = this.f31942G0.mo10822a(mo9320G());
        if (mo10822a != Long.MIN_VALUE) {
            if (!this.f31948M0) {
                mo10822a = Math.max(this.f31946K0, (long) mo10822a);
            }
            this.f31946K0 = mo10822a;
            this.f31948M0 = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: A0 */
    protected final void mo8309A0(String str) {
        this.f31941F0.m14656f(str);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: B0 */
    protected final void mo8308B0(Exception exc) {
        C6952s9.m11098b("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.f31941F0.m14652j(exc);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: C0 */
    public final C6781nn mo8307C0(C7058v4 c7058v4) {
        C6781nn mo8307C0 = super.mo8307C0(c7058v4);
        this.f31941F0.m14659c(c7058v4.f31066a, mo8307C0);
        return mo8307C0;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: D0 */
    protected final void mo8306D0(C7021u4 c7021u4, MediaFormat mediaFormat) {
        int[] iArr;
        C7021u4 c7021u42 = this.f31945J0;
        if (c7021u42 != null) {
            c7021u4 = c7021u42;
            iArr = null;
        } else if (m15344j0() == null) {
            iArr = null;
        } else {
            int m9682o = "audio/raw".equals(c7021u4.f30511n) ? c7021u4.f30494C : (C7101wa.f31475a < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? C7101wa.m9682o(mediaFormat.getInteger("v-bits-per-sample")) : "audio/raw".equals(c7021u4.f30511n) ? c7021u4.f30494C : 2 : mediaFormat.getInteger("pcm-encoding");
            C6947s4 c6947s4 = new C6947s4();
            c6947s4.m11129n("audio/raw");
            c6947s4.m11173D(m9682o);
            c6947s4.m11172E(c7021u4.f30495D);
            c6947s4.m11171F(c7021u4.f30496E);
            c6947s4.m11175B(mediaFormat.getInteger("channel-count"));
            c6947s4.m11174C(mediaFormat.getInteger("sample-rate"));
            C7021u4 m11168I = c6947s4.m11168I();
            iArr = null;
            if (this.f31944I0) {
                iArr = null;
                if (m11168I.f30492A == 6) {
                    int i = c7021u4.f30492A;
                    iArr = null;
                    if (i < 6) {
                        int[] iArr2 = new int[i];
                        int i2 = 0;
                        while (true) {
                            iArr = iArr2;
                            if (i2 >= c7021u4.f30492A) {
                                break;
                            }
                            iArr2[i2] = i2;
                            i2++;
                        }
                    }
                }
            }
            c7021u4 = m11168I;
        }
        try {
            this.f31942G0.mo10817f(c7021u4, 0, iArr);
        } catch (zzdr e) {
            throw m10105i(e, e.zza, false, 5001);
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: G */
    public final boolean mo9320G() {
        return super.mo9320G() && this.f31942G0.mo10816g();
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: J */
    public final boolean mo8302J() {
        return this.f31942G0.mo10815h() || super.mo8302J();
    }

    /* renamed from: L0 */
    public final void m9315L0() {
        this.f31948M0 = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2, com.google.android.gms.internal.ads.AbstractC6838p6
    /* renamed from: a */
    public final void mo8290a(int i, Object obj) {
        if (i == 2) {
            this.f31942G0.mo10814i(((Float) obj).floatValue());
        } else if (i == 3) {
            this.f31942G0.mo10820c((h83) obj);
        } else if (i == 6) {
            this.f31942G0.mo10807p((gk3) obj);
        } else {
            switch (i) {
                case 9:
                    this.f31942G0.mo10810m(((Boolean) obj).booleanValue());
                    return;
                case 10:
                    this.f31942G0.mo10812k(((Integer) obj).intValue());
                    return;
                case 11:
                    this.f31950O0 = (AbstractC6949s6) obj;
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: b */
    public final void mo9314b(C6392d6 c6392d6) {
        this.f31942G0.mo10821b(c6392d6);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6, com.google.android.gms.internal.ads.AbstractC7023u6
    /* renamed from: c */
    public final String mo8288c() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: m */
    public final void mo8285m(boolean z, boolean z2) {
        super.mo8285m(z, z2);
        this.f31941F0.m14661a(this.f22680x0);
        m10106h();
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: n */
    public final void mo8284n(long j, boolean z) {
        super.mo8284n(j, z);
        this.f31942G0.zzt();
        this.f31946K0 = j;
        this.f31947L0 = true;
        this.f31948M0 = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: o */
    protected final void mo8282o() {
        this.f31942G0.mo10819d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: p */
    protected final void mo8280p() {
        m9317J0();
        this.f31942G0.mo10808o();
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: q */
    public final void mo8279q() {
        this.f31949N0 = true;
        try {
            this.f31942G0.zzt();
            try {
                super.mo8279q();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo8279q();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2, com.google.android.gms.internal.ads.AbstractC7056v2
    /* renamed from: r */
    public final void mo8278r() {
        try {
            super.mo8278r();
            if (!this.f31949N0) {
                return;
            }
            this.f31949N0 = false;
            this.f31942G0.zzu();
        } catch (Throwable th) {
            if (this.f31949N0) {
                this.f31949N0 = false;
                this.f31942G0.zzu();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: t */
    protected final void mo8277t(C7205z3 c7205z3) {
        if (!this.f31947L0 || c7205z3.m16714b()) {
            return;
        }
        if (Math.abs(c7205z3.f32800e - this.f31946K0) > 500000) {
            this.f31946K0 = c7205z3.f32800e;
        }
        this.f31947L0 = false;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: t0 */
    protected final int mo8276t0(g03 g03Var, C7021u4 c7021u4) {
        if (!C7174y9.m8892a(c7021u4.f30511n)) {
            return 0;
        }
        int i = C7101wa.f31475a >= 21 ? 32 : 0;
        int i2 = c7021u4.f30498G;
        boolean m15345i0 = ey2.m15345i0(c7021u4);
        if (m15345i0 && this.f31942G0.mo10811l(c7021u4) && (i2 == 0 || mc3.m13305a() != null)) {
            return i | 12;
        }
        if (("audio/raw".equals(c7021u4.f30511n) && !this.f31942G0.mo10811l(c7021u4)) || !this.f31942G0.mo10811l(C7101wa.m9683n(2, c7021u4.f30492A, c7021u4.f30493B))) {
            return 1;
        }
        List<vw2> mo8275u0 = mo8275u0(g03Var, c7021u4, false);
        if (mo8275u0.isEmpty()) {
            return 1;
        }
        if (!m15345i0) {
            return 2;
        }
        vw2 vw2Var = mo8275u0.get(0);
        boolean m9856c = vw2Var.m9856c(c7021u4);
        int i3 = 8;
        if (m9856c) {
            i3 = 8;
            if (vw2Var.m9855d(c7021u4)) {
                i3 = 16;
            }
        }
        return (true != m9856c ? 3 : 4) | i3 | i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: u */
    public final C6392d6 mo9313u() {
        return this.f31942G0.mo10813j();
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: u0 */
    protected final List<vw2> mo8275u0(g03 g03Var, C7021u4 c7021u4, boolean z) {
        vw2 m13305a;
        String str = c7021u4.f30511n;
        if (str == null) {
            return Collections.emptyList();
        }
        if (this.f31942G0.mo10811l(c7021u4) && (m13305a = mc3.m13305a()) != null) {
            return Collections.singletonList(m13305a);
        }
        List<vw2> m13302d = mc3.m13302d(mc3.m13303c(str, false, false), c7021u4);
        ArrayList arrayList = m13302d;
        if ("audio/eac3-joc".equals(str)) {
            arrayList = new ArrayList(m13302d);
            arrayList.addAll(mc3.m13303c("audio/eac3", false, false));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7026u9
    /* renamed from: v */
    public final long mo9312v() {
        if (mo10117T() == 2) {
            m9317J0();
        }
        return this.f31946K0;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: v0 */
    protected final boolean mo9311v0(C7021u4 c7021u4) {
        return this.f31942G0.mo10811l(c7021u4);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: w */
    protected final void mo8274w() {
        this.f31942G0.zzg();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0134, code lost:
        if ("AXON 7 mini".equals(r0) == false) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0106  */
    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: w0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.google.android.gms.internal.ads.zt2 mo8273w0(com.google.android.gms.internal.ads.vw2 r6, com.google.android.gms.internal.ads.C7021u4 r7, android.media.MediaCrypto r8, float r9) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.x92.mo8273w0(com.google.android.gms.internal.ads.vw2, com.google.android.gms.internal.ads.u4, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zt2");
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: x */
    protected final void mo9310x() {
        try {
            this.f31942G0.zzi();
        } catch (zzdv e) {
            throw m10105i(e, e.zzb, e.zza, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: x0 */
    protected final C6781nn mo8272x0(vw2 vw2Var, C7021u4 c7021u4, C7021u4 c7021u42) {
        int i;
        C6781nn m9854e = vw2Var.m9854e(c7021u4, c7021u42);
        int i2 = m9854e.f27234e;
        int i3 = i2;
        if (m9318I0(vw2Var, c7021u42) > this.f31943H0) {
            i3 = i2 | 64;
        }
        String str = vw2Var.f31383a;
        if (i3 != 0) {
            i = 0;
        } else {
            i = m9854e.f27233d;
            i3 = 0;
        }
        return new C6781nn(str, c7021u4, c7021u42, i, i3);
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: y */
    protected final boolean mo8271y(long j, long j2, ef3 ef3Var, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C7021u4 c7021u4) {
        Objects.requireNonNull(byteBuffer);
        if (this.f31945J0 != null && (i2 & 2) != 0) {
            Objects.requireNonNull(ef3Var);
            ef3Var.m15501h(i, false);
            return true;
        } else if (z) {
            if (ef3Var != null) {
                ef3Var.m15501h(i, false);
            }
            this.f22680x0.f27215f += i3;
            this.f31942G0.zzg();
            return true;
        } else {
            try {
                if (!this.f31942G0.mo10806q(byteBuffer, j3, i3)) {
                    return false;
                }
                if (ef3Var != null) {
                    ef3Var.m15501h(i, false);
                }
                this.f22680x0.f27214e += i3;
                return true;
            } catch (zzds e) {
                throw m10105i(e, e.zzb, false, 5001);
            } catch (zzdv e2) {
                throw m10105i(e2, c7021u4, e2.zza, 5002);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: y0 */
    protected final float mo8270y0(float f, C7021u4 c7021u4, C7021u4[] c7021u4Arr) {
        int i;
        int length = c7021u4Arr.length;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = c7021u4Arr[i2].f30493B;
            int i5 = i;
            if (i4 != -1) {
                i5 = Math.max(i, i4);
            }
            i2++;
            i3 = i5;
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // com.google.android.gms.internal.ads.ey2
    /* renamed from: z0 */
    protected final void mo8269z0(String str, long j, long j2) {
        this.f31941F0.m14660b(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7056v2, com.google.android.gms.internal.ads.AbstractC6986t6
    public final AbstractC7026u9 zzi() {
        return this;
    }
}
