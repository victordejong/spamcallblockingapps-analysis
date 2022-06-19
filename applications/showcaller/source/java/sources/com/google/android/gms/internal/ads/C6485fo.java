package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.fo */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fo.class */
public final class C6485fo extends ie3<C6485fo, C6448eo> implements nf3 {
    private static final C6485fo zzi;
    private int zzb;
    private int zzf;
    private C6709lp zzh;
    private String zze = "";
    private ne3 zzg = ie3.m14428l();

    static {
        C6485fo c6485fo = new C6485fo();
        zzi = c6485fo;
        ie3.m14414z(C6485fo.class, c6485fo);
    }

    private C6485fo() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဈ��\u0002ဌ\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzb", "zze", "zzf", C6299ao.f20061a, "zzg", "zzh"});
            } else if (i2 == 3) {
                return new C6485fo();
            } else {
                if (i2 == 4) {
                    return new C6448eo(null);
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
