package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ho */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ho.class */
public final class C6559ho extends ie3<C6559ho, C6522go> implements nf3 {
    private static final C6559ho zzg;
    private int zzb;
    private int zze;
    private ne3 zzf = ie3.m14428l();

    static {
        C6559ho c6559ho = new C6559ho();
        zzg = c6559ho;
        ie3.m14414z(C6559ho.class, c6559ho);
    }

    private C6559ho() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u0016", new Object[]{"zzb", "zze", C6299ao.f20061a, "zzf"});
            } else if (i2 == 3) {
                return new C6559ho();
            } else {
                if (i2 == 4) {
                    return new C6522go(null);
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
