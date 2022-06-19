package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aa3.class */
public final class aa3 extends ie3<aa3, z93> implements nf3 {
    private static final aa3 zzf;
    private int zzb;
    private da3 zze;

    static {
        aa3 aa3Var = new aa3();
        zzf = aa3Var;
        ie3.m14414z(aa3.class, aa3Var);
    }

    private aa3() {
    }

    /* renamed from: E */
    public static aa3 m16657E(zzgex zzgexVar, vd3 vd3Var) {
        return (aa3) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static z93 m16656F() {
        return zzf.m14418v();
    }

    /* renamed from: I */
    public static /* synthetic */ void m16653I(aa3 aa3Var, da3 da3Var) {
        da3Var.getClass();
        aa3Var.zze = da3Var;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new aa3();
            }
            if (i2 == 4) {
                return new z93(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m16659C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final da3 m16658D() {
        da3 da3Var = this.zze;
        da3 da3Var2 = da3Var;
        if (da3Var == null) {
            da3Var2 = da3.m15844G();
        }
        return da3Var2;
    }
}
