package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.np */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/np.class */
public final class C6783np extends ie3<C6783np, C6746mp> implements nf3 {
    private static final C6783np zzh;
    private int zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        C6783np c6783np = new C6783np();
        zzh = c6783np;
        ie3.m14414z(C6783np.class, c6783np);
    }

    private C6783np() {
    }

    /* renamed from: C */
    public static C6746mp m12839C() {
        return zzh.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m12837E(C6783np c6783np, int i) {
        c6783np.zzb |= 1;
        c6783np.zze = i;
    }

    /* renamed from: F */
    public static /* synthetic */ void m12836F(C6783np c6783np, int i) {
        c6783np.zzb |= 2;
        c6783np.zzf = i;
    }

    /* renamed from: G */
    public static /* synthetic */ void m12835G(C6783np c6783np, int i) {
        c6783np.zzb |= 4;
        c6783np.zzg = i;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002င\u0001\u0003င\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new C6783np();
            }
            if (i2 == 4) {
                return new C6746mp(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
