package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbt.class */
public final class zzgbt extends zzgkl<zzgbt, zzgbs> implements zzglw {
    private static final zzgbt zzb;
    private int zze;
    private zzgjf zzf = zzgjf.zzb;
    private zzgbz zzg;

    static {
        zzgbt zzgbtVar = new zzgbt();
        zzb = zzgbtVar;
        zzgkl.zzaK(zzgbt.class, zzgbtVar);
    }

    private zzgbt() {
    }

    public static zzgbs zzc() {
        return zzb.zzat();
    }

    public static zzgbt zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgbt) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzj(zzgbt zzgbtVar, zzgbz zzgbzVar) {
        Objects.requireNonNull(zzgbzVar);
        zzgbtVar.zzg = zzgbzVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgbt();
            }
            if (i2 == 4) {
                return new zzgbs(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgbz zzf() {
        zzgbz zzgbzVar = this.zzg;
        zzgbz zzgbzVar2 = zzgbzVar;
        if (zzgbzVar == null) {
            zzgbzVar2 = zzgbz.zze();
        }
        return zzgbzVar2;
    }

    public final zzgjf zzg() {
        return this.zzf;
    }
}
