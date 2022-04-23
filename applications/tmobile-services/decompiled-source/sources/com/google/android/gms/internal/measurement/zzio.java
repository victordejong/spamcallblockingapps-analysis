package com.google.android.gms.internal.measurement;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzio.class */
final class zzio<K> implements Map.Entry<K, Object> {

    /* renamed from: f */
    private Map.Entry<K, zzim> f8536f;

    private zzio(Map.Entry<K, zzim> entry) {
        this.f8536f = entry;
    }

    /* renamed from: a */
    public final zzim m12376a() {
        return this.f8536f.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f8536f.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f8536f.getValue() == null) {
            return null;
        }
        zzim.m12377e();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzjh) {
            return this.f8536f.getValue().m12374a((zzjh) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
