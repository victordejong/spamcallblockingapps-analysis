package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gi3.class */
public final class gi3 extends ie3<gi3, fi3> implements nf3 {
    private static final gi3 zzh;
    private int zzb;
    private String zze = "";
    private long zzf;
    private boolean zzg;

    static {
        gi3 gi3Var = new gi3();
        zzh = gi3Var;
        ie3.m14414z(gi3.class, gi3Var);
    }

    private gi3() {
    }

    /* renamed from: C */
    public static fi3 m14939C() {
        return zzh.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m14937E(gi3 gi3Var, String str) {
        gi3Var.zzb |= 1;
        gi3Var.zze = str;
    }

    /* renamed from: F */
    public static /* synthetic */ void m14936F(gi3 gi3Var, long j) {
        gi3Var.zzb |= 2;
        gi3Var.zzf = j;
    }

    /* renamed from: G */
    public static /* synthetic */ void m14935G(gi3 gi3Var, boolean z) {
        gi3Var.zzb |= 4;
        gi3Var.zzg = z;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new gi3();
            }
            if (i2 == 4) {
                return new fi3(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
