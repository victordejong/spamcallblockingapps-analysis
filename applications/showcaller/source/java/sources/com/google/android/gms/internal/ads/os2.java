package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/os2.class */
public final class os2 extends ie3<os2, ms2> implements nf3 {
    private static final os2 zzi;
    private int zzb;
    private int zze;
    private String zzf = "";
    private String zzg = "";
    private ks2 zzh;

    static {
        os2 os2Var = new os2();
        zzi = os2Var;
        ie3.m14414z(os2.class, os2Var);
    }

    private os2() {
    }

    /* renamed from: C */
    public static ms2 m12538C() {
        return zzi.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m12536E(os2 os2Var, String str) {
        str.getClass();
        os2Var.zzb |= 2;
        os2Var.zzf = str;
    }

    /* renamed from: F */
    public static /* synthetic */ void m12535F(os2 os2Var, ks2 ks2Var) {
        ks2Var.getClass();
        os2Var.zzh = ks2Var;
        os2Var.zzb |= 8;
    }

    /* renamed from: G */
    public static /* synthetic */ void m12534G(os2 os2Var, int i) {
        os2Var.zze = 1;
        os2Var.zzb = 1 | os2Var.zzb;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဌ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzb", "zze", ns2.f27281a, "zzf", "zzg", "zzh"});
            } else if (i2 == 3) {
                return new os2();
            } else {
                if (i2 == 4) {
                    return new ms2(null);
                }
                if (i2 == 5) {
                    return zzi;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
