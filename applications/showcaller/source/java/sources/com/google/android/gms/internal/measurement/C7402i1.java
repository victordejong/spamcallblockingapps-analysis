package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.i1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i1.class */
public final class C7402i1 extends AbstractC7609x5<C7402i1, C7388h1> implements AbstractC7636z6 {
    private static final C7402i1 zzg;
    private int zza;
    private String zze = "";
    private String zzf = "";

    static {
        C7402i1 c7402i1 = new C7402i1();
        zzg = c7402i1;
        AbstractC7609x5.m6759w(C7402i1.class, c7402i1);
    }

    private C7402i1() {
    }

    /* renamed from: A */
    public final String m7348A() {
        return this.zze;
    }

    /* renamed from: B */
    public final String m7347B() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7609x5
    /* renamed from: y */
    public final Object mo6745y(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return AbstractC7609x5.m6758x(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C7402i1();
            }
            if (i2 == 4) {
                return new C7388h1(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
