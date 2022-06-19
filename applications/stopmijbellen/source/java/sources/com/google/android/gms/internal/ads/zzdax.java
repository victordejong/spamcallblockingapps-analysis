package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdax.class */
public final class zzdax<AdT> implements zzday<AdT> {
    private final Map<String, zzeht<AdT>> zza;

    public zzdax(Map<String, zzeht<AdT>> map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    public final zzeht<AdT> zza(int i, String str) {
        return this.zza.get(str);
    }
}
