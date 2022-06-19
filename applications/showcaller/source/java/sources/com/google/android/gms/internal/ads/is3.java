package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/is3.class */
final class is3 implements kq3 {

    /* renamed from: a */
    private final ir3 f24425a;

    /* renamed from: b */
    private final int f24426b;

    /* renamed from: c */
    private final cr3 f24427c = new cr3();

    public /* synthetic */ is3(ir3 ir3Var, int i, js3 js3Var) {
        this.f24425a = ir3Var;
        this.f24426b = i;
    }

    /* renamed from: c */
    private final long m14284c(vq3 vq3Var) {
        while (vq3Var.mo9466j() < vq3Var.mo9464n() - 6) {
            ir3 ir3Var = this.f24425a;
            int i = this.f24426b;
            cr3 cr3Var = this.f24427c;
            long mo9466j = vq3Var.mo9466j();
            byte[] bArr = new byte[2];
            pq3 pq3Var = (pq3) vq3Var;
            pq3Var.mo9882l(bArr, 0, 2, false);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                vq3Var.mo9884i();
                pq3Var.m12195q((int) (mo9466j - vq3Var.mo9465m()), false);
            } else {
                C6694la c6694la = new C6694la(16);
                System.arraycopy(bArr, 0, c6694la.m13634q(), 0, 2);
                c6694la.m13637n(yq3.m8720b(vq3Var, c6694la.m13634q(), 2, 14));
                vq3Var.mo9884i();
                pq3Var.m12195q((int) (mo9466j - vq3Var.mo9465m()), false);
                if (dr3.m15708a(c6694la, ir3Var, i, cr3Var)) {
                    break;
                }
            }
            pq3Var.m12195q(1, false);
        }
        if (vq3Var.mo9466j() >= vq3Var.mo9464n() - 6) {
            ((pq3) vq3Var).m12195q((int) (vq3Var.mo9464n() - vq3Var.mo9466j()), false);
            return this.f24425a.f24419j;
        }
        return this.f24427c.f21364a;
    }

    @Override // com.google.android.gms.internal.ads.kq3
    /* renamed from: a */
    public final jq3 mo8153a(vq3 vq3Var, long j) {
        long mo9465m = vq3Var.mo9465m();
        long m14284c = m14284c(vq3Var);
        long mo9466j = vq3Var.mo9466j();
        ((pq3) vq3Var).m12195q(Math.max(6, this.f24425a.f24412c), false);
        long m14284c2 = m14284c(vq3Var);
        return (m14284c > j || m14284c2 <= j) ? m14284c2 <= j ? jq3.m14056e(m14284c2, vq3Var.mo9466j()) : jq3.m14057d(m14284c, mo9465m) : jq3.m14055f(mo9466j);
    }

    @Override // com.google.android.gms.internal.ads.kq3
    /* renamed from: b */
    public final void mo8152b() {
    }
}
