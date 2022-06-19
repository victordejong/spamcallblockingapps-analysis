package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s14.class */
public final class s14 extends ie3<s14, r14> implements nf3 {
    private static final s14 zzg;
    private int zzb;
    private int zze;
    private long zzf = -1;

    static {
        s14 s14Var = new s14();
        zzg = s14Var;
        ie3.m14414z(s14.class, s14Var);
    }

    private s14() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဂ\u0001", new Object[]{"zzb", "zze", o14.f27401a, "zzf"});
            } else if (i2 == 3) {
                return new s14();
            } else {
                if (i2 == 4) {
                    return new r14(null);
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
