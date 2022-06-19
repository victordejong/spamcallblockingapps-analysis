package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.yn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yn.class */
public final class C7188yn extends ie3<C7188yn, C7114wn> implements nf3 {
    private static final C7188yn zzi;
    private int zzb;
    private int zze;
    private C6783np zzf;
    private String zzg = "";
    private String zzh = "";

    static {
        C7188yn c7188yn = new C7188yn();
        zzi = c7188yn;
        ie3.m14414z(C7188yn.class, c7188yn);
    }

    private C7188yn() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzi, "\u0001\u0004��\u0001\u0005\b\u0004������\u0005ဌ��\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzb", "zze", C7151xn.f32126a, "zzf", "zzg", "zzh"});
            } else if (i2 == 3) {
                return new C7188yn();
            } else {
                if (i2 == 4) {
                    return new C7114wn(null);
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
