package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzglg.class */
public final class zzglg<K, V> extends zzgkv<K, V, zzgln<V>> {
    public /* synthetic */ zzglg(int i, zzglf zzglfVar) {
        super(1);
    }

    public final zzglg<K, V> zzb(K k, zzgln<V> zzglnVar) {
        super.zza("Network", zzglnVar);
        return this;
    }

    public final zzglh<K, V> zzc() {
        return new zzglh<>(this.zza, null);
    }
}
