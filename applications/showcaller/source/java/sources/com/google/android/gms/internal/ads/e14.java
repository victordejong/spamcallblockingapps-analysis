package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e14.class */
public final class e14 extends ie3<e14, d14> implements nf3 {
    private static final e14 zzf;
    private int zzb;
    private int zze = 2;

    static {
        e14 e14Var = new e14();
        zzf = e14Var;
        ie3.m14414z(e14.class, e14Var);
    }

    private e14() {
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "\u0001\u0001��\u0001\u001b\u001b\u0001������\u001bဌ��", new Object[]{"zzb", "zze", f14.f22707a});
            } else if (i2 == 3) {
                return new e14();
            } else {
                if (i2 == 4) {
                    return new d14(null);
                }
                if (i2 == 5) {
                    return zzf;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
