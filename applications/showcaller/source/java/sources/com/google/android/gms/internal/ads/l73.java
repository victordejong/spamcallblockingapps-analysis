package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l73.class */
public final class l73 extends ie3<l73, k73> implements nf3 {
    private static final l73 zzf;
    private int zzb;
    private zzgex zze = zzgex.f34110d;

    static {
        l73 l73Var = new l73();
        zzf = l73Var;
        ie3.m14414z(l73.class, l73Var);
    }

    private l73() {
    }

    /* renamed from: E */
    public static l73 m13669E(zzgex zzgexVar, vd3 vd3Var) {
        return (l73) ie3.m14421s(zzf, zzgexVar, vd3Var);
    }

    /* renamed from: F */
    public static k73 m13668F() {
        return zzf.m14418v();
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzf, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zzb", "zze"});
            }
            if (i2 == 3) {
                return new l73();
            }
            if (i2 == 4) {
                return new k73(null);
            }
            if (i2 == 5) {
                return zzf;
            }
            return null;
        }
        return (byte) 1;
    }

    /* renamed from: C */
    public final int m13671C() {
        return this.zzb;
    }

    /* renamed from: D */
    public final zzgex m13670D() {
        return this.zze;
    }
}
