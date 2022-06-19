package com.google.common.collect;

import java.io.Serializable;
/* renamed from: com.google.common.collect.u */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/u.class */
final class C15548u<K, V> extends AbstractC15517e<K, V> implements Serializable {

    /* renamed from: a */
    final K f55851a;

    /* renamed from: b */
    final V f55852b;

    public C15548u(K k, V v) {
        this.f55851a = k;
        this.f55852b = v;
    }

    @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
    public final K getKey() {
        return this.f55851a;
    }

    @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
    public final V getValue() {
        return this.f55852b;
    }

    @Override // com.google.common.collect.AbstractC15517e, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
