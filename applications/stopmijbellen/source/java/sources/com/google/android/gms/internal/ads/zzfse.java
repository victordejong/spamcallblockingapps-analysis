package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfse.class */
final class zzfse extends zzfsh {
    public zzfse() {
        super(null);
    }

    public static final zzfsh zzf(int i) {
        zzfsh zzfshVar;
        zzfsh zzfshVar2;
        zzfsh zzfshVar3;
        zzfsh zzfshVar4;
        if (i < 0) {
            zzfshVar4 = zzfsh.zzb;
            zzfshVar = zzfshVar4;
        } else if (i > 0) {
            zzfshVar3 = zzfsh.zzc;
            zzfshVar = zzfshVar3;
        } else {
            zzfshVar2 = zzfsh.zza;
            zzfshVar = zzfshVar2;
        }
        return zzfshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final zzfsh zzb(int i, int i2) {
        return zzf(i < i2 ? -1 : i > i2 ? 1 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final <T> zzfsh zzc(T t, T t2, Comparator<T> comparator) {
        return zzf(comparator.compare(t, t2));
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final zzfsh zzd(boolean z, boolean z2) {
        return zzf(zzfuz.zza(z, z2));
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final zzfsh zze(boolean z, boolean z2) {
        return zzf(zzfuz.zza(false, false));
    }
}
