package com.google.android.gms.internal.icing;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcx.class */
final class zzcx<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzcv> zzjb;

    private zzcx(Map.Entry<K, zzcv> entry) {
        this.zzjb = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zzjb.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zzjb.getValue() == null) {
            return null;
        }
        return zzcv.zzbf();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzdr) {
            return this.zzjb.getValue().zzh((zzdr) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzcv zzbg() {
        return this.zzjb.getValue();
    }
}
