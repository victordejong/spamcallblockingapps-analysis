package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l93.class */
public final class l93 extends ie3<l93, k93> implements nf3 {
    private static final l93 zzh;
    private a93 zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        l93 l93Var = new l93();
        zzh = l93Var;
        ie3.m14414z(l93.class, l93Var);
    }

    private l93() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new l93();
            }
            if (i2 == 4) {
                return new k93(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final boolean m13664C() {
        return this.zzb != null;
    }

    /* renamed from: D */
    public final a93 m13663D() {
        a93 a93Var = this.zzb;
        a93 a93Var2 = a93Var;
        if (a93Var == null) {
            a93Var2 = a93.m16665F();
        }
        return a93Var2;
    }

    /* renamed from: E */
    public final int m13662E() {
        return this.zzf;
    }

    /* renamed from: G */
    public final int m13660G() {
        int i = this.zze;
        int i2 = 3;
        if (i == 0) {
            i2 = 2;
        } else if (i != 1) {
            i2 = i != 2 ? i != 3 ? 0 : 5 : 4;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    /* renamed from: H */
    public final int m13659H() {
        int m15288b = fa3.m15288b(this.zzg);
        int i = m15288b;
        if (m15288b == 0) {
            i = 1;
        }
        return i;
    }
}
