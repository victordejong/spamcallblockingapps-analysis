package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfso.class */
final class zzfso<K, V> extends zzfrn<K, V> implements Serializable {
    public final K zza;
    public final V zzb;

    public zzfso(K k, V v) {
        this.zza = k;
        this.zzb = v;
    }

    @Override // com.google.android.gms.internal.ads.zzfrn, java.util.Map.Entry
    public final K getKey() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfrn, java.util.Map.Entry
    public final V getValue() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfrn, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
