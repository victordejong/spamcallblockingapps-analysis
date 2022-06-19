package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k83.class */
public final class k83 extends ie3<k83, j83> implements nf3 {
    private static final k83 zzg;
    private int zzb;
    private int zze;
    private zzgex zzf = zzgex.f34110d;

    static {
        k83 k83Var = new k83();
        zzg = k83Var;
        ie3.m14414z(k83.class, k83Var);
    }

    private k83() {
    }

    /* renamed from: D */
    public static j83 m13962D() {
        return zzg.m14418v();
    }

    /* renamed from: E */
    public static k83 m13961E() {
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new k83();
            }
            if (i2 == 4) {
                return new j83(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final zzgex m13963C() {
        return this.zzf;
    }

    /* renamed from: H */
    public final int m13958H() {
        int i = this.zzb;
        int i2 = 5;
        if (i == 0) {
            i2 = 2;
        } else if (i == 2) {
            i2 = 4;
        } else if (i != 3) {
            i2 = i != 4 ? i != 5 ? 0 : 7 : 6;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    /* renamed from: I */
    public final int m13957I() {
        int m12709b = o83.m12709b(this.zze);
        int i = m12709b;
        if (m12709b == 0) {
            i = 1;
        }
        return i;
    }
}
