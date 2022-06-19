package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j24.class */
public final class j24 extends ie3<j24, i24> implements nf3 {
    private static final j24 zzh;
    private int zzb;
    private long zze;
    private String zzf = "";
    private zzgex zzg = zzgex.f34110d;

    static {
        j24 j24Var = new j24();
        zzh = j24Var;
        ie3.m14414z(j24.class, j24Var);
    }

    private j24() {
    }

    /* renamed from: E */
    public static j24 m14176E() {
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzh, "\u0001\u0003��\u0001\u0001\u0004\u0003������\u0001ဂ��\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzb", "zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new j24();
            }
            if (i2 == 4) {
                return new i24(null);
            }
            if (i2 == 5) {
                return zzh;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final boolean m14178C() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: D */
    public final long m14177D() {
        return this.zze;
    }
}
