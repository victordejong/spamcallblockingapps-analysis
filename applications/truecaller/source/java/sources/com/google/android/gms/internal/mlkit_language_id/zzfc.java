package com.google.android.gms.internal.mlkit_language_id;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzfc.class */
public final class zzfc<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzfa> zza;

    /* JADX INFO: Access modifiers changed from: private */
    public zzfc(Map.Entry<K, zzfa> entry) {
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
        return zzfa.zza();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzfz) {
            return this.zza.getValue().zza((zzfz) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzfa zza() {
        return this.zza.getValue();
    }
}
