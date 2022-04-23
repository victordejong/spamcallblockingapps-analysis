package com.google.protobuf;

import com.google.protobuf.C2655t;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.d1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1.class */
public class C2584d1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: b */
    private final int f11054b;

    /* renamed from: c */
    private List<C2584d1<K, V>.C2591e> f11055c;

    /* renamed from: d */
    private Map<K, V> f11056d;

    /* renamed from: e */
    private boolean f11057e;

    /* renamed from: f */
    private volatile C2584d1<K, V>.C2593g f11058f;

    /* renamed from: g */
    private Map<K, V> f11059g;

    /* renamed from: h */
    private volatile C2584d1<K, V>.C2587c f11060h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.d1$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$a.class */
    public static final class C2585a extends C2584d1<FieldDescriptorType, Object> {
        C2585a(int i) {
            super(i, null);
        }

        @Override // com.google.protobuf.C2584d1
        /* renamed from: p */
        public void mo2807p() {
            if (!m2811o()) {
                for (int i = 0; i < m2815k(); i++) {
                    Map.Entry<FieldDescriptorType, Object> j = m2816j(i);
                    if (((C2655t.AbstractC2657b) j.getKey()).mo2290d()) {
                        j.setValue(Collections.unmodifiableList((List) j.getValue()));
                    }
                }
                Iterator it = m2813m().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (((C2655t.AbstractC2657b) entry.getKey()).mo2290d()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            C2584d1.super.mo2807p();
        }

        @Override // com.google.protobuf.C2584d1, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return C2584d1.super.put((C2655t.AbstractC2657b) obj, obj2);
        }
    }

    /* renamed from: com.google.protobuf.d1$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$b.class */
    private class C2586b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private int f11061b;

        /* renamed from: c */
        private Iterator<Map.Entry<K, V>> f11062c;

        private C2586b() {
            this.f11061b = C2584d1.this.f11055c.size();
        }

        /* synthetic */ C2586b(C2584d1 d1Var, C2585a aVar) {
            this();
        }

        /* renamed from: b */
        private Iterator<Map.Entry<K, V>> m2806b() {
            if (this.f11062c == null) {
                this.f11062c = C2584d1.this.f11059g.entrySet().iterator();
            }
            return this.f11062c;
        }

        /* renamed from: c */
        public Map.Entry<K, V> next() {
            Map.Entry<K, V> entry;
            if (m2806b().hasNext()) {
                entry = m2806b().next();
            } else {
                List list = C2584d1.this.f11055c;
                int i = this.f11061b - 1;
                this.f11061b = i;
                entry = (Map.Entry<K, V>) list.get(i);
            }
            return entry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i = this.f11061b;
            return (i > 0 && i <= C2584d1.this.f11055c.size()) || m2806b().hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.d1$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$c.class */
    public class C2587c extends C2584d1<K, V>.C2593g {
        private C2587c() {
            super(C2584d1.this, null);
        }

        /* synthetic */ C2587c(C2584d1 d1Var, C2585a aVar) {
            this();
        }

        @Override // com.google.protobuf.C2584d1.C2593g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C2586b(C2584d1.this, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.d1$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$d.class */
    public static class C2588d {

        /* renamed from: a */
        private static final Iterator<Object> f11065a = new C2589a();

        /* renamed from: b */
        private static final Iterable<Object> f11066b = new C2590b();

        /* renamed from: com.google.protobuf.d1$d$a */
        /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$d$a.class */
        static final class C2589a implements Iterator<Object> {
            C2589a() {
            }

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

        /* renamed from: com.google.protobuf.d1$d$b */
        /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$d$b.class */
        static final class C2590b implements Iterable<Object> {
            C2590b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return C2588d.f11065a;
            }
        }

        /* renamed from: b */
        static <T> Iterable<T> m2803b() {
            return (Iterable<T>) f11066b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.d1$e */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$e.class */
    public class C2591e implements Map.Entry<K, V>, Comparable<C2584d1<K, V>.C2591e> {

        /* renamed from: b */
        private final K f11067b;

        /* renamed from: c */
        private V f11068c;

        C2591e(K k, V v) {
            this.f11067b = k;
            this.f11068c = v;
        }

        C2591e(C2584d1 d1Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        /* renamed from: e */
        private boolean m2801e(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        /* renamed from: a */
        public int compareTo(C2584d1<K, V>.C2591e eVar) {
            return getKey().compareTo(eVar.getKey());
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (!m2801e(this.f11067b, entry.getKey()) || !m2801e(this.f11068c, entry.getValue())) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f11068c;
        }

        /* renamed from: h */
        public K getKey() {
            return this.f11067b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f11067b;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f11068c;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            C2584d1.this.m2819g();
            V v2 = this.f11068c;
            this.f11068c = v;
            return v2;
        }

        public String toString() {
            return this.f11067b + "=" + this.f11068c;
        }
    }

    /* renamed from: com.google.protobuf.d1$f */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$f.class */
    private class C2592f implements Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private int f11070b;

        /* renamed from: c */
        private boolean f11071c;

        /* renamed from: d */
        private Iterator<Map.Entry<K, V>> f11072d;

        private C2592f() {
            this.f11070b = -1;
        }

        /* synthetic */ C2592f(C2584d1 d1Var, C2585a aVar) {
            this();
        }

        /* renamed from: b */
        private Iterator<Map.Entry<K, V>> m2799b() {
            if (this.f11072d == null) {
                this.f11072d = C2584d1.this.f11056d.entrySet().iterator();
            }
            return this.f11072d;
        }

        /* renamed from: c */
        public Map.Entry<K, V> next() {
            this.f11071c = true;
            int i = this.f11070b + 1;
            this.f11070b = i;
            return i < C2584d1.this.f11055c.size() ? (Map.Entry<K, V>) C2584d1.this.f11055c.get(this.f11070b) : m2799b().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (this.f11070b + 1 >= C2584d1.this.f11055c.size()) {
                z = !C2584d1.this.f11056d.isEmpty() && m2799b().hasNext();
            }
            return z;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f11071c) {
                this.f11071c = false;
                C2584d1.this.m2819g();
                if (this.f11070b < C2584d1.this.f11055c.size()) {
                    C2584d1 d1Var = C2584d1.this;
                    int i = this.f11070b;
                    this.f11070b = i - 1;
                    d1Var.m2808s(i);
                    return;
                }
                m2799b().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.d1$g */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/d1$g.class */
    public class C2593g extends AbstractSet<Map.Entry<K, V>> {
        private C2593g() {
        }

        /* synthetic */ C2593g(C2584d1 d1Var, C2585a aVar) {
            this();
        }

        /* renamed from: a */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            C2584d1.this.put(entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C2584d1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = C2584d1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C2592f(C2584d1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            C2584d1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C2584d1.this.size();
        }
    }

    private C2584d1(int i) {
        this.f11054b = i;
        this.f11055c = Collections.emptyList();
        this.f11056d = Collections.emptyMap();
        this.f11059g = Collections.emptyMap();
    }

    /* synthetic */ C2584d1(int i, C2585a aVar) {
        this(i);
    }

    /* renamed from: f */
    private int m2820f(K k) {
        int size = this.f11055c.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f11055c.get(size).getKey());
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
            int compareTo2 = k.compareTo(this.f11055c.get(i2).getKey());
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m2819g() {
        if (this.f11057e) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: i */
    private void m2817i() {
        m2819g();
        if (this.f11055c.isEmpty() && !(this.f11055c instanceof ArrayList)) {
            this.f11055c = new ArrayList(this.f11054b);
        }
    }

    /* renamed from: n */
    private SortedMap<K, V> m2812n() {
        m2819g();
        if (this.f11056d.isEmpty() && !(this.f11056d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f11056d = treeMap;
            this.f11059g = treeMap.descendingMap();
        }
        return (SortedMap) this.f11056d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static <FieldDescriptorType extends C2655t.AbstractC2657b<FieldDescriptorType>> C2584d1<FieldDescriptorType, Object> m2810q(int i) {
        return new C2585a(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public V m2808s(int i) {
        m2819g();
        V value = this.f11055c.remove(i).getValue();
        if (!this.f11056d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m2812n().entrySet().iterator();
            this.f11055c.add(new C2591e(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m2819g();
        if (!this.f11055c.isEmpty()) {
            this.f11055c.clear();
        }
        if (!this.f11056d.isEmpty()) {
            this.f11056d.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m2820f(comparable) >= 0 || this.f11056d.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f11058f == null) {
            this.f11058f = new C2593g(this, null);
        }
        return this.f11058f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2584d1)) {
            return super.equals(obj);
        }
        C2584d1 d1Var = (C2584d1) obj;
        int size = size();
        if (size != d1Var.size()) {
            return false;
        }
        int k = m2815k();
        if (k != d1Var.m2815k()) {
            return entrySet().equals(d1Var.entrySet());
        }
        for (int i = 0; i < k; i++) {
            if (!m2816j(i).equals(d1Var.m2816j(i))) {
                return false;
            }
        }
        if (k != size) {
            return this.f11056d.equals(d1Var.f11056d);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int f = m2820f(comparable);
        return f >= 0 ? this.f11055c.get(f).getValue() : this.f11056d.get(comparable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Set<Map.Entry<K, V>> m2818h() {
        if (this.f11060h == null) {
            this.f11060h = new C2587c(this, null);
        }
        return this.f11060h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int k = m2815k();
        int i = 0;
        for (int i2 = 0; i2 < k; i2++) {
            i += this.f11055c.get(i2).hashCode();
        }
        int i3 = i;
        if (m2814l() > 0) {
            i3 = i + this.f11056d.hashCode();
        }
        return i3;
    }

    /* renamed from: j */
    public Map.Entry<K, V> m2816j(int i) {
        return this.f11055c.get(i);
    }

    /* renamed from: k */
    public int m2815k() {
        return this.f11055c.size();
    }

    /* renamed from: l */
    public int m2814l() {
        return this.f11056d.size();
    }

    /* renamed from: m */
    public Iterable<Map.Entry<K, V>> m2813m() {
        return this.f11056d.isEmpty() ? C2588d.m2803b() : this.f11056d.entrySet();
    }

    /* renamed from: o */
    public boolean m2811o() {
        return this.f11057e;
    }

    /* renamed from: p */
    public void mo2807p() {
        if (!this.f11057e) {
            this.f11056d = this.f11056d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f11056d);
            this.f11059g = this.f11059g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f11059g);
            this.f11057e = true;
        }
    }

    /* renamed from: r */
    public V put(K k, V v) {
        m2819g();
        int f = m2820f(k);
        if (f >= 0) {
            return this.f11055c.get(f).setValue(v);
        }
        m2817i();
        int i = -(f + 1);
        if (i >= this.f11054b) {
            return m2812n().put(k, v);
        }
        int size = this.f11055c.size();
        int i2 = this.f11054b;
        if (size == i2) {
            C2584d1<K, V>.C2591e remove = this.f11055c.remove(i2 - 1);
            m2812n().put((K) remove.getKey(), remove.getValue());
        }
        this.f11055c.add(i, new C2591e(k, v));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m2819g();
        Comparable comparable = (Comparable) obj;
        int f = m2820f(comparable);
        if (f >= 0) {
            return (V) m2808s(f);
        }
        if (this.f11056d.isEmpty()) {
            return null;
        }
        return this.f11056d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f11055c.size() + this.f11056d.size();
    }
}
