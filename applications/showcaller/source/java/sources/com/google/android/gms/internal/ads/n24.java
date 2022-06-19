package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n24.class */
public final class n24 extends ie3<n24, m24> implements nf3 {
    private static final n24 zzi;
    private int zzb;
    private re3<zzgex> zze = ie3.m14425o();
    private zzgex zzf = zzgex.f34110d;
    private int zzg = 1;
    private int zzh = 1;

    static {
        n24 n24Var = new n24();
        zzi = n24Var;
        ie3.m14414z(n24.class, n24Var);
    }

    private n24() {
    }

    /* renamed from: C */
    public static m24 m13015C() {
        return zzi.m14418v();
    }

    /* renamed from: E */
    public static /* synthetic */ void m13013E(n24 n24Var, zzgex zzgexVar) {
        re3<zzgex> re3Var = n24Var.zze;
        if (!re3Var.zza()) {
            n24Var.zze = ie3.m14424p(re3Var);
        }
        n24Var.zze.add(zzgexVar);
    }

    /* renamed from: F */
    public static /* synthetic */ void m13012F(n24 n24Var, zzgex zzgexVar) {
        n24Var.zzb |= 1;
        n24Var.zzf = zzgexVar;
    }

    /* renamed from: G */
    public static /* synthetic */ void m13011G(n24 n24Var, int i) {
        n24Var.zzh = i - 1;
        n24Var.zzb |= 4;
    }

    @Override // com.google.android.gms.internal.ads.ie3
    /* renamed from: B */
    public final Object mo8268B(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return ie3.m14431A(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001c\u0002ည��\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zzb", "zze", "zzf", "zzg", h24.f23795a, "zzh", f24.f22713a});
            } else if (i2 == 3) {
                return new n24();
            } else {
                if (i2 == 4) {
                    return new m24(null);
                }
                if (i2 == 5) {
                    return zzi;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
