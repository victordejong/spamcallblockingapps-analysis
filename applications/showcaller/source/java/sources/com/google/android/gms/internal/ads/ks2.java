package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ks2.class */
public final class ks2 extends ie3<ks2, js2> implements nf3 {
    private static final oe3<Integer, Object> zzf = new hs2();
    private static final ks2 zzj;
    private int zzb;
    private ne3 zze = ie3.m14428l();
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";

    static {
        ks2 ks2Var = new ks2();
        zzj = ks2Var;
        ie3.m14414z(ks2.class, ks2Var);
    }

    private ks2() {
    }

    /* renamed from: C */
    public static js2 m13815C() {
        return zzj.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m13813E(ks2 ks2Var, String str) {
        str.getClass();
        ks2Var.zzb |= 1;
        ks2Var.zzg = str;
    }

    /* renamed from: F */
    public static /* synthetic */ void m13812F(ks2 ks2Var, int i) {
        ne3 ne3Var = ks2Var.zze;
        if (!ne3Var.zza()) {
            ks2Var.zze = ie3.m14427m(ne3Var);
        }
        ks2Var.zze.mo12940d0(2);
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzj, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002ဈ��\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzb", "zze", is2.f24424a, "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new ks2();
            } else {
                if (i2 == 4) {
                    return new js2(null);
                }
                if (i2 == 5) {
                    return zzj;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
