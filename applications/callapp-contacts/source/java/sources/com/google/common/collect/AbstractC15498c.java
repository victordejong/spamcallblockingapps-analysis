package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.common.collect.c */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/c.class */
public abstract class AbstractC15498c<K, V> extends AbstractC15499d<K, V> implements AbstractC15407ac<K, V> {
    public AbstractC15498c(Map<K, Collection<V>> map) {
        super(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractC15499d, com.google.common.collect.AbstractC15456ah
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Collection mo8690a(Object obj) {
        return (List) super.mo8690a((AbstractC15498c<K, V>) obj);
    }

    @Override // com.google.common.collect.AbstractC15499d
    /* renamed from: a */
    final Collection<V> mo8810a(K k, Collection<V> collection) {
        return m8809a(k, (List) collection, null);
    }

    @Override // com.google.common.collect.AbstractC15499d
    /* renamed from: a */
    final <E> Collection<E> mo8808a(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    /* renamed from: a */
    public abstract List<V> mo8803c();

    @Override // com.google.common.collect.AbstractC15499d, com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: a */
    public final boolean mo8689a(K k, V v) {
        return super.mo8689a((AbstractC15498c<K, V>) k, (K) v);
    }

    @Override // com.google.common.collect.AbstractC15518f, com.google.common.collect.AbstractC15456ah
    /* renamed from: b */
    public final Map<K, Collection<V>> mo8688b() {
        return super.mo8688b();
    }

    @Override // com.google.common.collect.AbstractC15518f
    public boolean equals(Object obj) {
        return super.equals(obj);
    }
}
