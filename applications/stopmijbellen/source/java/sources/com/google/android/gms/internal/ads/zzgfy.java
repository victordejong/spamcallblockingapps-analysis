package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgfy.class */
public final class zzgfy extends zzgkl<zzgfy, zzgfx> implements zzglw {
    private static final zzgfy zzb;
    private int zze;
    private zzggb zzf;

    static {
        zzgfy zzgfyVar = new zzgfy();
        zzb = zzgfyVar;
        zzgkl.zzaK(zzgfy.class, zzgfyVar);
    }

    private zzgfy() {
    }

    public static zzgfx zzc() {
        return zzb.zzat();
    }

    public static zzgfy zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgfy) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzh(zzgfy zzgfyVar, zzggb zzggbVar) {
        Objects.requireNonNull(zzggbVar);
        zzgfyVar.zzf = zzggbVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgfy();
            }
            if (i2 == 4) {
                return new zzgfx(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzggb zzf() {
        zzggb zzggbVar = this.zzf;
        zzggb zzggbVar2 = zzggbVar;
        if (zzggbVar == null) {
            zzggbVar2 = zzggb.zzc();
        }
        return zzggbVar2;
    }
}
