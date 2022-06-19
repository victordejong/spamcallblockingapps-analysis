package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.u1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/u1.class */
public final class C7566u1 extends AbstractC7609x5<C7566u1, C7553t1> implements AbstractC7636z6 {
    private static final C7566u1 zzg;
    private int zza;
    private String zze = "";
    private long zzf;

    static {
        C7566u1 c7566u1 = new C7566u1();
        zzg = c7566u1;
        AbstractC7609x5.m6759w(C7566u1.class, c7566u1);
    }

    private C7566u1() {
    }

    /* renamed from: A */
    public static C7553t1 m6894A() {
        return zzg.m6762s();
    }

    /* renamed from: C */
    public static /* synthetic */ void m6892C(C7566u1 c7566u1, String str) {
        str.getClass();
        c7566u1.zza |= 1;
        c7566u1.zze = str;
    }

    /* renamed from: D */
    public static /* synthetic */ void m6891D(C7566u1 c7566u1, long j) {
        c7566u1.zza |= 2;
        c7566u1.zzf = j;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C7566u1();
            }
            if (i2 == 4) {
                return new C7553t1(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
