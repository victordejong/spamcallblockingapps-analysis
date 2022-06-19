package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xh3.class */
public final class xh3 extends ie3<xh3, vh3> implements nf3 {
    private static final xh3 zzh;
    private int zzb;
    private int zze;
    private String zzf = "";
    private zzgex zzg = zzgex.f34110d;

    static {
        xh3 xh3Var = new xh3();
        zzh = xh3Var;
        ie3.m14414z(xh3.class, xh3Var);
    }

    private xh3() {
    }

    /* renamed from: C */
    public static vh3 m9158C() {
        return zzh.m14418v();
    }

    /* renamed from: D */
    public static /* synthetic */ xh3 m9157D() {
        return zzh;
    }

    /* renamed from: E */
    public static /* synthetic */ void m9156E(xh3 xh3Var, String str) {
        xh3Var.zzb |= 2;
        xh3Var.zzf = "image/png";
    }

    /* renamed from: F */
    public static /* synthetic */ void m9155F(xh3 xh3Var, zzgex zzgexVar) {
        zzgexVar.getClass();
        xh3Var.zzb |= 4;
        xh3Var.zzg = zzgexVar;
    }

    /* renamed from: G */
    public static /* synthetic */ void m9154G(xh3 xh3Var, int i) {
        xh3Var.zze = 1;
        xh3Var.zzb = 1 | xh3Var.zzb;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zzb", "zze", wh3.f31583a, "zzf", "zzg"});
            } else if (i2 == 3) {
                return new xh3();
            } else {
                if (i2 == 4) {
                    return new vh3(null);
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
