package p131c.p161d.p367h;

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
import p131c.p161d.p367h.C6371u;
/* renamed from: c.d.h.f1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/f1.class */
public class C6303f1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f19890a;

    /* renamed from: b */
    public List<C6303f1<K, V>.C6310e> f19891b;

    /* renamed from: c */
    public Map<K, V> f19892c;

    /* renamed from: d */
    public boolean f19893d;

    /* renamed from: e */
    public volatile C6303f1<K, V>.C6312g f19894e;

    /* renamed from: f */
    public Map<K, V> f19895f;

    /* renamed from: g */
    public volatile C6303f1<K, V>.C6306c f19896g;

    /* renamed from: c.d.h.f1$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f1$a.class */
    public static final class C6304a extends C6303f1<FieldDescriptorType, Object> {
        public C6304a(int i) {
            super(i, null);
        }

        @Override // p131c.p161d.p367h.C6303f1
        /* renamed from: i */
        public void mo21512i() {
            if (!m21513h()) {
                for (int i = 0; i < m21518d(); i++) {
                    Map.Entry<FieldDescriptorType, Object> a = m21529a(i);
                    if (((C6371u.AbstractC6373b) a.getKey()).mo6919k()) {
                        a.setValue(Collections.unmodifiableList((List) a.getValue()));
                    }
                }
                Iterator it = m21515f().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (((C6371u.AbstractC6373b) entry.getKey()).mo6919k()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            C6303f1.super.mo21512i();
        }

        @Override // p131c.p161d.p367h.C6303f1, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return C6303f1.super.m21525a((C6304a) ((C6371u.AbstractC6373b) obj), (C6371u.AbstractC6373b) obj2);
        }
    }

    /* renamed from: c.d.h.f1$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f1$b.class */
    public class C6305b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public int f19897a;

        /* renamed from: b */
        public Iterator<Map.Entry<K, V>> f19898b;

        public C6305b() {
            this.f19897a = C6303f1.this.f19891b.size();
        }

        public /* synthetic */ C6305b(C6303f1 f1Var, C6304a aVar) {
            this();
        }

        /* renamed from: a */
        public final Iterator<Map.Entry<K, V>> m21511a() {
            if (this.f19898b == null) {
                this.f19898b = C6303f1.this.f19895f.entrySet().iterator();
            }
            return this.f19898b;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i = this.f19897a;
            return (i > 0 && i <= C6303f1.this.f19891b.size()) || m21511a().hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (m21511a().hasNext()) {
                return m21511a().next();
            }
            List list = C6303f1.this.f19891b;
            int i = this.f19897a - 1;
            this.f19897a = i;
            return (Map.Entry) list.get(i);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: c.d.h.f1$c */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f1$c.class */
    public class C6306c extends C6303f1<K, V>.C6312g {
        public C6306c() {
            super(C6303f1.this, null);
        }

        public /* synthetic */ C6306c(C6303f1 f1Var, C6304a aVar) {
            this();
        }

        @Override // p131c.p161d.p367h.C6303f1.C6312g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C6305b(C6303f1.this, null);
        }
    }

    /* renamed from: c.d.h.f1$d */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f1$d.class */
    public static class C6307d {

        /* renamed from: a */
        public static final Iterator<Object> f19901a = new C6308a();

        /* renamed from: b */
        public static final Iterable<Object> f19902b = new C6309b();

        /* renamed from: c.d.h.f1$d$a */
        /* loaded from: classes2-dex2jar.jar:c/d/h/f1$d$a.class */
        public static final class C6308a implements Iterator<Object> {
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

        /* renamed from: c.d.h.f1$d$b */
        /* loaded from: classes2-dex2jar.jar:c/d/h/f1$d$b.class */
        public static final class C6309b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return C6307d.f19901a;
            }
        }

        /* renamed from: b */
        public static <T> Iterable<T> m21509b() {
            return (Iterable<T>) f19902b;
        }
    }

    /* renamed from: c.d.h.f1$e */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f1$e.class */
    public class C6310e implements Map.Entry<K, V>, Comparable<C6303f1<K, V>.C6310e> {

        /* renamed from: a */
        public final K f19903a;

        /* renamed from: b */
        public V f19904b;

        public C6310e(K k, V v) {
            this.f19903a = k;
            this.f19904b = v;
        }

        public C6310e(C6303f1 f1Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        /* renamed from: a */
        public int compareTo(C6303f1<K, V>.C6310e eVar) {
            return getKey().compareTo(eVar.getKey());
        }

        /* renamed from: a */
        public final boolean m21507a(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
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
            if (!m21507a(this.f19903a, entry.getKey()) || !m21507a(this.f19904b, entry.getValue())) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f19903a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f19904b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f19903a;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f19904b;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            C6303f1.this.m21530a();
            V v2 = this.f19904b;
            this.f19904b = v;
            return v2;
        }

        public String toString() {
            return this.f19903a + "=" + this.f19904b;
        }
    }

    /* renamed from: c.d.h.f1$f */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f1$f.class */
    public class C6311f implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public int f19906a;

        /* renamed from: b */
        public boolean f19907b;

        /* renamed from: c */
        public Iterator<Map.Entry<K, V>> f19908c;

        public C6311f() {
            this.f19906a = -1;
        }

        public /* synthetic */ C6311f(C6303f1 f1Var, C6304a aVar) {
            this();
        }

        /* renamed from: a */
        public final Iterator<Map.Entry<K, V>> m21506a() {
            if (this.f19908c == null) {
                this.f19908c = C6303f1.this.f19892c.entrySet().iterator();
            }
            return this.f19908c;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (this.f19906a + 1 >= C6303f1.this.f19891b.size()) {
                z = !C6303f1.this.f19892c.isEmpty() && m21506a().hasNext();
            }
            return z;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            this.f19907b = true;
            int i = this.f19906a + 1;
            this.f19906a = i;
            return i < C6303f1.this.f19891b.size() ? (Map.Entry) C6303f1.this.f19891b.get(this.f19906a) : m21506a().next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f19907b) {
                this.f19907b = false;
                C6303f1.this.m21530a();
                if (this.f19906a < C6303f1.this.f19891b.size()) {
                    C6303f1 f1Var = C6303f1.this;
                    int i = this.f19906a;
                    this.f19906a = i - 1;
                    f1Var.m21523b(i);
                    return;
                }
                m21506a().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }
    }

    /* renamed from: c.d.h.f1$g */
    /* loaded from: classes2-dex2jar.jar:c/d/h/f1$g.class */
    public class C6312g extends AbstractSet<Map.Entry<K, V>> {
        public C6312g() {
        }

        public /* synthetic */ C6312g(C6303f1 f1Var, C6304a aVar) {
            this();
        }

        /* renamed from: a */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            C6303f1.this.m21525a((C6303f1) entry.getKey(), (K) entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C6303f1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = C6303f1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C6311f(C6303f1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            C6303f1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C6303f1.this.size();
        }
    }

    public C6303f1(int i) {
        this.f19890a = i;
        this.f19891b = Collections.emptyList();
        this.f19892c = Collections.emptyMap();
        this.f19895f = Collections.emptyMap();
    }

    public /* synthetic */ C6303f1(int i, C6304a aVar) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends C6371u.AbstractC6373b<FieldDescriptorType>> C6303f1<FieldDescriptorType, Object> m21520c(int i) {
        return new C6304a(i);
    }

    /* renamed from: a */
    public final int m21526a(K k) {
        int size = this.f19891b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f19891b.get(size).getKey());
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
            int compareTo2 = k.compareTo(this.f19891b.get(i2).getKey());
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

    /* renamed from: a */
    public V m21525a(K k, V v) {
        m21530a();
        int a = m21526a((C6303f1<K, V>) k);
        if (a >= 0) {
            return this.f19891b.get(a).setValue(v);
        }
        m21521c();
        int i = -(a + 1);
        if (i >= this.f19890a) {
            return m21514g().put(k, v);
        }
        int size = this.f19891b.size();
        int i2 = this.f19890a;
        if (size == i2) {
            C6303f1<K, V>.C6310e remove = this.f19891b.remove(i2 - 1);
            m21514g().put((K) remove.getKey(), remove.getValue());
        }
        this.f19891b.add(i, new C6310e(k, v));
        return null;
    }

    /* renamed from: a */
    public Map.Entry<K, V> m21529a(int i) {
        return this.f19891b.get(i);
    }

    /* renamed from: a */
    public final void m21530a() {
        if (this.f19893d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: b */
    public final V m21523b(int i) {
        m21530a();
        V value = this.f19891b.remove(i).getValue();
        if (!this.f19892c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m21514g().entrySet().iterator();
            this.f19891b.add(new C6310e(this, it.next()));
            it.remove();
        }
        return value;
    }

    /* renamed from: b */
    public Set<Map.Entry<K, V>> m21524b() {
        if (this.f19896g == null) {
            this.f19896g = new C6306c(this, null);
        }
        return this.f19896g;
    }

    /* renamed from: c */
    public final void m21521c() {
        m21530a();
        if (this.f19891b.isEmpty() && !(this.f19891b instanceof ArrayList)) {
            this.f19891b = new ArrayList(this.f19890a);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m21530a();
        if (!this.f19891b.isEmpty()) {
            this.f19891b.clear();
        }
        if (!this.f19892c.isEmpty()) {
            this.f19892c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m21526a((C6303f1<K, V>) comparable) >= 0 || this.f19892c.containsKey(comparable);
    }

    /* renamed from: d */
    public int m21518d() {
        return this.f19891b.size();
    }

    /* renamed from: e */
    public int m21516e() {
        return this.f19892c.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f19894e == null) {
            this.f19894e = new C6312g(this, null);
        }
        return this.f19894e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6303f1)) {
            return super.equals(obj);
        }
        C6303f1 f1Var = (C6303f1) obj;
        int size = size();
        if (size != f1Var.size()) {
            return false;
        }
        int d = m21518d();
        if (d != f1Var.m21518d()) {
            return entrySet().equals(f1Var.entrySet());
        }
        for (int i = 0; i < d; i++) {
            if (!m21529a(i).equals(f1Var.m21529a(i))) {
                return false;
            }
        }
        if (d != size) {
            return this.f19892c.equals(f1Var.f19892c);
        }
        return true;
    }

    /* renamed from: f */
    public Iterable<Map.Entry<K, V>> m21515f() {
        return this.f19892c.isEmpty() ? C6307d.m21509b() : this.f19892c.entrySet();
    }

    /* renamed from: g */
    public final SortedMap<K, V> m21514g() {
        m21530a();
        if (this.f19892c.isEmpty() && !(this.f19892c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f19892c = treeMap;
            this.f19895f = treeMap.descendingMap();
        }
        return (SortedMap) this.f19892c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m21526a((C6303f1<K, V>) comparable);
        return a >= 0 ? this.f19891b.get(a).getValue() : this.f19892c.get(comparable);
    }

    /* renamed from: h */
    public boolean m21513h() {
        return this.f19893d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int d = m21518d();
        int i = 0;
        for (int i2 = 0; i2 < d; i2++) {
            i += this.f19891b.get(i2).hashCode();
        }
        int i3 = i;
        if (m21516e() > 0) {
            i3 = i + this.f19892c.hashCode();
        }
        return i3;
    }

    /* renamed from: i */
    public void mo21512i() {
        if (!this.f19893d) {
            this.f19892c = this.f19892c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f19892c);
            this.f19895f = this.f19895f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f19895f);
            this.f19893d = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return m21525a((C6303f1<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m21530a();
        Comparable comparable = (Comparable) obj;
        int a = m21526a((C6303f1<K, V>) comparable);
        if (a >= 0) {
            return (V) m21523b(a);
        }
        if (this.f19892c.isEmpty()) {
            return null;
        }
        return this.f19892c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f19891b.size() + this.f19892c.size();
    }
}
