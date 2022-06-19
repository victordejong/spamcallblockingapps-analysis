package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iv3.class */
public final class iv3 implements uq3 {

    /* renamed from: a */
    public static final br3 f24492a = hv3.f24054b;

    /* renamed from: b */
    private xq3 f24493b;

    /* renamed from: c */
    private qv3 f24494c;

    /* renamed from: d */
    private boolean f24495d;

    @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    /* renamed from: a */
    private final boolean m14266a(vq3 vq3Var) {
        kv3 kv3Var = new kv3();
        if (!kv3Var.m13771c(vq3Var, true) || (kv3Var.f25428a & 2) != 2) {
            return false;
        }
        int min = Math.min(kv3Var.f25432e, 8);
        C6694la c6694la = new C6694la(min);
        ((pq3) vq3Var).mo9882l(c6694la.m13634q(), 0, min, false);
        c6694la.m13635p(0);
        if (c6694la.m13639l() >= 5 && c6694la.m13629v() == 127 && c6694la.m13657B() == 1179402563) {
            this.f24494c = new gv3();
            return true;
        }
        c6694la.m13635p(0);
        try {
            if (es3.m15387c(1, c6694la, true)) {
                this.f24494c = new sv3();
                return true;
            }
        } catch (zzaha e) {
        }
        c6694la.m13635p(0);
        if (!mv3.m13066j(c6694la)) {
            return false;
        }
        this.f24494c = new mv3();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    public final int mo9044e(vq3 vq3Var, rr3 rr3Var) {
        C7173y8.m8894e(this.f24493b);
        if (this.f24494c == null) {
            if (!m14266a(vq3Var)) {
                throw zzaha.zzb("Failed to determine bitstream type", null);
            }
            vq3Var.mo9884i();
        }
        if (!this.f24495d) {
            yr3 mo8690o = this.f24493b.mo8690o(0, 1);
            this.f24493b.mo8688t();
            this.f24494c.m11789d(this.f24493b, mo8690o);
            this.f24495d = true;
        }
        return this.f24494c.m11787f(vq3Var, rr3Var);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        try {
            return m14266a(vq3Var);
        } catch (zzaha e) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f24493b = xq3Var;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        qv3 qv3Var = this.f24494c;
        if (qv3Var != null) {
            qv3Var.m11788e(j, j2);
        }
    }
}
