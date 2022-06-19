package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.hq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hq.class */
public final class C6561hq extends ie3<C6561hq, C6524gq> implements nf3 {
    private static final C6561hq zzg;
    private int zzb;
    private int zze = 1000;
    private C7079vp zzf;

    static {
        C6561hq c6561hq = new C6561hq();
        zzg = c6561hq;
        ie3.m14414z(C6561hq.class, c6561hq);
    }

    private C6561hq() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzb", "zze", C6299ao.f20061a, "zzf"});
            } else if (i2 == 3) {
                return new C6561hq();
            } else {
                if (i2 == 4) {
                    return new C6524gq(null);
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
