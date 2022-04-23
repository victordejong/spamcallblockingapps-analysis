package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnv.class */
final class dnv<K> implements Map.Entry<K, Object> {

    /* renamed from: a  reason: collision with root package name */
    Map.Entry<K, dnt> f27010a;

    private dnv(Map.Entry<K, dnt> entry) {
        this.f27010a = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f27010a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f27010a.getValue() == null) {
            return null;
        }
        return dnt.a();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof dot) {
            dnt value = this.f27010a.getValue();
            dot dotVar = value.f27013b;
            value.f27012a = null;
            value.f27014c = null;
            value.f27013b = (dot) obj;
            return dotVar;
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
