package p081h.p203i.p204a.p224e.p259j.p271l;

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
/* renamed from: h.i.a.e.j.l.ob */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ob.class */
public class C8288ob<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f19108a;

    /* renamed from: b */
    public List<C8373tb> f19109b;

    /* renamed from: c */
    public Map<K, V> f19110c;

    /* renamed from: d */
    public boolean f19111d;

    /* renamed from: e */
    public volatile C8411vb f19112e;

    /* renamed from: f */
    public Map<K, V> f19113f;

    /* renamed from: g */
    public volatile C8304pb f19114g;

    public C8288ob(int i) {
        this.f19108a = i;
        this.f19109b = Collections.emptyList();
        this.f19110c = Collections.emptyMap();
        this.f19113f = Collections.emptyMap();
    }

    public /* synthetic */ C8288ob(int i, C8266nb nbVar) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends AbstractC8127g9<FieldDescriptorType>> C8288ob<FieldDescriptorType, Object> m18227c(int i) {
        return new C8266nb(i);
    }

    /* renamed from: a */
    public final int m18233a(K k) {
        int size = this.f19109b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f19109b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f19109b.get(i2).getKey());
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
    public final V m18232a(K k, V v) {
        m18222f();
        int a = m18233a((C8288ob<K, V>) k);
        if (a >= 0) {
            return (V) this.f19109b.get(a).setValue(v);
        }
        m18222f();
        if (this.f19109b.isEmpty() && !(this.f19109b instanceof ArrayList)) {
            this.f19109b = new ArrayList(this.f19108a);
        }
        int i = -(a + 1);
        if (i >= this.f19108a) {
            return m18221g().put(k, v);
        }
        int size = this.f19109b.size();
        int i2 = this.f19108a;
        if (size == i2) {
            C8373tb remove = this.f19109b.remove(i2 - 1);
            m18221g().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f19109b.add(i, new C8373tb(this, k, v));
        return null;
    }

    /* renamed from: a */
    public final Map.Entry<K, V> m18236a(int i) {
        return this.f19109b.get(i);
    }

    /* renamed from: a */
    public final boolean m18237a() {
        return this.f19111d;
    }

    /* renamed from: b */
    public final V m18230b(int i) {
        m18222f();
        V v = (V) this.f19109b.remove(i).getValue();
        if (!this.f19110c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m18221g().entrySet().iterator();
            this.f19109b.add(new C8373tb(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: b */
    public void mo18231b() {
        if (!this.f19111d) {
            this.f19110c = this.f19110c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f19110c);
            this.f19113f = this.f19113f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f19113f);
            this.f19111d = true;
        }
    }

    /* renamed from: c */
    public final int m18228c() {
        return this.f19109b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m18222f();
        if (!this.f19109b.isEmpty()) {
            this.f19109b.clear();
        }
        if (!this.f19110c.isEmpty()) {
            this.f19110c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m18233a((C8288ob<K, V>) comparable) >= 0 || this.f19110c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m18225d() {
        return this.f19110c.isEmpty() ? C8355sb.m18169a() : this.f19110c.entrySet();
    }

    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m18223e() {
        if (this.f19114g == null) {
            this.f19114g = new C8304pb(this, null);
        }
        return this.f19114g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f19112e == null) {
            this.f19112e = new C8411vb(this, null);
        }
        return this.f19112e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8288ob)) {
            return super.equals(obj);
        }
        C8288ob obVar = (C8288ob) obj;
        int size = size();
        if (size != obVar.size()) {
            return false;
        }
        int c = m18228c();
        if (c != obVar.m18228c()) {
            return entrySet().equals(obVar.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m18236a(i).equals(obVar.m18236a(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f19110c.equals(obVar.f19110c);
        }
        return true;
    }

    /* renamed from: f */
    public final void m18222f() {
        if (this.f19111d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    public final SortedMap<K, V> m18221g() {
        m18222f();
        if (this.f19110c.isEmpty() && !(this.f19110c instanceof TreeMap)) {
            this.f19110c = new TreeMap();
            this.f19113f = ((TreeMap) this.f19110c).descendingMap();
        }
        return (SortedMap) this.f19110c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m18233a((C8288ob<K, V>) comparable);
        return a >= 0 ? (V) this.f19109b.get(a).getValue() : this.f19110c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c = m18228c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f19109b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f19110c.size() > 0) {
            i3 = i + this.f19110c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m18232a((C8288ob<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m18222f();
        Comparable comparable = (Comparable) obj;
        int a = m18233a((C8288ob<K, V>) comparable);
        if (a >= 0) {
            return (V) m18230b(a);
        }
        if (this.f19110c.isEmpty()) {
            return null;
        }
        return this.f19110c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f19109b.size() + this.f19110c.size();
    }
}
