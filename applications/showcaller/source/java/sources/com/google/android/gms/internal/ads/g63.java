package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g63.class */
public final class g63 extends ie3<g63, f63> implements nf3 {
    private static final g63 zze;
    private int zzb;

    static {
        g63 g63Var = new g63();
        zze = g63Var;
        ie3.m14414z(g63.class, g63Var);
    }

    private g63() {
    }

    /* renamed from: D */
    public static f63 m14978D() {
        return zze.m14418v();
    }

    /* renamed from: E */
    public static g63 m14977E() {
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
                return new g63();
            }
            if (i2 == 4) {
                return new f63(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m14979C() {
        return this.zzb;
    }
}
