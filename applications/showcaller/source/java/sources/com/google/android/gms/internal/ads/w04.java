package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w04.class */
public final class w04 extends ie3<w04, v04> implements nf3 {
    private static final w04 zzg;
    private int zzb;
    private String zze = "";
    private String zzf = "";

    static {
        w04 w04Var = new w04();
        zzg = w04Var;
        ie3.m14414z(w04.class, w04Var);
    }

    private w04() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new w04();
            }
            if (i2 == 4) {
                return new v04(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
