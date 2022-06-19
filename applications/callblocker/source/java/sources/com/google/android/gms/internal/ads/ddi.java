package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddi.class */
final class ddi<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    private Map.Entry<K, ddg> f14112a;

    /* JADX INFO: Access modifiers changed from: private */
    public ddi(Map.Entry<K, ddg> entry) {
        this.f14112a = entry;
    }

    /* renamed from: a */
    public final ddg m10035a() {
        return this.f14112a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f14112a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f14112a.getValue() == null ? null : ddg.m10037a();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof deg)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        return this.f14112a.getValue().m10034a((deg) obj);
    }
}
