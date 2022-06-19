package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.xp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xp.class */
public final class C7153xp extends ie3<C7153xp, C7116wp> implements nf3 {
    private static final C7153xp zzi;
    private int zzb;
    private C6783np zze;
    private int zzf = 1000;
    private C7079vp zzg;
    private C6709lp zzh;

    static {
        C7153xp c7153xp = new C7153xp();
        zzi = c7153xp;
        ie3.m14414z(C7153xp.class, c7153xp);
    }

    private C7153xp() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzb", "zze", "zzf", C6299ao.f20061a, "zzg", "zzh"});
            } else if (i2 == 3) {
                return new C7153xp();
            } else {
                if (i2 == 4) {
                    return new C7116wp(null);
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
