package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdah.class */
public final class zzdah implements zzeqb<Set<String>> {
    private final zzdab zzhaa;

    public zzdah(zzdab zzdabVar) {
        this.zzhaa = zzdabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzhaa.zzasv(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
