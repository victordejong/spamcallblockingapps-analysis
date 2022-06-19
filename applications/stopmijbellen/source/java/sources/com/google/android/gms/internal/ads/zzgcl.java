package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgcl.class */
public final class zzgcl extends zzgkl<zzgcl, zzgck> implements zzglw {
    private static final zzgcl zzb;
    private zzgco zze;
    private int zzf;

    static {
        zzgcl zzgclVar = new zzgcl();
        zzb = zzgclVar;
        zzgkl.zzaK(zzgcl.class, zzgclVar);
    }

    private zzgcl() {
    }

    public static zzgck zzc() {
        return zzb.zzat();
    }

    public static zzgcl zze() {
        return zzb;
    }

    public static zzgcl zzf(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgcl) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzh(zzgcl zzgclVar, zzgco zzgcoVar) {
        Objects.requireNonNull(zzgcoVar);
        zzgclVar.zze = zzgcoVar;
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgcl();
            }
            if (i2 == 4) {
                return new zzgck(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgco zzg() {
        zzgco zzgcoVar = this.zze;
        zzgco zzgcoVar2 = zzgcoVar;
        if (zzgcoVar == null) {
            zzgcoVar2 = zzgco.zze();
        }
        return zzgcoVar2;
    }
}
