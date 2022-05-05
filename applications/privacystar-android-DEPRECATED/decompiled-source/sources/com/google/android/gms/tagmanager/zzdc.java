package com.google.android.gms.tagmanager;

import android.util.LruCache;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzdc.class */
public final class zzdc extends LruCache<K, V> {
    private final /* synthetic */ zzs zzbda;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdc(zzdb zzdbVar, int i, zzs zzsVar) {
        super(i);
        this.zzbda = zzsVar;
    }

    @Override // android.util.LruCache
    protected final int sizeOf(K k, V v) {
        return this.zzbda.sizeOf(k, v);
    }
}
