package com.google.android.gms.internal.firebase_remote_config;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzht.class */
final class zzht<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzhr> zzus;

    /* JADX INFO: Access modifiers changed from: private */
    public zzht(Map.Entry<K, zzhr> entry) {
        this.zzus = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zzus.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zzus.getValue() == null) {
            return null;
        }
        return zzhr.zzhn();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zziq) {
            return this.zzus.getValue().zzi((zziq) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzhr zzhp() {
        return this.zzus.getValue();
    }
}
