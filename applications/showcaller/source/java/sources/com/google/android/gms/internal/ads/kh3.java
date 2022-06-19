package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kh3.class */
public final class kh3 extends ie3<kh3, jh3> implements nf3 {
    private static final kh3 zzf;
    private int zzb;
    private String zze = "";

    static {
        kh3 kh3Var = new kh3();
        zzf = kh3Var;
        ie3.m14414z(kh3.class, kh3Var);
    }

    private kh3() {
    }

    /* renamed from: C */
    public static jh3 m13910C() {
        return zzf.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m13908E(kh3 kh3Var, String str) {
        kh3Var.zzb |= 1;
        kh3Var.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new kh3();
            }
            if (i2 == 4) {
                return new jh3(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }
}
