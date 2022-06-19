package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.w2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/w2.class */
public final class C7593w2 extends AbstractC7609x5<C7593w2, C7554t2> implements AbstractC7636z6 {
    private static final C7593w2 zzk;
    private int zza;
    private int zze;
    private AbstractC7351e6<C7593w2> zzf = AbstractC7609x5.m6764q();
    private String zzg = "";
    private String zzh = "";
    private boolean zzi;
    private double zzj;

    static {
        C7593w2 c7593w2 = new C7593w2();
        zzk = c7593w2;
        AbstractC7609x5.m6759w(C7593w2.class, c7593w2);
    }

    private C7593w2() {
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဌ��\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zza", "zze", zzeg.zzb(), "zzf", C7593w2.class, "zzg", "zzh", "zzi", "zzj"});
            } else if (i2 == 3) {
                return new C7593w2();
            } else {
                if (i2 == 4) {
                    return new C7554t2(null);
                }
                if (i2 == 5) {
                    return zzk;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
