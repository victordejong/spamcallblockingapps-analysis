package com.google.android.gms.internal.ads;

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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/re2.class */
public class re2<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: b */
    private final int f8331b;

    /* renamed from: e */
    private boolean f8334e;

    /* renamed from: f */
    private volatile qe2 f8335f;

    /* renamed from: c */
    private List<oe2> f8332c = Collections.emptyList();

    /* renamed from: d */
    private Map<K, V> f8333d = Collections.emptyMap();

    /* renamed from: g */
    private Map<K, V> f8336g = Collections.emptyMap();

    /* renamed from: k */
    public final V m5969k(int i) {
        m5967m();
        V v = (V) this.f8332c.remove(i).getValue();
        if (!this.f8333d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m5966n().entrySet().iterator();
            List<oe2> list = this.f8332c;
            Map.Entry<K, V> next = it.next();
            list.add(new oe2(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: l */
    private final int m5968l(K k) {
        int size = this.f8332c.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f8332c.get(size).m6336a());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
            i = size;
            i2 = 0;
        }
        while (i2 <= i) {
            int i3 = (i2 + i) / 2;
            int compareTo2 = k.compareTo(this.f8332c.get(i3).m6336a());
            if (compareTo2 < 0) {
                i = i3 - 1;
            } else if (compareTo2 <= 0) {
                return i3;
            } else {
                i2 = i3 + 1;
            }
        }
        return -(i2 + 1);
    }

    /* renamed from: m */
    public final void m5967m() {
        if (!this.f8334e) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: n */
    private final SortedMap<K, V> m5966n() {
        m5967m();
        if (this.f8333d.isEmpty() && !(this.f8333d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f8333d = treeMap;
            this.f8336g = treeMap.descendingMap();
        }
        return (SortedMap) this.f8333d;
    }

    /* renamed from: a */
    public void m5979a() {
        if (!this.f8334e) {
            this.f8333d = this.f8333d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8333d);
            this.f8336g = this.f8336g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8336g);
            this.f8334e = true;
        }
    }

    /* renamed from: b */
    public final boolean m5978b() {
        return this.f8334e;
    }

    /* renamed from: c */
    public final int m5977c() {
        return this.f8332c.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m5967m();
        if (!this.f8332c.isEmpty()) {
            this.f8332c.clear();
        }
        if (!this.f8333d.isEmpty()) {
            this.f8333d.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m5968l(comparable) >= 0 || this.f8333d.containsKey(comparable);
    }

    /* renamed from: d */
    public final Map.Entry<K, V> m5976d(int i) {
        return this.f8332c.get(i);
    }

    /* renamed from: e */
    public final Iterable<Map.Entry<K, V>> m5975e() {
        return this.f8333d.isEmpty() ? ne2.m6437a() : this.f8333d.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f8335f == null) {
            this.f8335f = new qe2(this, null);
        }
        return this.f8335f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof re2)) {
            return super.equals(obj);
        }
        re2 re2Var = (re2) obj;
        int size = size();
        if (size != re2Var.size()) {
            return false;
        }
        int m5977c = m5977c();
        if (m5977c != re2Var.m5977c()) {
            return entrySet().equals(re2Var.entrySet());
        }
        for (int i = 0; i < m5977c; i++) {
            if (!m5976d(i).equals(re2Var.m5976d(i))) {
                return false;
            }
        }
        if (m5977c == size) {
            return true;
        }
        return this.f8333d.equals(re2Var.f8333d);
    }

    /* renamed from: f */
    public final V put(K k, V v) {
        m5967m();
        int m5968l = m5968l(k);
        if (m5968l >= 0) {
            return (V) this.f8332c.get(m5968l).setValue(v);
        }
        m5967m();
        if (this.f8332c.isEmpty() && !(this.f8332c instanceof ArrayList)) {
            this.f8332c = new ArrayList(this.f8331b);
        }
        int i = -(m5968l + 1);
        if (i >= this.f8331b) {
            return m5966n().put(k, v);
        }
        int size = this.f8332c.size();
        int i2 = this.f8331b;
        if (size == i2) {
            oe2 remove = this.f8332c.remove(i2 - 1);
            m5966n().put((K) remove.m6336a(), (V) remove.getValue());
        }
        this.f8332c.add(i, new oe2(this, k, v));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m5968l = m5968l(comparable);
        return m5968l >= 0 ? (V) this.f8332c.get(m5968l).getValue() : this.f8333d.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m5977c = m5977c();
        int i = 0;
        for (int i2 = 0; i2 < m5977c; i2++) {
            i += this.f8332c.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f8333d.size() > 0) {
            i3 = i + this.f8333d.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m5967m();
        Comparable comparable = (Comparable) obj;
        int m5968l = m5968l(comparable);
        if (m5968l >= 0) {
            return (V) m5969k(m5968l);
        }
        if (!this.f8333d.isEmpty()) {
            return this.f8333d.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f8332c.size() + this.f8333d.size();
    }
}
