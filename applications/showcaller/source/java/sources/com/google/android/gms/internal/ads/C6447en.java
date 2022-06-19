package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.en */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/en.class */
public final class C6447en extends ie3<C6447en, C6409dn> implements nf3 {
    private static final C6447en zzg;
    private int zzb;
    private boolean zze;
    private int zzf;

    static {
        C6447en c6447en = new C6447en();
        zzg = c6447en;
        ie3.m14414z(C6447en.class, c6447en);
    }

    private C6447en() {
    }

    /* renamed from: C */
    public static C6409dn m15424C() {
        return zzg.m14418v();
    }

    /* renamed from: D */
    public static C6447en m15423D() {
        return zzg;
    }

    /* renamed from: F */
    public static /* synthetic */ void m15421F(C6447en c6447en, boolean z) {
        c6447en.zzb |= 1;
        c6447en.zze = z;
    }

    /* renamed from: G */
    public static /* synthetic */ void m15420G(C6447en c6447en, int i) {
        c6447en.zzb |= 2;
        c6447en.zzf = i;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002ဋ\u0001", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new C6447en();
            }
            if (i2 == 4) {
                return new C6409dn(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
