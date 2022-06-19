package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a93.class */
public final class a93 extends ie3<a93, z83> implements nf3 {
    private static final a93 zzg;
    private String zzb = "";
    private zzgex zze = zzgex.f34110d;
    private int zzf;

    static {
        a93 a93Var = new a93();
        zzg = a93Var;
        ie3.m14414z(a93.class, a93Var);
    }

    private a93() {
    }

    /* renamed from: E */
    public static z83 m16666E() {
        return zzg.m14418v();
    }

    /* renamed from: F */
    public static a93 m16665F() {
        return zzg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzg, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzb", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new a93();
            }
            if (i2 == 4) {
                return new z83(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final String m16668C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final zzgex m16667D() {
        return this.zze;
    }

    /* renamed from: J */
    public final int m16661J() {
        int i = this.zzf;
        int i2 = 4;
        if (i == 0) {
            i2 = 2;
        } else if (i == 1) {
            i2 = 3;
        } else if (i != 2) {
            i2 = i != 3 ? i != 4 ? 0 : 6 : 5;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
