package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgeg.class */
public final class zzgeg extends zzgkl<zzgeg, zzgef> implements zzglw {
    private static final zzgeg zzb;
    private zzgep zze;
    private zzgea zzf;
    private int zzg;

    static {
        zzgeg zzgegVar = new zzgeg();
        zzb = zzgegVar;
        zzgkl.zzaK(zzgeg.class, zzgegVar);
    }

    private zzgeg() {
    }

    public static zzgef zzc() {
        return zzb.zzat();
    }

    public static zzgeg zze() {
        return zzb;
    }

    public static /* synthetic */ void zzg(zzgeg zzgegVar, zzgep zzgepVar) {
        Objects.requireNonNull(zzgepVar);
        zzgegVar.zze = zzgepVar;
    }

    public static /* synthetic */ void zzh(zzgeg zzgegVar, zzgea zzgeaVar) {
        Objects.requireNonNull(zzgeaVar);
        zzgegVar.zzf = zzgeaVar;
    }

    public final zzgea zza() {
        zzgea zzgeaVar = this.zzf;
        zzgea zzgeaVar2 = zzgeaVar;
        if (zzgeaVar == null) {
            zzgeaVar2 = zzgea.zzd();
        }
        return zzgeaVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgeg();
            }
            if (i2 == 4) {
                return new zzgef(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgep zzf() {
        zzgep zzgepVar = this.zze;
        zzgep zzgepVar2 = zzgepVar;
        if (zzgepVar == null) {
            zzgepVar2 = zzgep.zzd();
        }
        return zzgepVar2;
    }

    public final int zzi() {
        int i = this.zzg;
        int i2 = 3;
        if (i == 0) {
            i2 = 2;
        } else if (i != 1) {
            i2 = i != 2 ? i != 3 ? 0 : 5 : 4;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
