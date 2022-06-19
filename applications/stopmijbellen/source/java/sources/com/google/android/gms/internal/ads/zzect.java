package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzect.class */
public final class zzect implements zzgpr<String> {
    public static zzect zza() {
        zzect zzectVar;
        zzectVar = zzecs.zza;
        return zzectVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        String valueOf = String.valueOf(zzbgo.zze().nextInt() & Api.BaseClientBuilder.API_PRIORITY_OTHER);
        zzgpz.zzb(valueOf);
        return valueOf;
    }
}
