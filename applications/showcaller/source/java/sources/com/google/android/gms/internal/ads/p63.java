package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p63.class */
public final class p63 extends ie3<p63, o63> implements nf3 {
    private static final p63 zze;
    private int zzb;

    static {
        p63 p63Var = new p63();
        zze = p63Var;
        ie3.m14414z(p63.class, p63Var);
    }

    private p63() {
    }

    /* renamed from: D */
    public static o63 m12376D() {
        return zze.m14418v();
    }

    /* renamed from: E */
    public static p63 m12375E() {
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
                return new p63();
            }
            if (i2 == 4) {
                return new o63(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m12377C() {
        return this.zzb;
    }
}
