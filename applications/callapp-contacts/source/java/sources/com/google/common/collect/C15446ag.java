package com.google.common.collect;

import com.google.common.base.C15386j;
import com.google.common.base.C15391m;
import com.google.common.base.Function;
import com.google.common.collect.C15484av;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.common.collect.ag */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag.class */
public final class C15446ag {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.ag$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$a.class */
    public enum EnumC15449a implements Function<Map.Entry<?, ?>, Object> {
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

    /* renamed from: com.google.common.collect.ag$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$b.class */
    static abstract class AbstractC15452b<K, V> extends C15484av.AbstractC15489a<Map.Entry<K, V>> {
        /* renamed from: a */
        abstract Map<K, V> mo8796a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo8796a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object m8844a = C15446ag.m8844a((Map<?, Object>) mo8796a(), key);
                if (!C15386j.m8951a(m8844a, entry.getValue())) {
                    return false;
                }
                return m8844a != null || mo8796a().containsKey(key);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo8796a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                return mo8796a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.C15484av.AbstractC15489a, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) C15391m.m8946a(collection));
            } catch (UnsupportedOperationException e) {
                return C15484av.m8822a((Set<?>) this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.C15484av.AbstractC15489a, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) C15391m.m8946a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet m8825a = C15484av.m8825a(collection.size());
                for (Object obj : collection) {
                    if (contains(obj)) {
                        m8825a.add(((Map.Entry) obj).getKey());
                    }
                }
                return mo8796a().keySet().retainAll(m8825a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo8796a().size();
        }
    }

    /* renamed from: com.google.common.collect.ag$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$c.class */
    public static class C15453c<K, V> extends C15484av.AbstractC15489a<K> {

        /* renamed from: d */
        final Map<K, V> f55720d;

        public C15453c(Map<K, V> map) {
            this.f55720d = (Map) C15391m.m8946a(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f55720d.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f55720d.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f55720d.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new AbstractC15492ax<Map.Entry<K, V>, K>(this.f55720d.entrySet().iterator()) { // from class: com.google.common.collect.ag.1
                @Override // com.google.common.collect.AbstractC15492ax
                /* renamed from: a */
                final /* synthetic */ Object mo8818a(Object obj) {
                    return ((Map.Entry) obj).getKey();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                this.f55720d.remove(obj);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f55720d.size();
        }
    }

    /* renamed from: com.google.common.collect.ag$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$d.class */
    static final class C15454d<K, V> extends AbstractCollection<V> {

        /* renamed from: a */
        final Map<K, V> f55721a;

        C15454d(Map<K, V> map) {
            this.f55721a = (Map) C15391m.m8946a(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f55721a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f55721a.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return this.f55721a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return C15446ag.m8845a(this.f55721a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException e) {
                for (Map.Entry<K, V> entry : this.f55721a.entrySet()) {
                    if (C15386j.m8951a(obj, entry.getValue())) {
                        this.f55721a.remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) C15391m.m8946a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSet = new HashSet();
                for (Map.Entry<K, V> entry : this.f55721a.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return this.f55721a.keySet().removeAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) C15391m.m8946a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSet = new HashSet();
                for (Map.Entry<K, V> entry : this.f55721a.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return this.f55721a.keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f55721a.size();
        }
    }

    /* renamed from: com.google.common.collect.ag$e */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ag$e.class */
    static abstract class AbstractC15455e<K, V> extends AbstractMap<K, V> {

        /* renamed from: a */
        private transient Set<Map.Entry<K, V>> f55722a;

        /* renamed from: b */
        private transient Set<K> f55723b;

        /* renamed from: c */
        private transient Collection<V> f55724c;

        /* renamed from: a */
        abstract Set<Map.Entry<K, V>> mo8798a();

        /* renamed from: e */
        Set<K> mo8789e() {
            return new C15453c(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f55722a;
            Set<Map.Entry<K, V>> set2 = set;
            if (set == null) {
                set2 = mo8798a();
                this.f55722a = set2;
            }
            return set2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.f55723b;
            Set<K> set2 = set;
            if (set == null) {
                set2 = mo8789e();
                this.f55723b = set2;
            }
            return set2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.f55724c;
            C15454d c15454d = collection;
            if (collection == null) {
                c15454d = new C15454d(this);
                this.f55724c = c15454d;
            }
            return c15454d;
        }
    }

    private C15446ag() {
    }

    /* renamed from: a */
    public static int m8847a(int i) {
        if (i < 3) {
            C15524i.m8781a(i, "expectedSize");
            return i + 1;
        } else if (i >= 1073741824) {
            return Integer.MAX_VALUE;
        } else {
            return (int) ((i / 0.75f) + 1.0f);
        }
    }

    /* renamed from: a */
    public static <V> V m8844a(Map<?, V> map, Object obj) {
        C15391m.m8946a(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static <K, V> Iterator<V> m8845a(Iterator<Map.Entry<K, V>> it2) {
        return new AbstractC15492ax<Map.Entry<K, V>, V>(it2) { // from class: com.google.common.collect.ag.2
            @Override // com.google.common.collect.AbstractC15492ax
            /* renamed from: a */
            final /* synthetic */ Object mo8818a(Object obj) {
                return ((Map.Entry) obj).getValue();
            }
        };
    }

    /* renamed from: a */
    public static <K, V> Map.Entry<K, V> m8846a(K k, V v) {
        return new C15548u(k, v);
    }

    /* renamed from: b */
    public static boolean m8843b(Map<?, ?> map, Object obj) {
        C15391m.m8946a(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }

    /* renamed from: c */
    public static <V> V m8842c(Map<?, V> map, Object obj) {
        C15391m.m8946a(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException e) {
            return null;
        }
    }
}
