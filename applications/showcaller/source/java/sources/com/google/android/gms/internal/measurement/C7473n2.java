package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.n2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/n2.class */
public final class C7473n2 extends AbstractC7609x5<C7473n2, C7459m2> implements AbstractC7636z6 {
    private static final C7473n2 zze;
    private AbstractC7351e6<C7515q2> zza = AbstractC7609x5.m6764q();

    static {
        C7473n2 c7473n2 = new C7473n2();
        zze = c7473n2;
        AbstractC7609x5.m6759w(C7473n2.class, c7473n2);
    }

    private C7473n2() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", C7515q2.class});
            }
            if (i2 == 3) {
                return new C7473n2();
            }
            if (i2 == 4) {
                return new C7459m2(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
