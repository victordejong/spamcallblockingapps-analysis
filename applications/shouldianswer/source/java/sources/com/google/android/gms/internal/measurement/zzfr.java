package com.google.android.gms.internal.measurement;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfr.class */
final class zzfr<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzfp> zza;

    /* JADX INFO: Access modifiers changed from: private */
    public zzfr(Map.Entry<K, zzfp> entry) {
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
        return zzfp.zza();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzgo) {
            return this.zza.getValue().zza((zzgo) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzfp zza() {
        return this.zza.getValue();
    }
}
