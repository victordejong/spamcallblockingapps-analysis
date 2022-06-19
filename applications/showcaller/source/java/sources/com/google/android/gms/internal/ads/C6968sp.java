package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.sp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sp.class */
public final class C6968sp extends ie3<C6968sp, C6931rp> implements nf3 {
    private static final C6968sp zzh;
    private int zzb;
    private int zze = 1000;
    private C7079vp zzf;
    private C6709lp zzg;

    static {
        C6968sp c6968sp = new C6968sp();
        zzh = c6968sp;
        ie3.m14414z(C6968sp.class, c6968sp);
    }

    private C6968sp() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", C6299ao.f20061a, "zzf", "zzg"});
            } else if (i2 == 3) {
                return new C6968sp();
            } else {
                if (i2 == 4) {
                    return new C6931rp(null);
                }
                if (i2 == 5) {
                    return zzh;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
