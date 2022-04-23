package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/c.class */
public abstract class c<K, V> extends d<K, V> implements ac<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    public c(Map<K, Collection<V>> map) {
        super(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d, com.google.common.collect.ah
    public final /* bridge */ /* synthetic */ Collection a(Object obj) {
        return (List) super.a((c<K, V>) obj);
    }

    @Override // com.google.common.collect.d
    final Collection<V> a(K k, Collection<V> collection) {
        return a(k, (List) collection, null);
    }

    @Override // com.google.common.collect.d
    final <E> Collection<E> a(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract List<V> c();

    @Override // com.google.common.collect.d, com.google.common.collect.f, com.google.common.collect.ah
    public final boolean a(K k, V v) {
        return super.a((c<K, V>) k, (K) v);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.ah
    public final Map<K, Collection<V>> b() {
        return super.b();
    }

    @Override // com.google.common.collect.f
    public boolean equals(Object obj) {
        return super.equals(obj);
    }
}
