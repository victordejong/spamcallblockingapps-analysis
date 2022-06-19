package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgej.class */
public final class zzgej extends zzgkl<zzgej, zzgei> implements zzglw {
    private static final zzgej zzb;
    private int zze;
    private zzgem zzf;
    private zzgjf zzg = zzgjf.zzb;

    static {
        zzgej zzgejVar = new zzgej();
        zzb = zzgejVar;
        zzgkl.zzaK(zzgej.class, zzgejVar);
    }

    private zzgej() {
    }

    public static zzgei zzc() {
        return zzb.zzat();
    }

    public static zzgej zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgej) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzi(zzgej zzgejVar, zzgem zzgemVar) {
        Objects.requireNonNull(zzgemVar);
        zzgejVar.zzf = zzgemVar;
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
                return new zzgej();
            }
            if (i2 == 4) {
                return new zzgei(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgem zzf() {
        zzgem zzgemVar = this.zzf;
        zzgem zzgemVar2 = zzgemVar;
        if (zzgemVar == null) {
            zzgemVar2 = zzgem.zzf();
        }
        return zzgemVar2;
    }

    public final zzgjf zzg() {
        return this.zzg;
    }
}
