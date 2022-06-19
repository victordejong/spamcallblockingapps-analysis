package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* renamed from: com.google.android.gms.internal.ads.o1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o1.class */
public final class C6796o1 extends AbstractCallableC7203z1 {
    public C6796o1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "Md0NasjzX5Dv6RV9gbRrdbbQw799E9EBpEgmAwiNqi/RiG7V51y0yTZI5hLTRiUF", "4FqMwpBmkecZ5KuntXganMUU8jtWDsP5C5fiOE4sCtY=", j14Var, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        try {
            int i = 1;
            boolean booleanValue = ((Boolean) this.f32758f.invoke(null, this.f32754b.m12081c())).booleanValue();
            j14 j14Var = this.f32757e;
            if (true == booleanValue) {
                i = 2;
            }
            j14Var.m14225T(i);
        } catch (InvocationTargetException e) {
            this.f32757e.m14225T(3);
        }
    }
}
