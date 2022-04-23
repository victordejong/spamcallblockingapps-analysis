package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.util.Collection;
import java.util.Map;
import p131c.p161d.p266c.p269c.AbstractC4999k;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableBiMap.class */
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements AbstractC4999k<K, V> {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableBiMap$SerializedForm.class */
    public static class SerializedForm extends ImmutableMap.SerializedForm {
        public static final long serialVersionUID = 0;

        public SerializedForm(ImmutableBiMap<?, ?> immutableBiMap) {
            super(immutableBiMap);
        }

        @Override // com.google.common.collect.ImmutableMap.SerializedForm
        public Object readResolve() {
            return createMap(new C7463a());
        }
    }

    /* renamed from: com.google.common.collect.ImmutableBiMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableBiMap$a.class */
    public static final class C7463a<K, V> extends ImmutableMap.C7476b<K, V> {
        public C7463a() {
        }

        public C7463a(int i) {
            super(i);
        }

        @Override // com.google.common.collect.ImmutableMap.C7476b
        /* renamed from: a */
        public C7463a<K, V> mo8320a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.mo8320a((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.C7476b
        /* renamed from: a */
        public C7463a<K, V> mo8319a(K k, V v) {
            super.mo8319a((C7463a<K, V>) k, (K) v);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.C7476b
        /* renamed from: a */
        public C7463a<K, V> mo8318a(Map.Entry<? extends K, ? extends V> entry) {
            super.mo8318a((Map.Entry) entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.C7476b
        /* renamed from: a */
        public C7463a<K, V> mo8317a(Map<? extends K, ? extends V> map) {
            super.mo8317a((Map) map);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.C7476b
        /* renamed from: a */
        public ImmutableBiMap<K, V> mo8322a() {
            if (this.f30537c == 0) {
                return ImmutableBiMap.m8413of();
            }
            m8373b();
            this.f30538d = true;
            return new RegularImmutableBiMap(this.f30536b, this.f30537c);
        }
    }

    public static <K, V> C7463a<K, V> builder() {
        return new C7463a<>();
    }

    public static <K, V> C7463a<K, V> builderWithExpectedSize(int i) {
        C5006n.m24663a(i, "expectedSize");
        return new C7463a<>(i);
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        C7463a aVar = new C7463a(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        aVar.mo8320a((Iterable) iterable);
        return aVar.mo8322a();
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (map instanceof ImmutableBiMap) {
            ImmutableBiMap<K, V> immutableBiMap = (ImmutableBiMap) map;
            if (!immutableBiMap.isPartialView()) {
                return immutableBiMap;
            }
        }
        return copyOf((Iterable) map.entrySet());
    }

    /* renamed from: of */
    public static <K, V> ImmutableBiMap<K, V> m8413of() {
        return RegularImmutableBiMap.EMPTY;
    }

    /* renamed from: of */
    public static <K, V> ImmutableBiMap<K, V> m8412of(K k, V v) {
        C5006n.m24661a(k, v);
        return new RegularImmutableBiMap(new Object[]{k, v}, 1);
    }

    /* renamed from: of */
    public static <K, V> ImmutableBiMap<K, V> m8411of(K k, V v, K k2, V v2) {
        C5006n.m24661a(k, v);
        C5006n.m24661a(k2, v2);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2}, 2);
    }

    /* renamed from: of */
    public static <K, V> ImmutableBiMap<K, V> m8410of(K k, V v, K k2, V v2, K k3, V v3) {
        C5006n.m24661a(k, v);
        C5006n.m24661a(k2, v2);
        C5006n.m24661a(k3, v3);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3}, 3);
    }

    /* renamed from: of */
    public static <K, V> ImmutableBiMap<K, V> m8409of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        C5006n.m24661a(k, v);
        C5006n.m24661a(k2, v2);
        C5006n.m24661a(k3, v3);
        C5006n.m24661a(k4, v4);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4}, 4);
    }

    /* renamed from: of */
    public static <K, V> ImmutableBiMap<K, V> m8408of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        C5006n.m24661a(k, v);
        C5006n.m24661a(k2, v2);
        C5006n.m24661a(k3, v3);
        C5006n.m24661a(k4, v4);
        C5006n.m24661a(k5, v5);
        return new RegularImmutableBiMap(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5}, 5);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet<V> createValues() {
        throw new AssertionError("should never be called");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4999k
    @Deprecated
    public V forcePut(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4999k
    public abstract ImmutableBiMap<V, K> inverse();

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, p131c.p161d.p266c.p269c.AbstractC4999k
    public ImmutableSet<V> values() {
        return inverse().keySet();
    }

    @Override // com.google.common.collect.ImmutableMap
    public Object writeReplace() {
        return new SerializedForm(this);
    }
}
