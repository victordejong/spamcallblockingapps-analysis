package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uj3.class */
public final class uj3 implements wk3, fk2 {

    /* renamed from: d */
    private final Object f30647d;

    /* renamed from: e */
    private vk3 f30648e;

    /* renamed from: f */
    private gj2 f30649f;

    /* renamed from: g */
    final /* synthetic */ wj3 f30650g;

    public uj3(wj3 wj3Var, Object obj) {
        this.f30650g = wj3Var;
        this.f30648e = wj3Var.m15826s(null);
        this.f30649f = wj3Var.m15824u(null);
        this.f30647d = obj;
    }

    /* renamed from: a */
    private final boolean m10319a(int i, mk3 mk3Var) {
        mk3 mk3Var2;
        if (mk3Var != null) {
            mk3Var2 = this.f30650g.mo9573z(this.f30647d, mk3Var);
            if (mk3Var2 == null) {
                return false;
            }
        } else {
            mk3Var2 = null;
        }
        vk3 vk3Var = this.f30648e;
        if (vk3Var.f31235a != i || !C7101wa.m9720H(vk3Var.f31236b, mk3Var2)) {
            this.f30648e = this.f30650g.m15825t(i, mk3Var2, 0L);
        }
        gj2 gj2Var = this.f30649f;
        if (gj2Var.f23367a != i || !C7101wa.m9720H(gj2Var.f23368b, mk3Var2)) {
            this.f30649f = this.f30650g.m15823v(i, mk3Var2);
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: b */
    public final void mo9570b(int i, mk3 mk3Var, jk3 jk3Var) {
        if (m10319a(i, mk3Var)) {
            this.f30648e.m9941m(jk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: d */
    public final void mo9569d(int i, mk3 mk3Var, dk3 dk3Var, jk3 jk3Var) {
        if (m10319a(i, mk3Var)) {
            this.f30648e.m9949e(dk3Var, jk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: g */
    public final void mo9568g(int i, mk3 mk3Var, dk3 dk3Var, jk3 jk3Var) {
        if (m10319a(i, mk3Var)) {
            this.f30648e.m9947g(dk3Var, jk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: j */
    public final void mo9567j(int i, mk3 mk3Var, dk3 dk3Var, jk3 jk3Var) {
        if (m10319a(i, mk3Var)) {
            this.f30648e.m9945i(dk3Var, jk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: r */
    public final void mo9566r(int i, mk3 mk3Var, dk3 dk3Var, jk3 jk3Var, IOException iOException, boolean z) {
        if (m10319a(i, mk3Var)) {
            this.f30648e.m9943k(dk3Var, jk3Var, iOException, z);
        }
    }
}
