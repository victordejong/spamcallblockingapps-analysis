package kotlin.reflect.jvm.internal.impl.protobuf;

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
import kotlin.reflect.jvm.internal.impl.protobuf.C19680g;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.u */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u.class */
public class C19716u<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    private final int f65895a;

    /* renamed from: b */
    private List<C19716u<K, V>.C19721b> f65896b;

    /* renamed from: c */
    private Map<K, V> f65897c;

    /* renamed from: d */
    private boolean f65898d;

    /* renamed from: e */
    private volatile C19716u<K, V>.C19723d f65899e;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.u$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u$a.class */
    public static final class C19718a {

        /* renamed from: a */
        private static final Iterator<Object> f65900a = new Iterator<Object>() { // from class: kotlin.reflect.jvm.internal.impl.protobuf.u.a.1
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        };

        /* renamed from: b */
        private static final Iterable<Object> f65901b = new Iterable<Object>() { // from class: kotlin.reflect.jvm.internal.impl.protobuf.u.a.2
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return C19718a.f65900a;
            }
        };

        /* renamed from: a */
        static <T> Iterable<T> m1607a() {
            return (Iterable<T>) f65901b;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.u$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u$b.class */
    public final class C19721b implements Comparable<C19716u<K, V>.C19721b>, Map.Entry<K, V> {

        /* renamed from: a */
        final K f65902a;

        /* renamed from: c */
        private V f65904c;

        C19721b(K k, V v) {
            C19716u.this = r4;
            this.f65902a = k;
            this.f65904c = v;
        }

        C19721b(C19716u c19716u, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        /* renamed from: a */
        private static boolean m1605a(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return this.f65902a.compareTo(((C19721b) obj).f65902a);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return m1605a(this.f65902a, entry.getKey()) && m1605a(this.f65904c, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public final /* bridge */ /* synthetic */ Object getKey() {
            return this.f65902a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f65904c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f65902a;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f65904c;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            C19716u.this.m1611e();
            V v2 = this.f65904c;
            this.f65904c = v;
            return v2;
        }

        public final String toString() {
            String valueOf = String.valueOf(String.valueOf(this.f65902a));
            String valueOf2 = String.valueOf(String.valueOf(this.f65904c));
            StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
            sb.append(valueOf);
            sb.append("=");
            sb.append(valueOf2);
            return sb.toString();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.u$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u$c.class */
    final class C19722c implements Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private int f65906b;

        /* renamed from: c */
        private boolean f65907c;

        /* renamed from: d */
        private Iterator<Map.Entry<K, V>> f65908d;

        private C19722c() {
            C19716u.this = r4;
            this.f65906b = -1;
        }

        /* renamed from: a */
        private Iterator<Map.Entry<K, V>> m1604a() {
            if (this.f65908d == null) {
                this.f65908d = C19716u.this.f65897c.entrySet().iterator();
            }
            return this.f65908d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f65906b + 1 < C19716u.this.f65896b.size() || m1604a().hasNext();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            this.f65907c = true;
            int i = this.f65906b + 1;
            this.f65906b = i;
            return i < C19716u.this.f65896b.size() ? (Map.Entry) C19716u.this.f65896b.get(this.f65906b) : m1604a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f65907c) {
                this.f65907c = false;
                C19716u.this.m1611e();
                if (this.f65906b >= C19716u.this.f65896b.size()) {
                    m1604a().remove();
                    return;
                }
                C19716u c19716u = C19716u.this;
                int i = this.f65906b;
                this.f65906b = i - 1;
                c19716u.m1614c(i);
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.u$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u$d.class */
    public final class C19723d extends AbstractSet<Map.Entry<K, V>> {
        private C19723d() {
            C19716u.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final /* synthetic */ boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                C19716u.this.m1621a((C19716u) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C19716u.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = C19716u.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value) {
                return obj2 != null && obj2.equals(value);
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new C19722c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                C19716u.this.remove(entry.getKey());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C19716u.this.size();
        }
    }

    private C19716u(int i) {
        this.f65895a = i;
        this.f65896b = Collections.emptyList();
        this.f65897c = Collections.emptyMap();
    }

    /* renamed from: a */
    private int m1622a(K k) {
        int size = this.f65896b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f65896b.get(size).f65902a);
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
            int compareTo2 = k.compareTo(this.f65896b.get(i2).f65902a);
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
    public static <FieldDescriptorType extends C19680g.AbstractC19682a<FieldDescriptorType>> C19716u<FieldDescriptorType, Object> m1623a(int i) {
        return (C19716u<FieldDescriptorType, Object>) new C19716u<FieldDescriptorType, Object>(i) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.u.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19716u
            /* renamed from: a */
            public final void mo1608a() {
                if (!m1618b()) {
                    for (int i2 = 0; i2 < m1615c(); i2++) {
                        Map.Entry<FieldDescriptorType, Object> b = m1617b(i2);
                        if (((C19680g.AbstractC19682a) b.getKey()).mo1679d()) {
                            b.setValue(Collections.unmodifiableList((List) b.getValue()));
                        }
                    }
                    Iterator it2 = m1612d().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry = (Map.Entry) it2.next();
                        if (((C19680g.AbstractC19682a) entry.getKey()).mo1679d()) {
                            entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                        }
                    }
                }
                C19716u.super.mo1608a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19716u, java.util.AbstractMap, java.util.Map
            public final /* synthetic */ Object put(Object obj, Object obj2) {
                return C19716u.super.m1621a((C197171) ((C19680g.AbstractC19682a) obj), (C19680g.AbstractC19682a) obj2);
            }
        };
    }

    /* renamed from: c */
    public V m1614c(int i) {
        m1611e();
        V value = this.f65896b.remove(i).getValue();
        if (!this.f65897c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = m1610f().entrySet().iterator();
            this.f65896b.add(new C19721b(this, it2.next()));
            it2.remove();
        }
        return value;
    }

    /* renamed from: e */
    public void m1611e() {
        if (!this.f65898d) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: f */
    private SortedMap<K, V> m1610f() {
        m1611e();
        if (this.f65897c.isEmpty() && !(this.f65897c instanceof TreeMap)) {
            this.f65897c = new TreeMap();
        }
        return (SortedMap) this.f65897c;
    }

    /* renamed from: g */
    private void m1609g() {
        m1611e();
        if (!this.f65896b.isEmpty() || (this.f65896b instanceof ArrayList)) {
            return;
        }
        this.f65896b = new ArrayList(this.f65895a);
    }

    /* renamed from: a */
    public final V m1621a(K k, V v) {
        m1611e();
        int m1622a = m1622a((C19716u<K, V>) k);
        if (m1622a >= 0) {
            return this.f65896b.get(m1622a).setValue(v);
        }
        m1609g();
        int i = -(m1622a + 1);
        if (i >= this.f65895a) {
            return m1610f().put(k, v);
        }
        int size = this.f65896b.size();
        int i2 = this.f65895a;
        if (size == i2) {
            C19716u<K, V>.C19721b remove = this.f65896b.remove(i2 - 1);
            m1610f().put(remove.f65902a, remove.getValue());
        }
        this.f65896b.add(i, new C19721b(k, v));
        return null;
    }

    /* renamed from: a */
    public void mo1608a() {
        if (!this.f65898d) {
            this.f65897c = this.f65897c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f65897c);
            this.f65898d = true;
        }
    }

    /* renamed from: b */
    public final Map.Entry<K, V> m1617b(int i) {
        return this.f65896b.get(i);
    }

    /* renamed from: b */
    public final boolean m1618b() {
        return this.f65898d;
    }

    /* renamed from: c */
    public final int m1615c() {
        return this.f65896b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m1611e();
        if (!this.f65896b.isEmpty()) {
            this.f65896b.clear();
        }
        if (!this.f65897c.isEmpty()) {
            this.f65897c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m1622a((C19716u<K, V>) comparable) >= 0 || this.f65897c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m1612d() {
        return this.f65897c.isEmpty() ? C19718a.m1607a() : this.f65897c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f65899e == null) {
            this.f65899e = new C19723d();
        }
        return this.f65899e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m1622a = m1622a((C19716u<K, V>) comparable);
        return m1622a >= 0 ? this.f65896b.get(m1622a).getValue() : this.f65897c.get(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m1621a((C19716u<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m1611e();
        Comparable comparable = (Comparable) obj;
        int m1622a = m1622a((C19716u<K, V>) comparable);
        if (m1622a >= 0) {
            return (V) m1614c(m1622a);
        }
        if (!this.f65897c.isEmpty()) {
            return this.f65897c.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f65896b.size() + this.f65897c.size();
    }
}
