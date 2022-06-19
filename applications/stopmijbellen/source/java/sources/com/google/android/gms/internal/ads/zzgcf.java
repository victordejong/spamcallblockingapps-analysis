package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgcf.class */
public final class zzgcf extends zzgkl<zzgcf, zzgce> implements zzglw {
    private static final zzgcf zzb;
    private zzgcl zze;
    private zzgez zzf;

    static {
        zzgcf zzgcfVar = new zzgcf();
        zzb = zzgcfVar;
        zzgkl.zzaK(zzgcf.class, zzgcfVar);
    }

    private zzgcf() {
    }

    public static zzgce zza() {
        return zzb.zzat();
    }

    public static zzgcf zzd(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgcf) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzg(zzgcf zzgcfVar, zzgcl zzgclVar) {
        Objects.requireNonNull(zzgclVar);
        zzgcfVar.zze = zzgclVar;
    }

    public static /* synthetic */ void zzh(zzgcf zzgcfVar, zzgez zzgezVar) {
        Objects.requireNonNull(zzgezVar);
        zzgcfVar.zzf = zzgezVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgcf();
            }
            if (i2 == 4) {
                return new zzgce(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgcl zze() {
        zzgcl zzgclVar = this.zze;
        zzgcl zzgclVar2 = zzgclVar;
        if (zzgclVar == null) {
            zzgclVar2 = zzgcl.zze();
        }
        return zzgclVar2;
    }

    public final zzgez zzf() {
        zzgez zzgezVar = this.zzf;
        zzgez zzgezVar2 = zzgezVar;
        if (zzgezVar == null) {
            zzgezVar2 = zzgez.zze();
        }
        return zzgezVar2;
    }
}
