package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4961b0;
import p131c.p161d.p266c.p269c.AbstractC4999k;
import p131c.p161d.p266c.p269c.AbstractC5030v;
import p131c.p161d.p266c.p269c.AbstractC5032w;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractBiMap.class */
public abstract class AbstractBiMap<K, V> extends AbstractC5030v<K, V> implements AbstractC4999k<K, V>, Serializable {
    public static final long serialVersionUID = 0;
    public transient Map<K, V> delegate;
    public transient Set<Map.Entry<K, V>> entrySet;
    public transient AbstractBiMap<V, K> inverse;
    public transient Set<K> keySet;
    public transient Set<V> valueSet;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractBiMap$Inverse.class */
    public static class Inverse<K, V> extends AbstractBiMap<K, V> {
        public static final long serialVersionUID = 0;

        public Inverse(Map<K, V> map, AbstractBiMap<V, K> abstractBiMap) {
            super(map, abstractBiMap, null);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            setInverse((AbstractBiMap) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(inverse());
        }

        @Override // com.google.common.collect.AbstractBiMap
        public K checkKey(K k) {
            return this.inverse.checkValue(k);
        }

        @Override // com.google.common.collect.AbstractBiMap
        public V checkValue(V v) {
            return this.inverse.checkKey(v);
        }

        @Override // com.google.common.collect.AbstractBiMap, p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
        public /* bridge */ /* synthetic */ Object delegate() {
            return AbstractBiMap.super.delegate();
        }

        public Object readResolve() {
            return inverse().inverse();
        }

        @Override // com.google.common.collect.AbstractBiMap, p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return AbstractBiMap.super.values();
        }
    }

    /* renamed from: com.google.common.collect.AbstractBiMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractBiMap$a.class */
    public class C7393a implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public Map.Entry<K, V> f30408a;

        /* renamed from: b */
        public final /* synthetic */ Iterator f30409b;

        public C7393a(Iterator it) {
            this.f30409b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30409b.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            Map.Entry<K, V> entry = (Map.Entry) this.f30409b.next();
            this.f30408a = entry;
            return new C7394b(entry);
        }

        @Override // java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30408a != null);
            V value = this.f30408a.getValue();
            this.f30409b.remove();
            AbstractBiMap.this.removeFromInverseMap(value);
            this.f30408a = null;
        }
    }

    /* renamed from: com.google.common.collect.AbstractBiMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractBiMap$b.class */
    public class C7394b extends AbstractC5032w<K, V> {

        /* renamed from: a */
        public final Map.Entry<K, V> f30411a;

        public C7394b(Map.Entry<K, V> entry) {
            this.f30411a = entry;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5032w, p131c.p161d.p266c.p269c.AbstractC5040z
        public Map.Entry<K, V> delegate() {
            return this.f30411a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5032w, java.util.Map.Entry
        public V setValue(V v) {
            AbstractBiMap.this.checkValue(v);
            C4933n.m24775b(AbstractBiMap.this.entrySet().contains(this), "entry no longer in map");
            if (C4928k.m24808a(v, getValue())) {
                return v;
            }
            C4933n.m24782a(!AbstractBiMap.this.containsValue(v), "value already present: %s", v);
            V value = this.f30411a.setValue(v);
            C4933n.m24775b(C4928k.m24808a(v, AbstractBiMap.this.get(getKey())), "entry no longer in map");
            AbstractBiMap.this.updateInverseMap(getKey(), true, value, v);
            return value;
        }
    }

    /* renamed from: com.google.common.collect.AbstractBiMap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractBiMap$c.class */
    public class C7395c extends AbstractC4961b0<Map.Entry<K, V>> {

        /* renamed from: a */
        public final Set<Map.Entry<K, V>> f30413a;

        public C7395c() {
            this.f30413a = AbstractBiMap.this.delegate.entrySet();
        }

        public /* synthetic */ C7395c(AbstractBiMap abstractBiMap, C7393a aVar) {
            this();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public void clear() {
            AbstractBiMap.this.clear();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean contains(Object obj) {
            return Maps.m8146a((Collection) delegate(), obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Set<Map.Entry<K, V>> delegate() {
            return this.f30413a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Iterator<Map.Entry<K, V>> iterator() {
            return AbstractBiMap.this.entrySetIterator();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean remove(Object obj) {
            if (!this.f30413a.contains(obj)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            AbstractBiMap.this.inverse.delegate.remove(entry.getValue());
            this.f30413a.remove(entry);
            return true;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.AbstractBiMap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractBiMap$d.class */
    public class C7396d extends AbstractC4961b0<K> {
        public C7396d() {
        }

        public /* synthetic */ C7396d(AbstractBiMap abstractBiMap, C7393a aVar) {
            this();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public void clear() {
            AbstractBiMap.this.clear();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Set<K> delegate() {
            return AbstractBiMap.this.delegate.keySet();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Iterator<K> iterator() {
            return Maps.m8145a(AbstractBiMap.this.entrySet().iterator());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            AbstractBiMap.this.removeFromBothMaps(obj);
            return true;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }
    }

    /* renamed from: com.google.common.collect.AbstractBiMap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractBiMap$e.class */
    public class C7397e extends AbstractC4961b0<V> {

        /* renamed from: a */
        public final Set<V> f30416a;

        public C7397e() {
            this.f30416a = AbstractBiMap.this.inverse.keySet();
        }

        public /* synthetic */ C7397e(AbstractBiMap abstractBiMap, C7393a aVar) {
            this();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4961b0, p131c.p161d.p266c.p269c.AbstractC5022s, p131c.p161d.p266c.p269c.AbstractC5040z
        public Set<V> delegate() {
            return this.f30416a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Iterator<V> iterator() {
            return Maps.m8124c(AbstractBiMap.this.entrySet().iterator());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5022s, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5040z
        public String toString() {
            return standardToString();
        }
    }

    public AbstractBiMap(Map<K, V> map, AbstractBiMap<V, K> abstractBiMap) {
        this.delegate = map;
        this.inverse = abstractBiMap;
    }

    public /* synthetic */ AbstractBiMap(Map map, AbstractBiMap abstractBiMap, C7393a aVar) {
        this(map, abstractBiMap);
    }

    public AbstractBiMap(Map<K, V> map, Map<V, K> map2) {
        setDelegates(map, map2);
    }

    private V putInBothMaps(K k, V v, boolean z) {
        checkKey(k);
        checkValue(v);
        boolean containsKey = containsKey(k);
        if (containsKey && C4928k.m24808a(v, get(k))) {
            return v;
        }
        if (z) {
            inverse().remove(v);
        } else {
            C4933n.m24782a(!containsValue(v), "value already present: %s", v);
        }
        V put = this.delegate.put(k, v);
        updateInverseMap(k, containsKey, put, v);
        return put;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V removeFromBothMaps(Object obj) {
        V remove = this.delegate.remove(obj);
        removeFromInverseMap(remove);
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFromInverseMap(V v) {
        this.inverse.delegate.remove(v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInverseMap(K k, boolean z, V v, V v2) {
        if (z) {
            removeFromInverseMap(v);
        }
        this.inverse.delegate.put(v2, k);
    }

    public K checkKey(K k) {
        return k;
    }

    public V checkValue(V v) {
        return v;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public void clear() {
        this.delegate.clear();
        this.inverse.delegate.clear();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public boolean containsValue(Object obj) {
        return this.inverse.containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
    public Map<K, V> delegate() {
        return this.delegate;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        Set<Map.Entry<K, V>> set2 = set;
        if (set == null) {
            set2 = new C7395c(this, null);
            this.entrySet = set2;
        }
        return set2;
    }

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        return new C7393a(this.delegate.entrySet().iterator());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4999k
    public V forcePut(K k, V v) {
        return putInBothMaps(k, v, true);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4999k
    public AbstractC4999k<V, K> inverse() {
        return this.inverse;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        Set<K> set2 = set;
        if (set == null) {
            set2 = new C7396d(this, null);
            this.keySet = set2;
        }
        return set2;
    }

    public AbstractBiMap<V, K> makeInverse(Map<V, K> map) {
        return new Inverse(map, this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public V put(K k, V v) {
        return putInBothMaps(k, v, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public V remove(Object obj) {
        return containsKey(obj) ? removeFromBothMaps(obj) : null;
    }

    public void setDelegates(Map<K, V> map, Map<V, K> map2) {
        boolean z = true;
        C4933n.m24776b(this.delegate == null);
        C4933n.m24776b(this.inverse == null);
        C4933n.m24791a(map.isEmpty());
        C4933n.m24791a(map2.isEmpty());
        if (map == map2) {
            z = false;
        }
        C4933n.m24791a(z);
        this.delegate = map;
        this.inverse = makeInverse(map2);
    }

    public void setInverse(AbstractBiMap<V, K> abstractBiMap) {
        this.inverse = abstractBiMap;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, java.util.Map
    public Set<V> values() {
        Set<V> set = this.valueSet;
        Set<V> set2 = set;
        if (set == null) {
            set2 = new C7397e(this, null);
            this.valueSet = set2;
        }
        return set2;
    }
}
