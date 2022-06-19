package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgfi.class */
public final class zzgfi extends zzgkl<zzgfi, zzgfh> implements zzglw {
    private static final zzgfi zzb;
    private String zze = "";
    private zzgjf zzf = zzgjf.zzb;
    private int zzg;

    static {
        zzgfi zzgfiVar = new zzgfi();
        zzb = zzgfiVar;
        zzgkl.zzaK(zzgfi.class, zzgfiVar);
    }

    private zzgfi() {
    }

    public static zzgfh zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ zzgfi zzc() {
        return zzb;
    }

    public static zzgfi zzd() {
        return zzb;
    }

    public static /* synthetic */ void zzg(zzgfi zzgfiVar, String str) {
        Objects.requireNonNull(str);
        zzgfiVar.zze = str;
    }

    public static /* synthetic */ void zzh(zzgfi zzgfiVar, zzgjf zzgjfVar) {
        zzgfiVar.zzf = zzgjfVar;
    }

    public static /* synthetic */ void zzj(zzgfi zzgfiVar, int i) {
        zzgfiVar.zzg = zzggj.zza(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgfi();
            }
            if (i2 == 4) {
                return new zzgfh(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgjf zze() {
        return this.zzf;
    }

    public final String zzf() {
        return this.zze;
    }

    public final int zzi() {
        int zzb2 = zzggj.zzb(this.zzg);
        int i = zzb2;
        if (zzb2 == 0) {
            i = 1;
        }
        return i;
    }
}
