package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.u5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u5.class */
public final class C7022u5 implements wk3, fk2 {

    /* renamed from: d */
    private final C7096w5 f30526d;

    /* renamed from: e */
    private vk3 f30527e;

    /* renamed from: f */
    private gj2 f30528f;

    /* renamed from: g */
    final /* synthetic */ C7170y5 f30529g;

    public C7022u5(C7170y5 c7170y5, C7096w5 c7096w5) {
        vk3 vk3Var;
        gj2 gj2Var;
        this.f30529g = c7170y5;
        vk3Var = c7170y5.f32422e;
        this.f30527e = vk3Var;
        gj2Var = c7170y5.f32423f;
        this.f30528f = gj2Var;
        this.f30526d = c7096w5;
    }

    /* renamed from: a */
    private final boolean m10410a(int i, mk3 mk3Var) {
        gj2 gj2Var;
        vk3 vk3Var;
        mk3 mk3Var2 = null;
        if (mk3Var != null) {
            C7096w5 c7096w5 = this.f30526d;
            int i2 = 0;
            while (true) {
                mk3Var2 = null;
                if (i2 >= c7096w5.f31456c.size()) {
                    break;
                } else if (c7096w5.f31456c.get(i2).f20103d == mk3Var.f20103d) {
                    mk3Var2 = mk3Var.m13170c(Pair.create(c7096w5.f31455b, mk3Var.f20100a));
                    break;
                } else {
                    i2++;
                }
            }
            if (mk3Var2 == null) {
                return false;
            }
        }
        int i3 = i + this.f30526d.f31457d;
        vk3 vk3Var2 = this.f30527e;
        if (vk3Var2.f31235a != i3 || !C7101wa.m9720H(vk3Var2.f31236b, mk3Var2)) {
            vk3Var = this.f30529g.f32422e;
            this.f30527e = vk3Var.m9953a(i3, mk3Var2, 0L);
        }
        gj2 gj2Var2 = this.f30528f;
        if (gj2Var2.f23367a != i3 || !C7101wa.m9720H(gj2Var2.f23368b, mk3Var2)) {
            gj2Var = this.f30529g.f32423f;
            this.f30528f = gj2Var.m14929a(i3, mk3Var2);
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: b */
    public final void mo9570b(int i, mk3 mk3Var, jk3 jk3Var) {
        if (m10410a(i, mk3Var)) {
            this.f30527e.m9941m(jk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: d */
    public final void mo9569d(int i, mk3 mk3Var, dk3 dk3Var, jk3 jk3Var) {
        if (m10410a(i, mk3Var)) {
            this.f30527e.m9949e(dk3Var, jk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: g */
    public final void mo9568g(int i, mk3 mk3Var, dk3 dk3Var, jk3 jk3Var) {
        if (m10410a(i, mk3Var)) {
            this.f30527e.m9947g(dk3Var, jk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: j */
    public final void mo9567j(int i, mk3 mk3Var, dk3 dk3Var, jk3 jk3Var) {
        if (m10410a(i, mk3Var)) {
            this.f30527e.m9945i(dk3Var, jk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.wk3
    /* renamed from: r */
    public final void mo9566r(int i, mk3 mk3Var, dk3 dk3Var, jk3 jk3Var, IOException iOException, boolean z) {
        if (m10410a(i, mk3Var)) {
            this.f30527e.m9943k(dk3Var, jk3Var, iOException, z);
        }
    }
}
