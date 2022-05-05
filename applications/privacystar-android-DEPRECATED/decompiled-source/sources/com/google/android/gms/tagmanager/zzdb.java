package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.util.LruCache;
@TargetApi(12)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzdb.class */
final class zzdb<K, V> implements zzp<K, V> {
    private LruCache<K, V> zzbcz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdb(int i, zzs<K, V> zzsVar) {
        this.zzbcz = new zzdc(this, 1048576, zzsVar);
    }

    @Override // com.google.android.gms.tagmanager.zzp
    public final V get(K k) {
        return this.zzbcz.get(k);
    }

    @Override // com.google.android.gms.tagmanager.zzp
    public final void zza(K k, V v) {
        this.zzbcz.put(k, v);
    }
}
