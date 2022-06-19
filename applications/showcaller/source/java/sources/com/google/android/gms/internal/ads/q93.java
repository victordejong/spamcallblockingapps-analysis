package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q93.class */
public final class q93 extends ie3<q93, p93> implements nf3 {
    private static final q93 zzh;
    private String zzb = "";
    private int zze;
    private int zzf;
    private int zzg;

    static {
        q93 q93Var = new q93();
        zzh = q93Var;
        ie3.m14414z(q93.class, q93Var);
    }

    private q93() {
    }

    /* renamed from: C */
    public static p93 m12008C() {
        return zzh.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m12006E(q93 q93Var, String str) {
        str.getClass();
        q93Var.zzb = str;
    }

    /* renamed from: G */
    public static /* synthetic */ void m12004G(q93 q93Var, int i) {
        if (i != 1) {
            q93Var.zze = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new q93();
            }
            if (i2 == 4) {
                return new p93(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }
}
