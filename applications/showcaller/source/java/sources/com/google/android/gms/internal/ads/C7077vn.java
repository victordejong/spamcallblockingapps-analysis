package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.vn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vn.class */
public final class C7077vn extends ie3<C7077vn, C7040un> implements nf3 {
    private static final C7077vn zzm;
    private int zzb;
    private C6709lp zzf;
    private int zzg;
    private C6783np zzh;
    private int zzi;
    private String zze = "";
    private int zzj = 1000;
    private int zzk = 1000;
    private int zzl = 1000;

    static {
        C7077vn c7077vn = new C7077vn();
        zzm = c7077vn;
        ie3.m14414z(C7077vn.class, c7077vn);
    }

    private C7077vn() {
    }

    /* renamed from: C */
    public static C7077vn m9929C() {
        return zzm;
    }

    /* renamed from: E */
    public static /* synthetic */ void m9927E(C7077vn c7077vn, String str) {
        c7077vn.zzb |= 1;
        c7077vn.zze = str;
    }

    /* renamed from: F */
    public static /* synthetic */ void m9926F(C7077vn c7077vn, C6783np c6783np) {
        c6783np.getClass();
        c7077vn.zzh = c6783np;
        c7077vn.zzb |= 8;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                me3 me3Var = C6299ao.f20061a;
                return ie3.m14431A(zzm, "\u0001\b��\u0001\u0001\b\b������\u0001ဈ��\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", me3Var, "zzk", me3Var, "zzl", me3Var});
            } else if (i2 == 3) {
                return new C7077vn();
            } else {
                if (i2 == 4) {
                    return new C7040un(null);
                }
                if (i2 == 5) {
                    return zzm;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
