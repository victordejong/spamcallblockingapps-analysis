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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpu.class */
public class dpu<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    private final int f47390a;

    /* renamed from: b */
    private List<dpz> f47391b;

    /* renamed from: c */
    private Map<K, V> f47392c;

    /* renamed from: d */
    private boolean f47393d;

    /* renamed from: e */
    private volatile dqb f47394e;

    /* renamed from: f */
    private Map<K, V> f47395f;

    /* renamed from: g */
    private volatile dpv f47396g;

    private dpu(int i) {
        this.f47390a = i;
        this.f47391b = Collections.emptyList();
        this.f47392c = Collections.emptyMap();
        this.f47395f = Collections.emptyMap();
    }

    public /* synthetic */ dpu(int i, dpt dptVar) {
        this(i);
    }

    /* renamed from: a */
    private final int m16049a(K k) {
        int size = this.f47391b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f47391b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f47391b.get(i2).getKey());
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
    public static <FieldDescriptorType extends dnb<FieldDescriptorType>> dpu<FieldDescriptorType, Object> m16052a(int i) {
        return new dpt(i);
    }

    /* renamed from: c */
    public final V m16043c(int i) {
        m16038f();
        V v = (V) this.f47391b.remove(i).getValue();
        if (!this.f47392c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = m16037g().entrySet().iterator();
            this.f47391b.add(new dpz(this, it2.next()));
            it2.remove();
        }
        return v;
    }

    /* renamed from: f */
    public final void m16038f() {
        if (!this.f47393d) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: g */
    private final SortedMap<K, V> m16037g() {
        m16038f();
        if (this.f47392c.isEmpty() && !(this.f47392c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f47392c = treeMap;
            this.f47395f = treeMap.descendingMap();
        }
        return (SortedMap) this.f47392c;
    }

    /* renamed from: a */
    public final V m16048a(K k, V v) {
        m16038f();
        int m16049a = m16049a((dpu<K, V>) k);
        if (m16049a >= 0) {
            return (V) this.f47391b.get(m16049a).setValue(v);
        }
        m16038f();
        if (this.f47391b.isEmpty() && !(this.f47391b instanceof ArrayList)) {
            this.f47391b = new ArrayList(this.f47390a);
        }
        int i = -(m16049a + 1);
        if (i >= this.f47390a) {
            return m16037g().put(k, v);
        }
        int size = this.f47391b.size();
        int i2 = this.f47390a;
        if (size == i2) {
            dpz remove = this.f47391b.remove(i2 - 1);
            m16037g().put((K) remove.getKey(), (V) remove.getValue());
        }
        this.f47391b.add(i, new dpz(this, k, v));
        return null;
    }

    /* renamed from: a */
    public void mo16053a() {
        if (!this.f47393d) {
            this.f47392c = this.f47392c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f47392c);
            this.f47395f = this.f47395f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f47395f);
            this.f47393d = true;
        }
    }

    /* renamed from: b */
    public final Map.Entry<K, V> m16046b(int i) {
        return this.f47391b.get(i);
    }

    /* renamed from: b */
    public final boolean m16047b() {
        return this.f47393d;
    }

    /* renamed from: c */
    public final int m16044c() {
        return this.f47391b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m16038f();
        if (!this.f47391b.isEmpty()) {
            this.f47391b.clear();
        }
        if (!this.f47392c.isEmpty()) {
            this.f47392c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m16049a((dpu<K, V>) comparable) >= 0 || this.f47392c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m16041d() {
        return this.f47392c.isEmpty() ? dpy.m16035a() : this.f47392c.entrySet();
    }

    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m16039e() {
        if (this.f47396g == null) {
            this.f47396g = new dpv(this, null);
        }
        return this.f47396g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f47394e == null) {
            this.f47394e = new dqb(this, null);
        }
        return this.f47394e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dpu)) {
            return super.equals(obj);
        }
        dpu dpuVar = (dpu) obj;
        int size = size();
        if (size != dpuVar.size()) {
            return false;
        }
        int m16044c = m16044c();
        if (m16044c != dpuVar.m16044c()) {
            return entrySet().equals(dpuVar.entrySet());
        }
        for (int i = 0; i < m16044c; i++) {
            if (!m16046b(i).equals(dpuVar.m16046b(i))) {
                return false;
            }
        }
        if (m16044c == size) {
            return true;
        }
        return this.f47392c.equals(dpuVar.f47392c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m16049a = m16049a((dpu<K, V>) comparable);
        return m16049a >= 0 ? (V) this.f47391b.get(m16049a).getValue() : this.f47392c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int m16044c = m16044c();
        int i = 0;
        for (int i2 = 0; i2 < m16044c; i2++) {
            i += this.f47391b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f47392c.size() > 0) {
            i3 = i + this.f47392c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m16048a((dpu<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m16038f();
        Comparable comparable = (Comparable) obj;
        int m16049a = m16049a((dpu<K, V>) comparable);
        if (m16049a >= 0) {
            return (V) m16043c(m16049a);
        }
        if (!this.f47392c.isEmpty()) {
            return this.f47392c.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f47391b.size() + this.f47392c.size();
    }
}
