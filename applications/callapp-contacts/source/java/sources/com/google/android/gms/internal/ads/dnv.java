package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnv.class */
final class dnv<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    Map.Entry<K, dnt> f47296a;

    /* JADX INFO: Access modifiers changed from: private */
    public dnv(Map.Entry<K, dnt> entry) {
        this.f47296a = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f47296a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f47296a.getValue() == null) {
            return null;
        }
        return dnt.m16302a();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof dot) {
            dnt value = this.f47296a.getValue();
            dot dotVar = value.f47299b;
            value.f47298a = null;
            value.f47300c = null;
            value.f47299b = (dot) obj;
            return dotVar;
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
