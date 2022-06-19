package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.jp */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jp.class */
public final class C6635jp extends ie3<C6635jp, C6598ip> implements nf3 {
    private static final C6635jp zzh;
    private int zzb;
    private String zze = "";
    private int zzf;
    private C6709lp zzg;

    static {
        C6635jp c6635jp = new C6635jp();
        zzh = c6635jp;
        ie3.m14414z(C6635jp.class, c6635jp);
    }

    private C6635jp() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zze", "zzf", C6299ao.f20061a, "zzg"});
            } else if (i2 == 3) {
                return new C6635jp();
            } else {
                if (i2 == 4) {
                    return new C6598ip(null);
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
