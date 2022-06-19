package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfof.class */
final class zzfof<K, V> extends cw2<K, V> implements Serializable {
    final K zza;
    final V zzb;

    public zzfof(K k, V v) {
        this.zza = k;
        this.zzb = v;
    }

    @Override // com.google.android.gms.internal.ads.cw2, java.util.Map.Entry
    public final K getKey() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.cw2, java.util.Map.Entry
    public final V getValue() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.cw2, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
