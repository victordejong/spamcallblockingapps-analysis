package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kv3.class */
final class kv3 {

    /* renamed from: a */
    public int f25428a;

    /* renamed from: b */
    public long f25429b;

    /* renamed from: c */
    public int f25430c;

    /* renamed from: d */
    public int f25431d;

    /* renamed from: e */
    public int f25432e;

    /* renamed from: f */
    public final int[] f25433f = new int[255];

    /* renamed from: g */
    private final C6694la f25434g = new C6694la(255);

    /* renamed from: a */
    public final void m13773a() {
        this.f25428a = 0;
        this.f25429b = 0L;
        this.f25430c = 0;
        this.f25431d = 0;
        this.f25432e = 0;
    }

    /* renamed from: b */
    public final boolean m13772b(vq3 vq3Var, long j) {
        int i;
        C7173y8.m8898a(vq3Var.mo9465m() == vq3Var.mo9466j());
        this.f25434g.m13642i(4);
        while (true) {
            i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
            if ((i == 0 || vq3Var.mo9465m() + 4 < j) && yq3.m8717e(vq3Var, this.f25434g.m13634q(), 0, 4, true)) {
                this.f25434g.m13635p(0);
                if (this.f25434g.m13657B() == 1332176723) {
                    vq3Var.mo9884i();
                    return true;
                }
                ((pq3) vq3Var).m12196p(1, false);
            }
        }
        do {
            if (i != 0 && vq3Var.mo9465m() >= j) {
                return false;
            }
        } while (vq3Var.mo9889C(1) != -1);
        return false;
    }

    /* renamed from: c */
    public final boolean m13771c(vq3 vq3Var, boolean z) {
        m13773a();
        this.f25434g.m13642i(27);
        if (!yq3.m8717e(vq3Var, this.f25434g.m13634q(), 0, 27, z) || this.f25434g.m13657B() != 1332176723) {
            return false;
        }
        if (this.f25434g.m13629v() != 0) {
            if (!z) {
                throw zzaha.zzc("unsupported bit stream revision");
            }
            return false;
        }
        this.f25428a = this.f25434g.m13629v();
        this.f25429b = this.f25434g.m13652G();
        this.f25434g.m13656C();
        this.f25434g.m13656C();
        this.f25434g.m13656C();
        int m13629v = this.f25434g.m13629v();
        this.f25430c = m13629v;
        this.f25431d = m13629v + 27;
        this.f25434g.m13642i(m13629v);
        if (!yq3.m8717e(vq3Var, this.f25434g.m13634q(), 0, this.f25430c, z)) {
            return false;
        }
        for (int i = 0; i < this.f25430c; i++) {
            this.f25433f[i] = this.f25434g.m13629v();
            this.f25432e += this.f25433f[i];
        }
        return true;
    }
}
