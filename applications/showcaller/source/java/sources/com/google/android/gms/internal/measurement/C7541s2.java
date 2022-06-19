package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.s2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s2.class */
public final class C7541s2 extends AbstractC7609x5<C7541s2, C7528r2> implements AbstractC7636z6 {
    private static final C7541s2 zzg;
    private int zza;
    private AbstractC7351e6<C7593w2> zze = AbstractC7609x5.m6764q();
    private C7473n2 zzf;

    static {
        C7541s2 c7541s2 = new C7541s2();
        zzg = c7541s2;
        AbstractC7609x5.m6759w(C7541s2.class, c7541s2);
    }

    private C7541s2() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\u001b\u0002ဉ��", new Object[]{"zza", "zze", C7593w2.class, "zzf"});
            }
            if (i2 == 3) {
                return new C7541s2();
            }
            if (i2 == 4) {
                return new C7528r2(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
