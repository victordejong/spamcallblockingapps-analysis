package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y14.class */
public final class y14 extends ie3<y14, x14> implements nf3 {
    private static final y14 zzl;
    private int zzb;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;

    static {
        y14 y14Var = new y14();
        zzl = y14Var;
        ie3.m14414z(y14.class, y14Var);
    }

    private y14() {
    }

    /* renamed from: C */
    public static x14 m8988C() {
        return zzl.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m8986E(y14 y14Var, long j) {
        y14Var.zzb |= 4;
        y14Var.zzg = j;
    }

    /* renamed from: F */
    public static /* synthetic */ void m8985F(y14 y14Var, long j) {
        y14Var.zzb |= 8;
        y14Var.zzh = j;
    }

    /* renamed from: G */
    public static /* synthetic */ void m8984G(y14 y14Var, long j) {
        y14Var.zzb |= 16;
        y14Var.zzi = j;
    }

    /* renamed from: H */
    public static /* synthetic */ void m8983H(y14 y14Var, long j) {
        y14Var.zzb |= 32;
        y14Var.zzj = j;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzl, "\u0001\u0007��\u0001\u0001\u0007\u0007������\u0001ဂ��\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006", new Object[]{"zzb", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            }
            if (i2 == 3) {
                return new y14();
            }
            if (i2 == 4) {
                return new x14(null);
            }
            if (i2 == 5) {
                return zzl;
            }
            return null;
        }
        return (byte) 1;
    }
}
