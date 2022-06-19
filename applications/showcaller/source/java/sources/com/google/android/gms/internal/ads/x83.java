package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x83.class */
public final class x83 extends ie3<x83, w83> implements nf3 {
    private static final x83 zzf;
    private int zzb;
    private int zze;

    static {
        x83 x83Var = new x83();
        zzf = x83Var;
        ie3.m14414z(x83.class, x83Var);
    }

    private x83() {
    }

    /* renamed from: D */
    public static w83 m9326D() {
        return zzf.m14418v();
    }

    /* renamed from: E */
    public static x83 m9325E() {
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new x83();
            }
            if (i2 == 4) {
                return new w83(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m9327C() {
        return this.zze;
    }

    /* renamed from: H */
    public final int m9322H() {
        int m12709b = o83.m12709b(this.zzb);
        int i = m12709b;
        if (m12709b == 0) {
            i = 1;
        }
        return i;
    }
}
