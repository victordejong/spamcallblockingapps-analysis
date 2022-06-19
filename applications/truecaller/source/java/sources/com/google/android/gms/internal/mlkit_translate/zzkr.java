package com.google.android.gms.internal.mlkit_translate;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkr.class */
public final class zzkr<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzkp> zza;

    /* JADX INFO: Access modifiers changed from: private */
    public zzkr(Map.Entry<K, zzkp> entry) {
        this.zza = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zza.getValue() == null) {
            return null;
        }
        return zzkp.zza();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzlk) {
            return this.zza.getValue().zza((zzlk) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzkp zza() {
        return this.zza.getValue();
    }
}
