package com.google.android.gms.internal.measurement;

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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.m7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/m7.class */
public class C2150m7<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: b */
    private final int f9792b;

    /* renamed from: e */
    private boolean f9795e;

    /* renamed from: f */
    private volatile C2146l7 f9796f;

    /* renamed from: c */
    private List<C2135j7> f9793c = Collections.emptyList();

    /* renamed from: d */
    private Map<K, V> f9794d = Collections.emptyMap();

    /* renamed from: g */
    private Map<K, V> f9797g = Collections.emptyMap();

    /* synthetic */ C2150m7(int i, f7 f7Var) {
        this.f9792b = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final V m4249k(int i) {
        m4247m();
        V v = (V) this.f9793c.remove(i).getValue();
        if (!this.f9794d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m4246n().entrySet().iterator();
            List<C2135j7> list = this.f9793c;
            Map.Entry<K, V> next = it.next();
            list.add(new C2135j7(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: l */
    private final int m4248l(K k) {
        int size = this.f9793c.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f9793c.get(size).m4275a());
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
            int compareTo2 = k.compareTo(this.f9793c.get(i3).m4275a());
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public final void m4247m() {
        if (this.f9795e) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: n */
    private final SortedMap<K, V> m4246n() {
        m4247m();
        if (this.f9794d.isEmpty() && !(this.f9794d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f9794d = treeMap;
            this.f9797g = treeMap.descendingMap();
        }
        return (SortedMap) this.f9794d;
    }

    /* renamed from: a */
    public void m4259a() {
        if (!this.f9795e) {
            this.f9794d = this.f9794d.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f9794d);
            this.f9797g = this.f9797g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f9797g);
            this.f9795e = true;
        }
    }

    /* renamed from: b */
    public final boolean m4258b() {
        return this.f9795e;
    }

    /* renamed from: c */
    public final int m4257c() {
        return this.f9793c.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m4247m();
        if (!this.f9793c.isEmpty()) {
            this.f9793c.clear();
        }
        if (!this.f9794d.isEmpty()) {
            this.f9794d.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m4248l(comparable) >= 0 || this.f9794d.containsKey(comparable);
    }

    /* renamed from: d */
    public final Map.Entry<K, V> m4256d(int i) {
        return this.f9793c.get(i);
    }

    /* renamed from: e */
    public final Iterable<Map.Entry<K, V>> m4255e() {
        return this.f9794d.isEmpty() ? C2131i7.m4319a() : this.f9794d.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f9796f == null) {
            this.f9796f = new C2146l7(this, null);
        }
        return this.f9796f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2150m7)) {
            return super.equals(obj);
        }
        C2150m7 m7Var = (C2150m7) obj;
        int size = size();
        if (size != m7Var.size()) {
            return false;
        }
        int c = m4257c();
        if (c != m7Var.m4257c()) {
            return entrySet().equals(m7Var.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m4256d(i).equals(m7Var.m4256d(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f9794d.equals(m7Var.f9794d);
        }
        return true;
    }

    /* renamed from: f */
    public final V put(K k, V v) {
        m4247m();
        int l = m4248l(k);
        if (l >= 0) {
            return (V) this.f9793c.get(l).setValue(v);
        }
        m4247m();
        if (this.f9793c.isEmpty() && !(this.f9793c instanceof ArrayList)) {
            this.f9793c = new ArrayList(this.f9792b);
        }
        int i = -(l + 1);
        if (i >= this.f9792b) {
            return m4246n().put(k, v);
        }
        int size = this.f9793c.size();
        int i2 = this.f9792b;
        if (size == i2) {
            C2135j7 remove = this.f9793c.remove(i2 - 1);
            m4246n().put((K) remove.m4275a(), (V) remove.getValue());
        }
        this.f9793c.add(i, new C2135j7(this, k, v));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int l = m4248l(comparable);
        return l >= 0 ? (V) this.f9793c.get(l).getValue() : this.f9794d.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int c = m4257c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f9793c.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f9794d.size() > 0) {
            i3 = i + this.f9794d.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m4247m();
        Comparable comparable = (Comparable) obj;
        int l = m4248l(comparable);
        if (l >= 0) {
            return (V) m4249k(l);
        }
        if (this.f9794d.isEmpty()) {
            return null;
        }
        return this.f9794d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f9793c.size() + this.f9794d.size();
    }
}
