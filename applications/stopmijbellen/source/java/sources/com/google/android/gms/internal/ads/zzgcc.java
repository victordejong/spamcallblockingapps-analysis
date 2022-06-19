package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgcc.class */
public final class zzgcc extends zzgkl<zzgcc, zzgcb> implements zzglw {
    private static final zzgcc zzb;
    private int zze;
    private zzgci zzf;
    private zzgew zzg;

    static {
        zzgcc zzgccVar = new zzgcc();
        zzb = zzgccVar;
        zzgkl.zzaK(zzgcc.class, zzgccVar);
    }

    private zzgcc() {
    }

    public static zzgcb zzc() {
        return zzb.zzat();
    }

    public static zzgcc zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgcc) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzi(zzgcc zzgccVar, zzgci zzgciVar) {
        Objects.requireNonNull(zzgciVar);
        zzgccVar.zzf = zzgciVar;
    }

    public static /* synthetic */ void zzj(zzgcc zzgccVar, zzgew zzgewVar) {
        Objects.requireNonNull(zzgewVar);
        zzgccVar.zzg = zzgewVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgcc();
            }
            if (i2 == 4) {
                return new zzgcb(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgci zzf() {
        zzgci zzgciVar = this.zzf;
        zzgci zzgciVar2 = zzgciVar;
        if (zzgciVar == null) {
            zzgciVar2 = zzgci.zze();
        }
        return zzgciVar2;
    }

    public final zzgew zzg() {
        zzgew zzgewVar = this.zzg;
        zzgew zzgewVar2 = zzgewVar;
        if (zzgewVar == null) {
            zzgewVar2 = zzgew.zze();
        }
        return zzgewVar2;
    }
}
