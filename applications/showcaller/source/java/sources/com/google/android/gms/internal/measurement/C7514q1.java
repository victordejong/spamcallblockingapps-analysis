package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.q1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/q1.class */
public final class C7514q1 extends AbstractC7609x5<C7514q1, C7486o1> implements AbstractC7636z6 {
    private static final C7514q1 zzg;
    private int zza;
    private int zze;
    private long zzf;

    static {
        C7514q1 c7514q1 = new C7514q1();
        zzg = c7514q1;
        AbstractC7609x5.m6759w(C7514q1.class, c7514q1);
    }

    private C7514q1() {
    }

    /* renamed from: E */
    public static C7486o1 m7006E() {
        return zzg.m6762s();
    }

    /* renamed from: G */
    public static /* synthetic */ void m7004G(C7514q1 c7514q1, int i) {
        c7514q1.zza |= 1;
        c7514q1.zze = i;
    }

    /* renamed from: H */
    public static /* synthetic */ void m7003H(C7514q1 c7514q1, long j) {
        c7514q1.zza |= 2;
        c7514q1.zzf = j;
    }

    /* renamed from: A */
    public final boolean m7010A() {
        return (this.zza & 1) != 0;
    }

    /* renamed from: B */
    public final int m7009B() {
        return this.zze;
    }

    /* renamed from: C */
    public final boolean m7008C() {
        return (this.zza & 2) != 0;
    }

    /* renamed from: D */
    public final long m7007D() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဂ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C7514q1();
            }
            if (i2 == 4) {
                return new C7486o1(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
