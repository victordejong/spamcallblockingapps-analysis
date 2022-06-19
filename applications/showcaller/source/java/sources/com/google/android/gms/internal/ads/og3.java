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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/og3.class */
public class og3<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: d */
    private final int f27532d;

    /* renamed from: g */
    private boolean f27535g;

    /* renamed from: h */
    private volatile mg3 f27536h;

    /* renamed from: e */
    private List<kg3> f27533e = Collections.emptyList();

    /* renamed from: f */
    private Map<K, V> f27534f = Collections.emptyMap();

    /* renamed from: i */
    private Map<K, V> f27537i = Collections.emptyMap();

    /* renamed from: k */
    public final V m12661k(int i) {
        m12659m();
        V v = (V) this.f27533e.remove(i).getValue();
        if (!this.f27534f.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m12658n().entrySet().iterator();
            List<kg3> list = this.f27533e;
            Map.Entry<K, V> next = it.next();
            list.add(new kg3(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: l */
    private final int m12660l(K k) {
        int size = this.f27533e.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f27533e.get(size).m13912a());
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
            int compareTo2 = k.compareTo(this.f27533e.get(i3).m13912a());
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
    public final void m12659m() {
        if (!this.f27535g) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: n */
    private final SortedMap<K, V> m12658n() {
        m12659m();
        if (this.f27534f.isEmpty() && !(this.f27534f instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f27534f = treeMap;
            this.f27537i = treeMap.descendingMap();
        }
        return (SortedMap) this.f27534f;
    }

    /* renamed from: a */
    public void mo12671a() {
        if (!this.f27535g) {
            this.f27534f = this.f27534f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f27534f);
            this.f27537i = this.f27537i.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f27537i);
            this.f27535g = true;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m12659m();
        if (!this.f27533e.isEmpty()) {
            this.f27533e.clear();
        }
        if (!this.f27534f.isEmpty()) {
            this.f27534f.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m12660l(comparable) >= 0 || this.f27534f.containsKey(comparable);
    }

    /* renamed from: d */
    public final boolean m12668d() {
        return this.f27535g;
    }

    /* renamed from: e */
    public final int m12667e() {
        return this.f27533e.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f27536h == null) {
            this.f27536h = new mg3(this, null);
        }
        return this.f27536h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof og3)) {
            return super.equals(obj);
        }
        og3 og3Var = (og3) obj;
        int size = size();
        if (size != og3Var.size()) {
            return false;
        }
        int m12667e = m12667e();
        if (m12667e != og3Var.m12667e()) {
            return entrySet().equals(og3Var.entrySet());
        }
        for (int i = 0; i < m12667e; i++) {
            if (!m12666f(i).equals(og3Var.m12666f(i))) {
                return false;
            }
        }
        if (m12667e == size) {
            return true;
        }
        return this.f27534f.equals(og3Var.f27534f);
    }

    /* renamed from: f */
    public final Map.Entry<K, V> m12666f(int i) {
        return this.f27533e.get(i);
    }

    /* renamed from: g */
    public final Iterable<Map.Entry<K, V>> m12665g() {
        return this.f27534f.isEmpty() ? jg3.m14129b() : this.f27534f.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m12660l = m12660l(comparable);
        return m12660l >= 0 ? (V) this.f27533e.get(m12660l).getValue() : this.f27534f.get(comparable);
    }

    /* renamed from: h */
    public final V put(K k, V v) {
        m12659m();
        int m12660l = m12660l(k);
        if (m12660l >= 0) {
            return (V) this.f27533e.get(m12660l).setValue(v);
        }
        m12659m();
        if (this.f27533e.isEmpty() && !(this.f27533e instanceof ArrayList)) {
            this.f27533e = new ArrayList(this.f27532d);
        }
        int i = -(m12660l + 1);
        if (i >= this.f27532d) {
            return m12658n().put(k, v);
        }
        int size = this.f27533e.size();
        int i2 = this.f27532d;
        if (size == i2) {
            kg3 remove = this.f27533e.remove(i2 - 1);
            m12658n().put((K) remove.m13912a(), (V) remove.getValue());
        }
        this.f27533e.add(i, new kg3(this, k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m12667e = m12667e();
        int i = 0;
        for (int i2 = 0; i2 < m12667e; i2++) {
            i += this.f27533e.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f27534f.size() > 0) {
            i3 = i + this.f27534f.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m12659m();
        Comparable comparable = (Comparable) obj;
        int m12660l = m12660l(comparable);
        if (m12660l >= 0) {
            return (V) m12661k(m12660l);
        }
        if (!this.f27534f.isEmpty()) {
            return this.f27534f.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f27533e.size() + this.f27534f.size();
    }
}
