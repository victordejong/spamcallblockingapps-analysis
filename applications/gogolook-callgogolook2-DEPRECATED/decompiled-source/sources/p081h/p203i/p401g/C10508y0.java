package p081h.p203i.p401g;

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
import p081h.p203i.p401g.C10465u;
/* renamed from: h.i.g.y0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/y0.class */
public class C10508y0<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f23887a;

    /* renamed from: b */
    public List<C10508y0<K, V>.C10513c> f23888b;

    /* renamed from: c */
    public Map<K, V> f23889c;

    /* renamed from: d */
    public boolean f23890d;

    /* renamed from: e */
    public volatile C10508y0<K, V>.C10515e f23891e;

    /* renamed from: f */
    public Map<K, V> f23892f;

    /* renamed from: h.i.g.y0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/y0$a.class */
    public static final class C10509a extends C10508y0<FieldDescriptorType, Object> {
        public C10509a(int i) {
            super(i, null);
        }

        @Override // p081h.p203i.p401g.C10508y0
        /* renamed from: h */
        public void mo11555h() {
            if (!m11556g()) {
                for (int i = 0; i < m11562c(); i++) {
                    Map.Entry<FieldDescriptorType, Object> a = m11570a(i);
                    if (((C10465u.AbstractC10468c) a.getKey()).mo11731X()) {
                        a.setValue(Collections.unmodifiableList((List) a.getValue()));
                    }
                }
                Iterator it = m11558e().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    if (((C10465u.AbstractC10468c) entry.getKey()).mo11731X()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            C10508y0.super.mo11555h();
        }

        @Override // p081h.p203i.p401g.C10508y0, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return C10508y0.super.m11566a((C10509a) ((C10465u.AbstractC10468c) obj), (C10465u.AbstractC10468c) obj2);
        }
    }

    /* renamed from: h.i.g.y0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/y0$b.class */
    public static class C10510b {

        /* renamed from: a */
        public static final Iterator<Object> f23893a = new C10511a();

        /* renamed from: b */
        public static final Iterable<Object> f23894b = new C10512b();

        /* renamed from: h.i.g.y0$b$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/y0$b$a.class */
        public static final class C10511a implements Iterator<Object> {
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

        /* renamed from: h.i.g.y0$b$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/y0$b$b.class */
        public static final class C10512b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return C10510b.f23893a;
            }
        }

        /* renamed from: b */
        public static <T> Iterable<T> m11553b() {
            return (Iterable<T>) f23894b;
        }
    }

    /* renamed from: h.i.g.y0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/y0$c.class */
    public class C10513c implements Map.Entry<K, V>, Comparable<C10508y0<K, V>.C10513c> {

        /* renamed from: a */
        public final K f23895a;

        /* renamed from: b */
        public V f23896b;

        public C10513c(K k, V v) {
            this.f23895a = k;
            this.f23896b = v;
        }

        public C10513c(C10508y0 y0Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        /* renamed from: a */
        public int compareTo(C10508y0<K, V>.C10513c cVar) {
            return getKey().compareTo(cVar.getKey());
        }

        /* renamed from: a */
        public final boolean m11551a(Object obj, Object obj2) {
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
            if (!m11551a(this.f23895a, entry.getKey()) || !m11551a(this.f23896b, entry.getValue())) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f23895a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f23896b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f23895a;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f23896b;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            C10508y0.this.m11571a();
            V v2 = this.f23896b;
            this.f23896b = v;
            return v2;
        }

        public String toString() {
            return this.f23895a + "=" + this.f23896b;
        }
    }

    /* renamed from: h.i.g.y0$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/y0$d.class */
    public class C10514d implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public int f23898a;

        /* renamed from: b */
        public boolean f23899b;

        /* renamed from: c */
        public Iterator<Map.Entry<K, V>> f23900c;

        public C10514d() {
            this.f23898a = -1;
        }

        public /* synthetic */ C10514d(C10508y0 y0Var, C10509a aVar) {
            this();
        }

        /* renamed from: a */
        public final Iterator<Map.Entry<K, V>> m11550a() {
            if (this.f23900c == null) {
                this.f23900c = C10508y0.this.f23889c.entrySet().iterator();
            }
            return this.f23900c;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (this.f23898a + 1 >= C10508y0.this.f23888b.size()) {
                z = !C10508y0.this.f23889c.isEmpty() && m11550a().hasNext();
            }
            return z;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            this.f23899b = true;
            int i = this.f23898a + 1;
            this.f23898a = i;
            return i < C10508y0.this.f23888b.size() ? (Map.Entry) C10508y0.this.f23888b.get(this.f23898a) : m11550a().next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f23899b) {
                this.f23899b = false;
                C10508y0.this.m11571a();
                if (this.f23898a < C10508y0.this.f23888b.size()) {
                    C10508y0 y0Var = C10508y0.this;
                    int i = this.f23898a;
                    this.f23898a = i - 1;
                    y0Var.m11564b(i);
                    return;
                }
                m11550a().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }
    }

    /* renamed from: h.i.g.y0$e */
    /* loaded from: classes2-dex2jar.jar:h/i/g/y0$e.class */
    public class C10515e extends AbstractSet<Map.Entry<K, V>> {
        public C10515e() {
        }

        public /* synthetic */ C10515e(C10508y0 y0Var, C10509a aVar) {
            this();
        }

        /* renamed from: a */
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            C10508y0.this.m11566a((C10508y0) entry.getKey(), (K) entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C10508y0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = C10508y0.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C10514d(C10508y0.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            C10508y0.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C10508y0.this.size();
        }
    }

    public C10508y0(int i) {
        this.f23887a = i;
        this.f23888b = Collections.emptyList();
        this.f23889c = Collections.emptyMap();
        this.f23892f = Collections.emptyMap();
    }

    public /* synthetic */ C10508y0(int i, C10509a aVar) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends C10465u.AbstractC10468c<FieldDescriptorType>> C10508y0<FieldDescriptorType, Object> m11561c(int i) {
        return new C10509a(i);
    }

    /* renamed from: a */
    public final int m11567a(K k) {
        int size = this.f23888b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f23888b.get(size).getKey());
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
            int compareTo2 = k.compareTo(this.f23888b.get(i2).getKey());
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
    public V m11566a(K k, V v) {
        m11571a();
        int a = m11567a((C10508y0<K, V>) k);
        if (a >= 0) {
            return this.f23888b.get(a).setValue(v);
        }
        m11565b();
        int i = -(a + 1);
        if (i >= this.f23887a) {
            return m11557f().put(k, v);
        }
        int size = this.f23888b.size();
        int i2 = this.f23887a;
        if (size == i2) {
            C10508y0<K, V>.C10513c remove = this.f23888b.remove(i2 - 1);
            m11557f().put((K) remove.getKey(), remove.getValue());
        }
        this.f23888b.add(i, new C10513c(k, v));
        return null;
    }

    /* renamed from: a */
    public Map.Entry<K, V> m11570a(int i) {
        return this.f23888b.get(i);
    }

    /* renamed from: a */
    public final void m11571a() {
        if (this.f23890d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: b */
    public final V m11564b(int i) {
        m11571a();
        V value = this.f23888b.remove(i).getValue();
        if (!this.f23889c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m11557f().entrySet().iterator();
            this.f23888b.add(new C10513c(this, it.next()));
            it.remove();
        }
        return value;
    }

    /* renamed from: b */
    public final void m11565b() {
        m11571a();
        if (this.f23888b.isEmpty() && !(this.f23888b instanceof ArrayList)) {
            this.f23888b = new ArrayList(this.f23887a);
        }
    }

    /* renamed from: c */
    public int m11562c() {
        return this.f23888b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m11571a();
        if (!this.f23888b.isEmpty()) {
            this.f23888b.clear();
        }
        if (!this.f23889c.isEmpty()) {
            this.f23889c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m11567a((C10508y0<K, V>) comparable) >= 0 || this.f23889c.containsKey(comparable);
    }

    /* renamed from: d */
    public int m11559d() {
        return this.f23889c.size();
    }

    /* renamed from: e */
    public Iterable<Map.Entry<K, V>> m11558e() {
        return this.f23889c.isEmpty() ? C10510b.m11553b() : this.f23889c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f23891e == null) {
            this.f23891e = new C10515e(this, null);
        }
        return this.f23891e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10508y0)) {
            return super.equals(obj);
        }
        C10508y0 y0Var = (C10508y0) obj;
        int size = size();
        if (size != y0Var.size()) {
            return false;
        }
        int c = m11562c();
        if (c != y0Var.m11562c()) {
            return entrySet().equals(y0Var.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m11570a(i).equals(y0Var.m11570a(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f23889c.equals(y0Var.f23889c);
        }
        return true;
    }

    /* renamed from: f */
    public final SortedMap<K, V> m11557f() {
        m11571a();
        if (this.f23889c.isEmpty() && !(this.f23889c instanceof TreeMap)) {
            this.f23889c = new TreeMap();
            this.f23892f = ((TreeMap) this.f23889c).descendingMap();
        }
        return (SortedMap) this.f23889c;
    }

    /* renamed from: g */
    public boolean m11556g() {
        return this.f23890d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m11567a((C10508y0<K, V>) comparable);
        return a >= 0 ? this.f23888b.get(a).getValue() : this.f23889c.get(comparable);
    }

    /* renamed from: h */
    public void mo11555h() {
        if (!this.f23890d) {
            this.f23889c = this.f23889c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f23889c);
            this.f23892f = this.f23892f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f23892f);
            this.f23890d = true;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c = m11562c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f23888b.get(i2).hashCode();
        }
        int i3 = i;
        if (m11559d() > 0) {
            i3 = i + this.f23889c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return m11566a((C10508y0<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m11571a();
        Comparable comparable = (Comparable) obj;
        int a = m11567a((C10508y0<K, V>) comparable);
        if (a >= 0) {
            return (V) m11564b(a);
        }
        if (this.f23889c.isEmpty()) {
            return null;
        }
        return this.f23889c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f23888b.size() + this.f23889c.size();
    }
}
