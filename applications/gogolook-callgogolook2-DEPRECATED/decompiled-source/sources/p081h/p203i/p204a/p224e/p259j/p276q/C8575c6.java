package p081h.p203i.p204a.p224e.p259j.p276q;

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
/* renamed from: h.i.a.e.j.q.c6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c6.class */
public class C8575c6<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f19640a;

    /* renamed from: b */
    public List<C8649j6> f19641b;

    /* renamed from: c */
    public Map<K, V> f19642c;

    /* renamed from: d */
    public boolean f19643d;

    /* renamed from: e */
    public volatile C8667l6 f19644e;

    /* renamed from: f */
    public Map<K, V> f19645f;

    /* renamed from: g */
    public volatile C8602f6 f19646g;

    public C8575c6(int i) {
        this.f19640a = i;
        this.f19641b = Collections.emptyList();
        this.f19642c = Collections.emptyMap();
        this.f19645f = Collections.emptyMap();
    }

    public /* synthetic */ C8575c6(int i, C8584d6 d6Var) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends AbstractC8755v3<FieldDescriptorType>> C8575c6<FieldDescriptorType, Object> m17743c(int i) {
        return new C8584d6(i);
    }

    /* renamed from: a */
    public final int m17748a(K k) {
        int size = this.f19641b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f19641b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f19641b.get(i2).getKey());
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
    public final V m17747a(K k, V v) {
        m17738f();
        int a = m17748a((C8575c6<K, V>) k);
        if (a >= 0) {
            return (V) this.f19641b.get(a).setValue(v);
        }
        m17738f();
        if (this.f19641b.isEmpty() && !(this.f19641b instanceof ArrayList)) {
            this.f19641b = new ArrayList(this.f19640a);
        }
        int i = -(a + 1);
        if (i >= this.f19640a) {
            return m17737g().put(k, v);
        }
        int size = this.f19641b.size();
        int i2 = this.f19640a;
        if (size == i2) {
            C8649j6 remove = this.f19641b.remove(i2 - 1);
            m17737g().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f19641b.add(i, new C8649j6(this, k, v));
        return null;
    }

    /* renamed from: a */
    public final Map.Entry<K, V> m17751a(int i) {
        return this.f19641b.get(i);
    }

    /* renamed from: a */
    public final boolean m17752a() {
        return this.f19643d;
    }

    /* renamed from: b */
    public final V m17746b(int i) {
        m17738f();
        V v = (V) this.f19641b.remove(i).getValue();
        if (!this.f19642c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m17737g().entrySet().iterator();
            this.f19641b.add(new C8649j6(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: b */
    public void mo17699b() {
        if (!this.f19643d) {
            this.f19642c = this.f19642c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f19642c);
            this.f19645f = this.f19645f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f19645f);
            this.f19643d = true;
        }
    }

    /* renamed from: c */
    public final int m17744c() {
        return this.f19641b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m17738f();
        if (!this.f19641b.isEmpty()) {
            this.f19641b.clear();
        }
        if (!this.f19642c.isEmpty()) {
            this.f19642c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m17748a((C8575c6<K, V>) comparable) >= 0 || this.f19642c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m17741d() {
        return this.f19642c.isEmpty() ? C8611g6.m17624a() : this.f19642c.entrySet();
    }

    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m17739e() {
        if (this.f19646g == null) {
            this.f19646g = new C8602f6(this, null);
        }
        return this.f19646g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f19644e == null) {
            this.f19644e = new C8667l6(this, null);
        }
        return this.f19644e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8575c6)) {
            return super.equals(obj);
        }
        C8575c6 c6Var = (C8575c6) obj;
        int size = size();
        if (size != c6Var.size()) {
            return false;
        }
        int c = m17744c();
        if (c != c6Var.m17744c()) {
            return entrySet().equals(c6Var.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m17751a(i).equals(c6Var.m17751a(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f19642c.equals(c6Var.f19642c);
        }
        return true;
    }

    /* renamed from: f */
    public final void m17738f() {
        if (this.f19643d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    public final SortedMap<K, V> m17737g() {
        m17738f();
        if (this.f19642c.isEmpty() && !(this.f19642c instanceof TreeMap)) {
            this.f19642c = new TreeMap();
            this.f19645f = ((TreeMap) this.f19642c).descendingMap();
        }
        return (SortedMap) this.f19642c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m17748a((C8575c6<K, V>) comparable);
        return a >= 0 ? (V) this.f19641b.get(a).getValue() : this.f19642c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c = m17744c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f19641b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f19642c.size() > 0) {
            i3 = i + this.f19642c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m17747a((C8575c6<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m17738f();
        Comparable comparable = (Comparable) obj;
        int a = m17748a((C8575c6<K, V>) comparable);
        if (a >= 0) {
            return (V) m17746b(a);
        }
        if (this.f19642c.isEmpty()) {
            return null;
        }
        return this.f19642c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f19641b.size() + this.f19642c.size();
    }
}
