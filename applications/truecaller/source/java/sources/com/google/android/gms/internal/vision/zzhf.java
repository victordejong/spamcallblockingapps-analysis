package com.google.android.gms.internal.vision;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzhf.class */
public final class zzhf<K> implements Map.Entry<K, Object> {
    private Map.Entry<K, zzhd> zzxw;

    /* JADX INFO: Access modifiers changed from: private */
    public zzhf(Map.Entry<K, zzhd> entry) {
        this.zzxw = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zzxw.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zzxw.getValue() == null) {
            return null;
        }
        return zzhd.zzgu();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzic) {
            return this.zzxw.getValue().zzi((zzic) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzhd zzgw() {
        return this.zzxw.getValue();
    }
}
