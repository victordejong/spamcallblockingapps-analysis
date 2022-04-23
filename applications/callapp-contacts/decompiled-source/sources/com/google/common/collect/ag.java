package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.base.j;
import com.google.common.base.m;
import com.google.common.collect.av;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag.class */
public final class ag {

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$a.class */
    enum a implements Function<Map.Entry<?, ?>, Object> {
        KEY { // from class: com.google.common.collect.ag.a.1
            public final Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE { // from class: com.google.common.collect.ag.a.2
            public final Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$b.class */
    static abstract class b<K, V> extends av.a<Map.Entry<K, V>> {
        abstract Map<K, V> a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object a2 = ag.a((Map<?, Object>) a(), key);
            if (j.a(a2, entry.getValue())) {
                return a2 != null || a().containsKey(key);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                return a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.av.a, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) m.a(collection));
            } catch (UnsupportedOperationException e) {
                return av.a((Set<?>) this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.av.a, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) m.a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet a2 = av.a(collection.size());
                for (Object obj : collection) {
                    if (contains(obj)) {
                        a2.add(((Map.Entry) obj).getKey());
                    }
                }
                return a().keySet().retainAll(a2);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$c.class */
    public static class c<K, V> extends av.a<K> {

        /* renamed from: d  reason: collision with root package name */
        final Map<K, V> f31995d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Map<K, V> map) {
            this.f31995d = (Map) m.a(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f31995d.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f31995d.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f31995d.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new ax<Map.Entry<K, V>, K>(this.f31995d.entrySet().iterator()) { // from class: com.google.common.collect.ag.1
                @Override // com.google.common.collect.ax
                final /* synthetic */ Object a(Object obj) {
                    return ((Map.Entry) obj).getKey();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            this.f31995d.remove(obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f31995d.size();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$d.class */
    static final class d<K, V> extends AbstractCollection<V> {

        /* renamed from: a  reason: collision with root package name */
        final Map<K, V> f31996a;

        d(Map<K, V> map) {
            this.f31996a = (Map) m.a(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f31996a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f31996a.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return this.f31996a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return ag.a(this.f31996a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException e) {
                for (Map.Entry<K, V> entry : this.f31996a.entrySet()) {
                    if (j.a(obj, entry.getValue())) {
                        this.f31996a.remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) m.a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSet = new HashSet();
                for (Map.Entry<K, V> entry : this.f31996a.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return this.f31996a.keySet().removeAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) m.a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSet = new HashSet();
                for (Map.Entry<K, V> entry : this.f31996a.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return this.f31996a.keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f31996a.size();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$e.class */
    static abstract class e<K, V> extends AbstractMap<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private transient Set<Map.Entry<K, V>> f31997a;

        /* renamed from: b  reason: collision with root package name */
        private transient Set<K> f31998b;

        /* renamed from: c  reason: collision with root package name */
        private transient Collection<V> f31999c;

        abstract Set<Map.Entry<K, V>> a();

        Set<K> e() {
            return new c(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f31997a;
            Set<Map.Entry<K, V>> set2 = set;
            if (set == null) {
                set2 = a();
                this.f31997a = set2;
            }
            return set2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.f31998b;
            Set<K> set2 = set;
            if (set == null) {
                set2 = e();
                this.f31998b = set2;
            }
            return set2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.f31999c;
            Collection<V> collection2 = collection;
            if (collection == null) {
                collection2 = new d<>(this);
                this.f31999c = collection2;
            }
            return collection2;
        }
    }

    private ag() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
        if (i < 3) {
            i.a(i, "expectedSize");
            return i + 1;
        } else if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        } else {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V a(Map<?, V> map, Object obj) {
        m.a(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException e2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Iterator<V> a(Iterator<Map.Entry<K, V>> it2) {
        return new ax<Map.Entry<K, V>, V>(it2) { // from class: com.google.common.collect.ag.2
            @Override // com.google.common.collect.ax
            final /* synthetic */ Object a(Object obj) {
                return ((Map.Entry) obj).getValue();
            }
        };
    }

    public static <K, V> Map.Entry<K, V> a(K k, V v) {
        return new u(k, v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Map<?, ?> map, Object obj) {
        m.a(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V c(Map<?, V> map, Object obj) {
        m.a(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException e2) {
            return null;
        }
    }
}
