package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/da3.class */
public final class da3 extends ie3<da3, ca3> implements nf3 {
    private static final da3 zzf;
    private String zzb = "";
    private d93 zze;

    static {
        da3 da3Var = new da3();
        zzf = da3Var;
        ie3.m14414z(da3.class, da3Var);
    }

    private da3() {
    }

    /* renamed from: F */
    public static da3 m15845F(zzgex zzgexVar, vd3 vd3Var) {
        return (da3) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: G */
    public static da3 m15844G() {
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new da3();
            }
            if (i2 == 4) {
                return new ca3(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final String m15848C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final boolean m15847D() {
        return this.zze != null;
    }

    /* renamed from: E */
    public final d93 m15846E() {
        d93 d93Var = this.zze;
        d93 d93Var2 = d93Var;
        if (d93Var == null) {
            d93Var2 = d93.m15857F();
        }
        return d93Var2;
    }
}
