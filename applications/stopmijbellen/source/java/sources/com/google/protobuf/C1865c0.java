package com.google.protobuf;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* renamed from: com.google.protobuf.c0 */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/c0.class */
public class C1865c0<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: g */
    public static final /* synthetic */ int f7040g = 0;

    /* renamed from: a */
    public final int f7041a;

    /* renamed from: d */
    public boolean f7044d;

    /* renamed from: e */
    public volatile C1865c0<K, V>.C1871d f7045e;

    /* renamed from: b */
    public List<C1865c0<K, V>.C1869b> f7042b = Collections.emptyList();

    /* renamed from: c */
    public Map<K, V> f7043c = Collections.emptyMap();

    /* renamed from: f */
    public Map<K, V> f7046f = Collections.emptyMap();

    /* renamed from: com.google.protobuf.c0$a */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/c0$a.class */
    public static class C1866a {

        /* renamed from: a */
        public static final Iterator<Object> f7047a = new C1867a();

        /* renamed from: b */
        public static final Iterable<Object> f7048b = new C1868b();

        /* renamed from: com.google.protobuf.c0$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/protobuf/c0$a$a.class */
        public static final class C1867a implements Iterator<Object> {
            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        /* renamed from: com.google.protobuf.c0$a$b */
        /* loaded from: classes-dex2jar.jar:com/google/protobuf/c0$a$b.class */
        public static final class C1868b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return C1866a.f7047a;
            }
        }
    }

    /* renamed from: com.google.protobuf.c0$b */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/c0$b.class */
    public class C1869b implements Map.Entry<K, V>, Comparable<C1865c0<K, V>.C1869b> {

        /* renamed from: a */
        public final K f7049a;

        /* renamed from: b */
        public V f7050b;

        public C1869b(K k, V v) {
            C1865c0.this = r4;
            this.f7049a = k;
            this.f7050b = v;
        }

        public C1869b(C1865c0 c1865c0, Map.Entry<K, V> entry) {
            K key = entry.getKey();
            V value = entry.getValue();
            C1865c0.this = c1865c0;
            this.f7049a = key;
            this.f7050b = value;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f7049a.compareTo(((C1869b) obj).f7049a);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.f7049a;
            Object key = entry.getKey();
            if (k == null ? key == null : k.equals(key)) {
                V v = this.f7050b;
                Object value = entry.getValue();
                if (v == null ? value == null : v.equals(value)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f7049a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f7050b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f7049a;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f7050b;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            C1865c0 c1865c0 = C1865c0.this;
            int i = C1865c0.f7040g;
            c1865c0.m4345b();
            V v2 = this.f7050b;
            this.f7050b = v;
            return v2;
        }

        public String toString() {
            return this.f7049a + "=" + this.f7050b;
        }
    }

    /* renamed from: com.google.protobuf.c0$c */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/c0$c.class */
    public class C1870c implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public int f7052a = -1;

        /* renamed from: b */
        public boolean f7053b;

        /* renamed from: c */
        public Iterator<Map.Entry<K, V>> f7054c;

        public C1870c(C1863b0 c1863b0) {
            C1865c0.this = r4;
        }

        /* renamed from: a */
        public final Iterator<Map.Entry<K, V>> m4337a() {
            if (this.f7054c == null) {
                this.f7054c = C1865c0.this.f7043c.entrySet().iterator();
            }
            return this.f7054c;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (this.f7052a + 1 >= C1865c0.this.f7042b.size()) {
                z = !C1865c0.this.f7043c.isEmpty() && m4337a().hasNext();
            }
            return z;
        }

        @Override // java.util.Iterator
        public Object next() {
            this.f7053b = true;
            int i = this.f7052a + 1;
            this.f7052a = i;
            return i < C1865c0.this.f7042b.size() ? C1865c0.this.f7042b.get(this.f7052a) : m4337a().next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f7053b) {
                this.f7053b = false;
                C1865c0 c1865c0 = C1865c0.this;
                int i = C1865c0.f7040g;
                c1865c0.m4345b();
                if (this.f7052a >= C1865c0.this.f7042b.size()) {
                    m4337a().remove();
                    return;
                }
                C1865c0 c1865c02 = C1865c0.this;
                int i2 = this.f7052a;
                this.f7052a = i2 - 1;
                c1865c02.m4338i(i2);
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }
    }

    /* renamed from: com.google.protobuf.c0$d */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/c0$d.class */
    public class C1871d extends AbstractSet<Map.Entry<K, V>> {
        public C1871d(C1863b0 c1863b0) {
            C1865c0.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Object obj) {
            boolean z;
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                C1865c0.this.put((Comparable) entry.getKey(), entry.getValue());
                z = true;
            } else {
                z = false;
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C1865c0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = C1865c0.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C1870c(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                C1865c0.this.remove(entry.getKey());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C1865c0.this.size();
        }
    }

    public C1865c0(int i, C1863b0 c1863b0) {
        this.f7041a = i;
    }

    /* renamed from: a */
    public final int m4346a(K k) {
        int size = this.f7042b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f7042b.get(size).f7049a);
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo(this.f7042b.get(i2).f7049a);
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else if (compareTo2 <= 0) {
                return i2;
            } else {
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: b */
    public final void m4345b() {
        if (!this.f7044d) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public Map.Entry<K, V> m4344c(int i) {
        return this.f7042b.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m4345b();
        if (!this.f7042b.isEmpty()) {
            this.f7042b.clear();
        }
        if (!this.f7043c.isEmpty()) {
            this.f7043c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m4346a(comparable) >= 0 || this.f7043c.containsKey(comparable);
    }

    /* renamed from: d */
    public int m4343d() {
        return this.f7042b.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public Iterable<Map.Entry<K, V>> m4342e() {
        return this.f7043c.isEmpty() ? C1866a.f7048b : this.f7043c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f7045e == null) {
            this.f7045e = new C1871d(null);
        }
        return this.f7045e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1865c0)) {
            return super.equals(obj);
        }
        C1865c0 c1865c0 = (C1865c0) obj;
        int size = size();
        if (size != c1865c0.size()) {
            return false;
        }
        int m4343d = m4343d();
        if (m4343d != c1865c0.m4343d()) {
            return entrySet().equals(c1865c0.entrySet());
        }
        for (int i = 0; i < m4343d; i++) {
            if (!m4344c(i).equals(c1865c0.m4344c(i))) {
                return false;
            }
        }
        if (m4343d == size) {
            return true;
        }
        return this.f7043c.equals(c1865c0.f7043c);
    }

    /* renamed from: f */
    public final SortedMap<K, V> m4341f() {
        m4345b();
        if (this.f7043c.isEmpty() && !(this.f7043c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f7043c = treeMap;
            this.f7046f = treeMap.descendingMap();
        }
        return (SortedMap) this.f7043c;
    }

    /* renamed from: g */
    public void mo4340g() {
        if (!this.f7044d) {
            this.f7043c = this.f7043c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f7043c);
            this.f7046f = this.f7046f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f7046f);
            this.f7044d = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m4346a = m4346a(comparable);
        return m4346a >= 0 ? this.f7042b.get(m4346a).f7050b : this.f7043c.get(comparable);
    }

    /* renamed from: h */
    public V put(K k, V v) {
        m4345b();
        int m4346a = m4346a(k);
        if (m4346a >= 0) {
            C1865c0<K, V>.C1869b c1869b = this.f7042b.get(m4346a);
            C1865c0.this.m4345b();
            V v2 = c1869b.f7050b;
            c1869b.f7050b = v;
            return v2;
        }
        m4345b();
        if (this.f7042b.isEmpty() && !(this.f7042b instanceof ArrayList)) {
            this.f7042b = new ArrayList(this.f7041a);
        }
        int i = -(m4346a + 1);
        if (i >= this.f7041a) {
            return m4341f().put(k, v);
        }
        int size = this.f7042b.size();
        int i2 = this.f7041a;
        if (size == i2) {
            C1865c0<K, V>.C1869b remove = this.f7042b.remove(i2 - 1);
            m4341f().put(remove.f7049a, remove.f7050b);
        }
        this.f7042b.add(i, new C1869b(k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int m4343d = m4343d();
        int i = 0;
        for (int i2 = 0; i2 < m4343d; i2++) {
            i += this.f7042b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f7043c.size() > 0) {
            i3 = i + this.f7043c.hashCode();
        }
        return i3;
    }

    /* renamed from: i */
    public final V m4338i(int i) {
        m4345b();
        V v = this.f7042b.remove(i).f7050b;
        if (!this.f7043c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = m4341f().entrySet().iterator();
            this.f7042b.add(new C1869b(this, it2.next()));
            it2.remove();
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m4345b();
        Comparable comparable = (Comparable) obj;
        int m4346a = m4346a(comparable);
        if (m4346a >= 0) {
            return (V) m4338i(m4346a);
        }
        if (!this.f7043c.isEmpty()) {
            return this.f7043c.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f7043c.size() + this.f7042b.size();
    }
}
