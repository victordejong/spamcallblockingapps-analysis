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
/* renamed from: com.google.android.gms.internal.measurement.ik */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ik.class */
public class C13579ik<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    private final int f50843a;

    /* renamed from: d */
    private boolean f50846d;

    /* renamed from: e */
    private volatile C13578ij f50847e;

    /* renamed from: b */
    private List<C13576ih> f50844b = Collections.emptyList();

    /* renamed from: c */
    private Map<K, V> f50845c = Collections.emptyMap();

    /* renamed from: f */
    private Map<K, V> f50848f = Collections.emptyMap();

    /* renamed from: a */
    private final int m12584a(K k) {
        int size = this.f50844b.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f50844b.get(size).f50835a);
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
            int compareTo2 = k.compareTo(this.f50844b.get(i3).f50835a);
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

    /* renamed from: b */
    public final V m12581b(int i) {
        m12576e();
        V v = (V) this.f50844b.remove(i).getValue();
        if (!this.f50845c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = m12575f().entrySet().iterator();
            List<C13576ih> list = this.f50844b;
            Map.Entry<K, V> next = it2.next();
            list.add(new C13576ih(this, next.getKey(), next.getValue()));
            it2.remove();
        }
        return v;
    }

    /* renamed from: e */
    public final void m12576e() {
        if (!this.f50846d) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: f */
    private final SortedMap<K, V> m12575f() {
        m12576e();
        if (this.f50845c.isEmpty() && !(this.f50845c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f50845c = treeMap;
            this.f50848f = treeMap.descendingMap();
        }
        return (SortedMap) this.f50845c;
    }

    /* renamed from: a */
    public final V m12583a(K k, V v) {
        m12576e();
        int m12584a = m12584a((C13579ik<K, V>) k);
        if (m12584a >= 0) {
            return (V) this.f50844b.get(m12584a).setValue(v);
        }
        m12576e();
        if (this.f50844b.isEmpty() && !(this.f50844b instanceof ArrayList)) {
            this.f50844b = new ArrayList(this.f50843a);
        }
        int i = -(m12584a + 1);
        if (i >= this.f50843a) {
            return m12575f().put(k, v);
        }
        int size = this.f50844b.size();
        int i2 = this.f50843a;
        if (size == i2) {
            C13576ih remove = this.f50844b.remove(i2 - 1);
            m12575f().put((K) remove.f50835a, (V) remove.getValue());
        }
        this.f50844b.add(i, new C13576ih(this, k, v));
        return null;
    }

    /* renamed from: a */
    public final Map.Entry<K, V> m12587a(int i) {
        return this.f50844b.get(i);
    }

    /* renamed from: a */
    public void mo12588a() {
        if (!this.f50846d) {
            this.f50845c = this.f50845c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f50845c);
            this.f50848f = this.f50848f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f50848f);
            this.f50846d = true;
        }
    }

    /* renamed from: b */
    public final boolean m12582b() {
        return this.f50846d;
    }

    /* renamed from: c */
    public final int m12579c() {
        return this.f50844b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m12576e();
        if (!this.f50844b.isEmpty()) {
            this.f50844b.clear();
        }
        if (!this.f50845c.isEmpty()) {
            this.f50845c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m12584a((C13579ik<K, V>) comparable) >= 0 || this.f50845c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m12577d() {
        return this.f50845c.isEmpty() ? C13575ig.m12592a() : this.f50845c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f50847e == null) {
            this.f50847e = new C13578ij(this, null);
        }
        return this.f50847e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13579ik)) {
            return super.equals(obj);
        }
        C13579ik c13579ik = (C13579ik) obj;
        int size = size();
        if (size != c13579ik.size()) {
            return false;
        }
        int m12579c = m12579c();
        if (m12579c != c13579ik.m12579c()) {
            return entrySet().equals(c13579ik.entrySet());
        }
        for (int i = 0; i < m12579c; i++) {
            if (!m12587a(i).equals(c13579ik.m12587a(i))) {
                return false;
            }
        }
        if (m12579c == size) {
            return true;
        }
        return this.f50845c.equals(c13579ik.f50845c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m12584a = m12584a((C13579ik<K, V>) comparable);
        return m12584a >= 0 ? (V) this.f50844b.get(m12584a).getValue() : this.f50845c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m12579c = m12579c();
        int i = 0;
        for (int i2 = 0; i2 < m12579c; i2++) {
            i += this.f50844b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f50845c.size() > 0) {
            i3 = i + this.f50845c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object put(Object obj, Object obj2) {
        return m12583a((C13579ik<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m12576e();
        Comparable comparable = (Comparable) obj;
        int m12584a = m12584a((C13579ik<K, V>) comparable);
        if (m12584a >= 0) {
            return (V) m12581b(m12584a);
        }
        if (!this.f50845c.isEmpty()) {
            return this.f50845c.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f50844b.size() + this.f50845c.size();
    }
}
