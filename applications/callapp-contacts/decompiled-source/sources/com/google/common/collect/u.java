package com.google.common.collect;

import java.io.Serializable;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/u.class */
final class u<K, V> extends e<K, V> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final K f32111a;

    /* renamed from: b  reason: collision with root package name */
    final V f32112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(K k, V v) {
        this.f32111a = k;
        this.f32112b = v;
    }

    @Override // com.google.common.collect.e, java.util.Map.Entry
    public final K getKey() {
        return this.f32111a;
    }

    @Override // com.google.common.collect.e, java.util.Map.Entry
    public final V getValue() {
        return this.f32112b;
    }

    @Override // com.google.common.collect.e, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
