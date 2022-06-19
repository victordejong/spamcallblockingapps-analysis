package com.google.common.collect;

import com.google.common.collect.C15464aj;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.common.collect.f */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/f.class */
public abstract class AbstractC15518f<K, V> implements AbstractC15456ah<K, V> {

    /* renamed from: a */
    private transient Collection<Map.Entry<K, V>> f55810a;

    /* renamed from: b */
    private transient Set<K> f55811b;

    /* renamed from: c */
    private transient Collection<V> f55812c;

    /* renamed from: d */
    private transient Map<K, Collection<V>> f55813d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.f$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/f$a.class */
    public class C15519a extends C15464aj.AbstractC15466b<K, V> {
        public C15519a() {
            AbstractC15518f.this = r4;
        }

        @Override // com.google.common.collect.C15464aj.AbstractC15466b
        /* renamed from: a */
        final AbstractC15456ah<K, V> mo8782a() {
            return AbstractC15518f.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return AbstractC15518f.this.mo8673n();
        }
    }

    /* renamed from: com.google.common.collect.f$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/f$b.class */
    final class C15520b extends AbstractC15518f<K, V>.C15519a implements Set<Map.Entry<K, V>> {
        public C15520b(AbstractC15518f abstractC15518f) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return C15484av.m8823a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return C15484av.m8824a(this);
        }
    }

    /* renamed from: com.google.common.collect.f$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/f$c.class */
    final class C15521c extends AbstractCollection<V> {
        public C15521c() {
            AbstractC15518f.this = r4;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            AbstractC15518f.this.mo8680f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC15518f.this.mo8687b(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return AbstractC15518f.this.mo8676k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return AbstractC15518f.this.mo8681e();
        }
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: a */
    public boolean mo8689a(K k, V v) {
        return mo8690a(k).add(v);
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: b */
    public Map<K, Collection<V>> mo8688b() {
        Map<K, Collection<V>> map = this.f55813d;
        Map<K, Collection<V>> map2 = map;
        if (map == null) {
            map2 = mo8672o();
            this.f55813d = map2;
        }
        return map2;
    }

    /* renamed from: b */
    public boolean mo8687b(Object obj) {
        for (Collection<V> collection : mo8688b().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: b */
    public boolean mo8686b(Object obj, Object obj2) {
        Collection<V> collection = mo8688b().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: c */
    public boolean mo8684c(Object obj, Object obj2) {
        Collection<V> collection = mo8688b().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC15456ah)) {
            return false;
        }
        return mo8688b().equals(((AbstractC15456ah) obj).mo8688b());
    }

    /* renamed from: g */
    abstract Set<K> mo8679g();

    public int hashCode() {
        return mo8688b().hashCode();
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: i */
    public Collection<V> mo8678i() {
        Collection<V> collection = this.f55812c;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = mo8677j();
            this.f55812c = collection2;
        }
        return collection2;
    }

    /* renamed from: j */
    abstract Collection<V> mo8677j();

    /* renamed from: k */
    Iterator<V> mo8676k() {
        return C15446ag.m8845a(mo8675l().iterator());
    }

    @Override // com.google.common.collect.AbstractC15456ah
    /* renamed from: l */
    public Collection<Map.Entry<K, V>> mo8675l() {
        Collection<Map.Entry<K, V>> collection = this.f55810a;
        Collection<Map.Entry<K, V>> collection2 = collection;
        if (collection == null) {
            collection2 = mo8674m();
            this.f55810a = collection2;
        }
        return collection2;
    }

    /* renamed from: m */
    abstract Collection<Map.Entry<K, V>> mo8674m();

    /* renamed from: n */
    abstract Iterator<Map.Entry<K, V>> mo8673n();

    /* renamed from: o */
    abstract Map<K, Collection<V>> mo8672o();

    /* renamed from: q */
    public Set<K> mo8671q() {
        Set<K> set = this.f55811b;
        Set<K> set2 = set;
        if (set == null) {
            set2 = mo8679g();
            this.f55811b = set2;
        }
        return set2;
    }

    public String toString() {
        return mo8688b().toString();
    }
}
