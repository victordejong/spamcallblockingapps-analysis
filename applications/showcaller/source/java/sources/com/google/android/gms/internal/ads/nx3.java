package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nx3.class */
public final class nx3 implements gx3 {

    /* renamed from: a */
    private final C6657ka f27360a = new C6657ka(new byte[4], 4);

    /* renamed from: b */
    final /* synthetic */ px3 f27361b;

    public nx3(px3 px3Var) {
        this.f27361b = px3Var;
    }

    @Override // com.google.android.gms.internal.ads.gx3
    /* renamed from: a */
    public final void mo9428a(C6990ta c6990ta, xq3 xq3Var, tx3 tx3Var) {
    }

    @Override // com.google.android.gms.internal.ads.gx3
    /* renamed from: b */
    public final void mo9427b(C6694la c6694la) {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int i;
        if (c6694la.m13629v() == 0 && (c6694la.m13629v() & 128) != 0) {
            c6694la.m13632s(6);
            int m13639l = c6694la.m13639l() / 4;
            for (int i2 = 0; i2 < m13639l; i2++) {
                c6694la.m13631t(this.f27360a, 4);
                int m13947h = this.f27360a.m13947h(16);
                this.f27360a.m13949f(3);
                if (m13947h == 0) {
                    this.f27360a.m13949f(13);
                } else {
                    int m13947h2 = this.f27360a.m13947h(13);
                    sparseArray2 = this.f27361b.f28219f;
                    if (sparseArray2.get(m13947h2) == null) {
                        sparseArray3 = this.f27361b.f28219f;
                        sparseArray3.put(m13947h2, new hx3(new ox3(this.f27361b, m13947h2)));
                        px3 px3Var = this.f27361b;
                        i = px3Var.f28225l;
                        px3Var.f28225l = i + 1;
                    }
                }
            }
            sparseArray = this.f27361b.f28219f;
            sparseArray.remove(0);
        }
    }
}
