package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.q2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/q2.class */
public final class C7515q2 extends AbstractC7609x5<C7515q2, C7487o2> implements AbstractC7636z6 {
    private static final C7515q2 zzg;
    private int zza;
    private String zze = "";
    private AbstractC7351e6<C7593w2> zzf = AbstractC7609x5.m6764q();

    static {
        C7515q2 c7515q2 = new C7515q2();
        zzg = c7515q2;
        AbstractC7609x5.m6759w(C7515q2.class, c7515q2);
    }

    private C7515q2() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဈ��\u0002\u001b", new Object[]{"zza", "zze", "zzf", C7593w2.class});
            }
            if (i2 == 3) {
                return new C7515q2();
            }
            if (i2 == 4) {
                return new C7487o2(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
