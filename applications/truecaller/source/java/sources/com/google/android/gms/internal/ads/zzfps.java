package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfps.class */
public final class zzfps<K, V> extends zzfmm<K, V> {
    public final transient zzfmj<? extends List<V>> zza;

    public zzfps(Map<K, Collection<V>> map, zzfmj<? extends List<V>> zzfmjVar) {
        super(map);
        this.zza = zzfmjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmm, com.google.android.gms.internal.ads.zzfnd
    public final /* bridge */ /* synthetic */ Collection zzc() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzfnd, com.google.android.gms.internal.ads.zzfng
    public final Set<K> zzk() {
        return zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzfnd, com.google.android.gms.internal.ads.zzfng
    public final Map<K, Collection<V>> zzp() {
        return zzq();
    }
}
