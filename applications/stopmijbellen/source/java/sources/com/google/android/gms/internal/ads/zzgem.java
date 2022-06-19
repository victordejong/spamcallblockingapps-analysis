package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgem.class */
public final class zzgem extends zzgkl<zzgem, zzgel> implements zzglw {
    private static final zzgem zzb;
    private int zze;
    private zzgeg zzf;
    private zzgjf zzg;
    private zzgjf zzh;

    static {
        zzgem zzgemVar = new zzgem();
        zzb = zzgemVar;
        zzgkl.zzaK(zzgem.class, zzgemVar);
    }

    private zzgem() {
        zzgjf zzgjfVar = zzgjf.zzb;
        this.zzg = zzgjfVar;
        this.zzh = zzgjfVar;
    }

    public static zzgel zzd() {
        return zzb.zzat();
    }

    public static zzgem zzf() {
        return zzb;
    }

    public static zzgem zzg(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgem) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzk(zzgem zzgemVar, zzgeg zzgegVar) {
        Objects.requireNonNull(zzgegVar);
        zzgemVar.zzf = zzgegVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzgem();
            }
            if (i2 == 4) {
                return new zzgel(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgeg zzc() {
        zzgeg zzgegVar = this.zzf;
        zzgeg zzgegVar2 = zzgegVar;
        if (zzgegVar == null) {
            zzgegVar2 = zzgeg.zze();
        }
        return zzgegVar2;
    }

    public final zzgjf zzh() {
        return this.zzg;
    }

    public final zzgjf zzi() {
        return this.zzh;
    }
}
