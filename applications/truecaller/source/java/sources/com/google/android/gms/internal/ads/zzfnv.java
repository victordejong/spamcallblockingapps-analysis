package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnv.class */
public final class zzfnv extends zzfny {
    public zzfnv() {
        super(null);
    }

    public static final zzfny zzf(int i) {
        zzfny zzfnyVar;
        zzfny zzfnyVar2;
        zzfny zzfnyVar3;
        zzfny zzfnyVar4;
        if (i < 0) {
            zzfnyVar4 = zzfny.zzb;
            zzfnyVar = zzfnyVar4;
        } else if (i > 0) {
            zzfnyVar3 = zzfny.zzc;
            zzfnyVar = zzfnyVar3;
        } else {
            zzfnyVar2 = zzfny.zza;
            zzfnyVar = zzfnyVar2;
        }
        return zzfnyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfny
    public final <T> zzfny zza(T t, T t2, Comparator<T> comparator) {
        return zzf(comparator.compare(t, t2));
    }

    @Override // com.google.android.gms.internal.ads.zzfny
    public final zzfny zzb(int i, int i2) {
        return zzf(i < i2 ? -1 : i > i2 ? 1 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzfny
    public final zzfny zzc(boolean z, boolean z2) {
        return zzf(zzfqq.zza(false, false));
    }

    @Override // com.google.android.gms.internal.ads.zzfny
    public final zzfny zzd(boolean z, boolean z2) {
        return zzf(zzfqq.zza(z, z2));
    }

    @Override // com.google.android.gms.internal.ads.zzfny
    public final int zze() {
        return 0;
    }
}
