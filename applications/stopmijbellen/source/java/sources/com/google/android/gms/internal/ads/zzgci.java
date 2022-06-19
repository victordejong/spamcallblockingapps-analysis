package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgci.class */
public final class zzgci extends zzgkl<zzgci, zzgch> implements zzglw {
    private static final zzgci zzb;
    private int zze;
    private zzgco zzf;
    private zzgjf zzg = zzgjf.zzb;

    static {
        zzgci zzgciVar = new zzgci();
        zzb = zzgciVar;
        zzgkl.zzaK(zzgci.class, zzgciVar);
    }

    private zzgci() {
    }

    public static zzgch zzc() {
        return zzb.zzat();
    }

    public static zzgci zze() {
        return zzb;
    }

    public static zzgci zzf(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgci) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzj(zzgci zzgciVar, zzgco zzgcoVar) {
        Objects.requireNonNull(zzgcoVar);
        zzgciVar.zzf = zzgcoVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgci();
            }
            if (i2 == 4) {
                return new zzgch(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgco zzg() {
        zzgco zzgcoVar = this.zzf;
        zzgco zzgcoVar2 = zzgcoVar;
        if (zzgcoVar == null) {
            zzgcoVar2 = zzgco.zze();
        }
        return zzgcoVar2;
    }

    public final zzgjf zzh() {
        return this.zzg;
    }
}
