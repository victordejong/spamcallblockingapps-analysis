package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u14.class */
public final class u14 extends ie3<u14, t14> implements nf3 {
    private static final u14 zzg;
    private int zzb;
    private long zze = -1;
    private int zzf = 1000;

    static {
        u14 u14Var = new u14();
        zzg = u14Var;
        ie3.m14414z(u14.class, u14Var);
    }

    private u14() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဂ��\u0002ဌ\u0001", new Object[]{"zzb", "zze", "zzf", g24.f23230a});
            } else if (i2 == 3) {
                return new u14();
            } else {
                if (i2 == 4) {
                    return new t14(null);
                }
                if (i2 == 5) {
                    return zzg;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
