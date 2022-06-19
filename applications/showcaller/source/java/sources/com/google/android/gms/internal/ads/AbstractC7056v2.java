package com.google.android.gms.internal.ads;

import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.v2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v2.class */
public abstract class AbstractC7056v2 implements AbstractC6986t6, AbstractC7023u6 {

    /* renamed from: d */
    private final int f31045d;

    /* renamed from: f */
    private C7060v6 f31047f;

    /* renamed from: g */
    private int f31048g;

    /* renamed from: h */
    private int f31049h;

    /* renamed from: i */
    private bm3 f31050i;

    /* renamed from: j */
    private C7021u4[] f31051j;

    /* renamed from: k */
    private long f31052k;

    /* renamed from: m */
    private boolean f31054m;

    /* renamed from: n */
    private boolean f31055n;

    /* renamed from: e */
    private final C7058v4 f31046e = new C7058v4();

    /* renamed from: l */
    private long f31053l = Long.MIN_VALUE;

    public AbstractC7056v2(int i) {
        this.f31045d = i;
    }

    /* renamed from: F */
    public int mo10126F() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: K */
    public final void mo10125K() {
        bm3 bm3Var = this.f31050i;
        Objects.requireNonNull(bm3Var);
        bm3Var.mo8343c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: L */
    public final void mo10124L() {
        C7173y8.m8895d(this.f31049h == 2);
        this.f31049h = 1;
        mo8280p();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: M */
    public final void mo10123M() {
        boolean z = true;
        if (this.f31049h != 1) {
            z = false;
        }
        C7173y8.m8895d(z);
        this.f31049h = 2;
        mo8282o();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: N */
    public final boolean mo10122N() {
        return this.f31054m;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6, com.google.android.gms.internal.ads.AbstractC7023u6
    /* renamed from: O */
    public final int mo10121O() {
        return this.f31045d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: P */
    public final boolean mo10120P() {
        return this.f31053l == Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: R */
    public final void mo10119R() {
        C7173y8.m8895d(this.f31049h == 0);
        C7058v4 c7058v4 = this.f31046e;
        c7058v4.f31067b = null;
        c7058v4.f31066a = null;
        mo8278r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: S */
    public final void mo10118S(int i) {
        this.f31048g = i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: T */
    public final int mo10117T() {
        return this.f31049h;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: V */
    public final void mo10116V(C7060v6 c7060v6, C7021u4[] c7021u4Arr, bm3 bm3Var, long j, boolean z, boolean z2, long j2, long j3) {
        C7173y8.m8895d(this.f31049h == 0);
        this.f31047f = c7060v6;
        this.f31049h = 1;
        mo8285m(z, z2);
        mo10114X(c7021u4Arr, bm3Var, j2, j3);
        mo8284n(j, z);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: W */
    public final long mo10115W() {
        return this.f31053l;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: X */
    public final void mo10114X(C7021u4[] c7021u4Arr, bm3 bm3Var, long j, long j2) {
        C7173y8.m8895d(!this.f31054m);
        this.f31050i = bm3Var;
        if (this.f31053l == Long.MIN_VALUE) {
            this.f31053l = j;
        }
        this.f31051j = c7021u4Arr;
        this.f31052k = j2;
        mo9330e(c7021u4Arr, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: Y */
    public final void mo10113Y() {
        this.f31054m = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: Z */
    public final AbstractC7023u6 mo10112Z() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6838p6
    /* renamed from: a */
    public void mo8290a(int i, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: a0 */
    public final bm3 mo10111a0() {
        return this.f31050i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: b0 */
    public void mo8289b0(float f, float f2) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: c0 */
    public final void mo10110c0() {
        boolean z = true;
        if (this.f31049h != 1) {
            z = false;
        }
        C7173y8.m8895d(z);
        C7058v4 c7058v4 = this.f31046e;
        c7058v4.f31067b = null;
        c7058v4.f31066a = null;
        this.f31049h = 0;
        this.f31050i = null;
        this.f31051j = null;
        this.f31054m = false;
        mo8279q();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    /* renamed from: d0 */
    public final void mo10109d0(long j) {
        this.f31054m = false;
        this.f31053l = j;
        mo8284n(j, false);
    }

    /* renamed from: e */
    protected abstract void mo9330e(C7021u4[] c7021u4Arr, long j, long j2);

    /* renamed from: f */
    public final C7058v4 m10108f() {
        C7058v4 c7058v4 = this.f31046e;
        c7058v4.f31067b = null;
        c7058v4.f31066a = null;
        return c7058v4;
    }

    /* renamed from: g */
    public final C7021u4[] m10107g() {
        C7021u4[] c7021u4Arr = this.f31051j;
        Objects.requireNonNull(c7021u4Arr);
        return c7021u4Arr;
    }

    /* renamed from: h */
    public final C7060v6 m10106h() {
        C7060v6 c7060v6 = this.f31047f;
        Objects.requireNonNull(c7060v6);
        return c7060v6;
    }

    /* renamed from: i */
    public final zzaeg m10105i(Throwable th, C7021u4 c7021u4, boolean z, int i) {
        int i2;
        if (c7021u4 != null && !this.f31055n) {
            this.f31055n = true;
            try {
                int mo9331d = mo9331d(c7021u4);
                this.f31055n = false;
                i2 = mo9331d & 7;
            } catch (zzaeg e) {
                this.f31055n = false;
            } catch (Throwable th2) {
                this.f31055n = false;
                throw th2;
            }
            return zzaeg.zzb(th, mo8288c(), this.f31048g, c7021u4, i2, z, i);
        }
        i2 = 4;
        return zzaeg.zzb(th, mo8288c(), this.f31048g, c7021u4, i2, z, i);
    }

    /* renamed from: j */
    public final int m10104j(C7058v4 c7058v4, C7205z3 c7205z3, int i) {
        bm3 bm3Var = this.f31050i;
        Objects.requireNonNull(bm3Var);
        int mo8342d = bm3Var.mo8342d(c7058v4, c7205z3, i);
        if (mo8342d == -4) {
            if (c7205z3.m16713c()) {
                this.f31053l = Long.MIN_VALUE;
                return this.f31054m ? -4 : -3;
            }
            long j = c7205z3.f32800e + this.f31052k;
            c7205z3.f32800e = j;
            this.f31053l = Math.max(this.f31053l, j);
        } else if (mo8342d == -5) {
            C7021u4 c7021u4 = c7058v4.f31066a;
            Objects.requireNonNull(c7021u4);
            if (c7021u4.f30515r != Long.MAX_VALUE) {
                C6947s4 c6947s4 = new C6947s4(c7021u4, null);
                c6947s4.m11125r(c7021u4.f30515r + this.f31052k);
                c7058v4.f31066a = new C7021u4(c6947s4);
                return -5;
            }
        }
        return mo8342d;
    }

    /* renamed from: k */
    public final int m10103k(long j) {
        bm3 bm3Var = this.f31050i;
        Objects.requireNonNull(bm3Var);
        return bm3Var.mo8345a(j - this.f31052k);
    }

    /* renamed from: l */
    public final boolean m10102l() {
        boolean z;
        if (mo10120P()) {
            z = this.f31054m;
        } else {
            bm3 bm3Var = this.f31050i;
            Objects.requireNonNull(bm3Var);
            z = bm3Var.mo8344b();
        }
        return z;
    }

    /* renamed from: m */
    protected void mo8285m(boolean z, boolean z2) {
    }

    /* renamed from: n */
    protected abstract void mo8284n(long j, boolean z);

    /* renamed from: o */
    protected void mo8282o() {
    }

    /* renamed from: p */
    protected void mo8280p() {
    }

    /* renamed from: q */
    protected abstract void mo8279q();

    /* renamed from: r */
    protected void mo8278r() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6986t6
    public AbstractC7026u9 zzi() {
        return null;
    }
}
