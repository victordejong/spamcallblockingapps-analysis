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
import kotlin.reflect.jvm.internal.impl.protobuf.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u.class */
public class u<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final int f38183a;

    /* renamed from: b  reason: collision with root package name */
    private List<u<K, V>.b> f38184b;

    /* renamed from: c  reason: collision with root package name */
    private Map<K, V> f38185c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f38186d;
    private volatile u<K, V>.d e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final Iterator<Object> f38187a = new Iterator<Object>() { // from class: kotlin.reflect.jvm.internal.impl.protobuf.u.a.1
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

        /* renamed from: b  reason: collision with root package name */
        private static final Iterable<Object> f38188b = new Iterable<Object>() { // from class: kotlin.reflect.jvm.internal.impl.protobuf.u.a.2
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return a.f38187a;
            }
        };

        static <T> Iterable<T> a() {
            return (Iterable<T>) f38188b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u$b.class */
    public final class b implements Comparable<u<K, V>.b>, Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f38189a;

        /* renamed from: c  reason: collision with root package name */
        private V f38191c;

        b(K k, V v) {
            this.f38189a = k;
            this.f38191c = v;
        }

        b(u uVar, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        private static boolean a(Object obj, Object obj2) {
            return obj == null ? obj2 == null : obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return this.f38189a.compareTo(((b) obj).f38189a);
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
            return a(this.f38189a, entry.getKey()) && a(this.f38191c, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public final /* bridge */ /* synthetic */ Object getKey() {
            return this.f38189a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f38191c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f38189a;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f38191c;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            u.this.e();
            V v2 = this.f38191c;
            this.f38191c = v;
            return v2;
        }

        public final String toString() {
            String valueOf = String.valueOf(String.valueOf(this.f38189a));
            String valueOf2 = String.valueOf(String.valueOf(this.f38191c));
            StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
            sb.append(valueOf);
            sb.append("=");
            sb.append(valueOf2);
            return sb.toString();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u$c.class */
    final class c implements Iterator<Map.Entry<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private int f38193b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f38194c;

        /* renamed from: d  reason: collision with root package name */
        private Iterator<Map.Entry<K, V>> f38195d;

        private c() {
            this.f38193b = -1;
        }

        private Iterator<Map.Entry<K, V>> a() {
            if (this.f38195d == null) {
                this.f38195d = u.this.f38185c.entrySet().iterator();
            }
            return this.f38195d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38193b + 1 < u.this.f38184b.size() || a().hasNext();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            this.f38194c = true;
            int i = this.f38193b + 1;
            this.f38193b = i;
            return i < u.this.f38184b.size() ? (Map.Entry) u.this.f38184b.get(this.f38193b) : a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f38194c) {
                this.f38194c = false;
                u.this.e();
                if (this.f38193b < u.this.f38184b.size()) {
                    u uVar = u.this;
                    int i = this.f38193b;
                    this.f38193b = i - 1;
                    uVar.c(i);
                    return;
                }
                a().remove();
                return;
            }
            throw new IllegalStateException("remove() was called before next()");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/u$d.class */
    final class d extends AbstractSet<Map.Entry<K, V>> {
        private d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final /* synthetic */ boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                return false;
            }
            u.this.a((u) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            u.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = u.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value) {
                return obj2 != null && obj2.equals(value);
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            u.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return u.this.size();
        }
    }

    private u(int i) {
        this.f38183a = i;
        this.f38184b = Collections.emptyList();
        this.f38185c = Collections.emptyMap();
    }

    private int a(K k) {
        int size = this.f38184b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f38184b.get(size).f38189a);
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
            int compareTo2 = k.compareTo(this.f38184b.get(i2).f38189a);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends g.a<FieldDescriptorType>> u<FieldDescriptorType, Object> a(int i) {
        return (u<FieldDescriptorType, Object>) new u<FieldDescriptorType, Object>(i) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.u.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.u
            public final void a() {
                if (!b()) {
                    for (int i2 = 0; i2 < c(); i2++) {
                        Map.Entry<FieldDescriptorType, Object> b2 = b(i2);
                        if (((g.a) b2.getKey()).d()) {
                            b2.setValue(Collections.unmodifiableList((List) b2.getValue()));
                        }
                    }
                    Iterator it2 = d().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry = (Map.Entry) it2.next();
                        if (((g.a) entry.getKey()).d()) {
                            entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                        }
                    }
                }
                u.super.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.u, java.util.AbstractMap, java.util.Map
            public final /* synthetic */ Object put(Object obj, Object obj2) {
                return u.super.a((AnonymousClass1) ((g.a) obj), (g.a) obj2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V c(int i) {
        e();
        V value = this.f38184b.remove(i).getValue();
        if (!this.f38185c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = f().entrySet().iterator();
            this.f38184b.add(new b(this, it2.next()));
            it2.remove();
        }
        return value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.f38186d) {
            throw new UnsupportedOperationException();
        }
    }

    private SortedMap<K, V> f() {
        e();
        if (this.f38185c.isEmpty() && !(this.f38185c instanceof TreeMap)) {
            this.f38185c = new TreeMap();
        }
        return (SortedMap) this.f38185c;
    }

    private void g() {
        e();
        if (this.f38184b.isEmpty() && !(this.f38184b instanceof ArrayList)) {
            this.f38184b = new ArrayList(this.f38183a);
        }
    }

    public final V a(K k, V v) {
        e();
        int a2 = a((u<K, V>) k);
        if (a2 >= 0) {
            return this.f38184b.get(a2).setValue(v);
        }
        g();
        int i = -(a2 + 1);
        if (i >= this.f38183a) {
            return f().put(k, v);
        }
        int size = this.f38184b.size();
        int i2 = this.f38183a;
        if (size == i2) {
            u<K, V>.b remove = this.f38184b.remove(i2 - 1);
            f().put(remove.f38189a, remove.getValue());
        }
        this.f38184b.add(i, new b(k, v));
        return null;
    }

    public void a() {
        if (!this.f38186d) {
            this.f38185c = this.f38185c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f38185c);
            this.f38186d = true;
        }
    }

    public final Map.Entry<K, V> b(int i) {
        return this.f38184b.get(i);
    }

    public final boolean b() {
        return this.f38186d;
    }

    public final int c() {
        return this.f38184b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        e();
        if (!this.f38184b.isEmpty()) {
            this.f38184b.clear();
        }
        if (!this.f38185c.isEmpty()) {
            this.f38185c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a((u<K, V>) comparable) >= 0 || this.f38185c.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        return this.f38185c.isEmpty() ? a.a() : this.f38185c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.e == null) {
            this.e = new d();
        }
        return this.e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a((u<K, V>) comparable);
        return a2 >= 0 ? this.f38184b.get(a2).getValue() : this.f38185c.get(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a((u<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e();
        Comparable comparable = (Comparable) obj;
        int a2 = a((u<K, V>) comparable);
        if (a2 >= 0) {
            return (V) c(a2);
        }
        if (this.f38185c.isEmpty()) {
            return null;
        }
        return this.f38185c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f38184b.size() + this.f38185c.size();
    }
}
