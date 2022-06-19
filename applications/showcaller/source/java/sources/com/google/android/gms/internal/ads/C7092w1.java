package com.google.android.gms.internal.ads;

import android.view.View;
/* renamed from: com.google.android.gms.internal.ads.w1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w1.class */
public final class C7092w1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private final View f31426i;

    public C7092w1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2, View view) {
        super(c6869q0, "Rh7wPiyt0Q0zAefasWAQ/36LhULiVi3U1eCO9K34euxkll+3xBb3q2iaqyDuAy33", "Kmv9uscZLQkY9DcwgermeDphrIGnHnQJYdRAudw6Thg=", j14Var, i, 57);
        this.f31426i = view;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        if (this.f31426i != null) {
            Boolean bool = (Boolean) C7192yr.m8714c().m14263c(C6679kw.f25621X1);
            C7017u0 c7017u0 = new C7017u0((String) this.f32758f.invoke(null, this.f31426i, this.f32754b.m12081c().getResources().getDisplayMetrics(), bool));
            x14 m8988C = y14.m8988C();
            m8988C.m9373q(c7017u0.f30448b.longValue());
            m8988C.m9372r(c7017u0.f30449c.longValue());
            m8988C.m9371s(c7017u0.f30450d.longValue());
            if (bool.booleanValue()) {
                m8988C.m9370t(c7017u0.f30451e.longValue());
            }
            this.f32757e.m14238D(m8988C.m15512n());
        }
    }
}
