package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r53.class */
public final class r53 extends ie3<r53, q53> implements nf3 {
    private static final r53 zze;
    private int zzb;

    static {
        r53 r53Var = new r53();
        zze = r53Var;
        ie3.m14414z(r53.class, r53Var);
    }

    private r53() {
    }

    /* renamed from: D */
    public static q53 m11691D() {
        return zze.m14418v();
    }

    /* renamed from: E */
    public static r53 m11690E() {
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zze, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzb"});
            }
            if (i2 == 3) {
                return new r53();
            }
            if (i2 == 4) {
                return new q53(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m11692C() {
        return this.zzb;
    }
}
