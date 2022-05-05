package p081h.p203i.p204a.p224e.p259j.p269j;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* renamed from: h.i.a.e.j.j.n3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n3.class */
public class C7876n3<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f18442a;

    /* renamed from: b */
    public List<C7933u3> f18443b;

    /* renamed from: c */
    public Map<K, V> f18444c;

    /* renamed from: d */
    public boolean f18445d;

    /* renamed from: e */
    public volatile C7947w3 f18446e;

    /* renamed from: f */
    public Map<K, V> f18447f;

    /* renamed from: g */
    public volatile C7900q3 f18448g;

    public C7876n3(int i) {
        this.f18442a = i;
        this.f18443b = Collections.emptyList();
        this.f18444c = Collections.emptyMap();
        this.f18447f = Collections.emptyMap();
    }

    public /* synthetic */ C7876n3(int i, C7886o3 o3Var) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends AbstractC7809g1<FieldDescriptorType>> C7876n3<FieldDescriptorType, Object> m19134c(int i) {
        return new C7886o3(i);
    }

    /* renamed from: a */
    public final int m19139a(K k) {
        int size = this.f18443b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f18443b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f18443b.get(i2).getKey());
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
    public final V m19138a(K k, V v) {
        m19129f();
        int a = m19139a((C7876n3<K, V>) k);
        if (a >= 0) {
            return (V) this.f18443b.get(a).setValue(v);
        }
        m19129f();
        if (this.f18443b.isEmpty() && !(this.f18443b instanceof ArrayList)) {
            this.f18443b = new ArrayList(this.f18442a);
        }
        int i = -(a + 1);
        if (i >= this.f18442a) {
            return m19128g().put(k, v);
        }
        int size = this.f18443b.size();
        int i2 = this.f18442a;
        if (size == i2) {
            C7933u3 remove = this.f18443b.remove(i2 - 1);
            m19128g().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f18443b.add(i, new C7933u3(this, k, v));
        return null;
    }

    /* renamed from: a */
    public final Map.Entry<K, V> m19142a(int i) {
        return this.f18443b.get(i);
    }

    /* renamed from: a */
    public final boolean m19143a() {
        return this.f18445d;
    }

    /* renamed from: b */
    public final V m19137b(int i) {
        m19129f();
        V v = (V) this.f18443b.remove(i).getValue();
        if (!this.f18444c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m19128g().entrySet().iterator();
            this.f18443b.add(new C7933u3(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: b */
    public void mo19113b() {
        if (!this.f18445d) {
            this.f18444c = this.f18444c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f18444c);
            this.f18447f = this.f18447f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f18447f);
            this.f18445d = true;
        }
    }

    /* renamed from: c */
    public final int m19135c() {
        return this.f18443b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m19129f();
        if (!this.f18443b.isEmpty()) {
            this.f18443b.clear();
        }
        if (!this.f18444c.isEmpty()) {
            this.f18444c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m19139a((C7876n3<K, V>) comparable) >= 0 || this.f18444c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m19132d() {
        return this.f18444c.isEmpty() ? C7907r3.m19046a() : this.f18444c.entrySet();
    }

    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m19130e() {
        if (this.f18448g == null) {
            this.f18448g = new C7900q3(this, null);
        }
        return this.f18448g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f18446e == null) {
            this.f18446e = new C7947w3(this, null);
        }
        return this.f18446e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7876n3)) {
            return super.equals(obj);
        }
        C7876n3 n3Var = (C7876n3) obj;
        int size = size();
        if (size != n3Var.size()) {
            return false;
        }
        int c = m19135c();
        if (c != n3Var.m19135c()) {
            return entrySet().equals(n3Var.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m19142a(i).equals(n3Var.m19142a(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f18444c.equals(n3Var.f18444c);
        }
        return true;
    }

    /* renamed from: f */
    public final void m19129f() {
        if (this.f18445d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    public final SortedMap<K, V> m19128g() {
        m19129f();
        if (this.f18444c.isEmpty() && !(this.f18444c instanceof TreeMap)) {
            this.f18444c = new TreeMap();
            this.f18447f = ((TreeMap) this.f18444c).descendingMap();
        }
        return (SortedMap) this.f18444c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m19139a((C7876n3<K, V>) comparable);
        return a >= 0 ? (V) this.f18443b.get(a).getValue() : this.f18444c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c = m19135c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f18443b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f18444c.size() > 0) {
            i3 = i + this.f18444c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m19138a((C7876n3<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m19129f();
        Comparable comparable = (Comparable) obj;
        int a = m19139a((C7876n3<K, V>) comparable);
        if (a >= 0) {
            return (V) m19137b(a);
        }
        if (this.f18444c.isEmpty()) {
            return null;
        }
        return this.f18444c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f18443b.size() + this.f18444c.size();
    }
}
