package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgea.class */
public final class zzgea extends zzgkl<zzgea, zzgdz> implements zzglw {
    private static final zzgea zzb;
    private zzgfi zze;

    static {
        zzgea zzgeaVar = new zzgea();
        zzb = zzgeaVar;
        zzgkl.zzaK(zzgea.class, zzgeaVar);
    }

    private zzgea() {
    }

    public static zzgdz zza() {
        return zzb.zzat();
    }

    public static zzgea zzd() {
        return zzb;
    }

    public static /* synthetic */ void zzf(zzgea zzgeaVar, zzgfi zzgfiVar) {
        Objects.requireNonNull(zzgfiVar);
        zzgeaVar.zze = zzgfiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zze"});
            }
            if (i2 == 3) {
                return new zzgea();
            }
            if (i2 == 4) {
                return new zzgdz(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgfi zze() {
        zzgfi zzgfiVar = this.zze;
        zzgfi zzgfiVar2 = zzgfiVar;
        if (zzgfiVar == null) {
            zzgfiVar2 = zzgfi.zzd();
        }
        return zzgfiVar2;
    }
}
