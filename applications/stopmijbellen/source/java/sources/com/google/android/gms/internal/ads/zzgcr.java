package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgcr.class */
public final class zzgcr extends zzgkl<zzgcr, zzgcq> implements zzglw {
    private static final zzgcr zzb;
    private int zze;
    private zzgcx zzf;
    private zzgjf zzg = zzgjf.zzb;

    static {
        zzgcr zzgcrVar = new zzgcr();
        zzb = zzgcrVar;
        zzgkl.zzaK(zzgcr.class, zzgcrVar);
    }

    private zzgcr() {
    }

    public static zzgcq zzc() {
        return zzb.zzat();
    }

    public static zzgcr zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgcr) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzi(zzgcr zzgcrVar, zzgcx zzgcxVar) {
        Objects.requireNonNull(zzgcxVar);
        zzgcrVar.zzf = zzgcxVar;
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
                return new zzgcr();
            }
            if (i2 == 4) {
                return new zzgcq(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgcx zzf() {
        zzgcx zzgcxVar = this.zzf;
        zzgcx zzgcxVar2 = zzgcxVar;
        if (zzgcxVar == null) {
            zzgcxVar2 = zzgcx.zze();
        }
        return zzgcxVar2;
    }

    public final zzgjf zzg() {
        return this.zzg;
    }
}
