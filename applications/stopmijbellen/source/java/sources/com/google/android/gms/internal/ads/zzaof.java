package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaof.class */
public final class zzaof extends zzgkl<zzaof, zzaoe> implements zzglw {
    private static final zzaof zzb;
    private int zze;
    private zzaoi zzf;
    private zzgjf zzg;
    private zzgjf zzh;

    static {
        zzaof zzaofVar = new zzaof();
        zzb = zzaofVar;
        zzgkl.zzaK(zzaof.class, zzaofVar);
    }

    private zzaof() {
        zzgjf zzgjfVar = zzgjf.zzb;
        this.zzg = zzgjfVar;
        this.zzh = zzgjfVar;
    }

    public static zzaof zzc(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzaof) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzaof();
            }
            if (i2 == 4) {
                return new zzaoe(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzaoi zzd() {
        zzaoi zzaoiVar = this.zzf;
        zzaoi zzaoiVar2 = zzaoiVar;
        if (zzaoiVar == null) {
            zzaoiVar2 = zzaoi.zzg();
        }
        return zzaoiVar2;
    }

    public final zzgjf zze() {
        return this.zzh;
    }

    public final zzgjf zzf() {
        return this.zzg;
    }
}
