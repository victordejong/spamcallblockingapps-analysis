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
/* renamed from: com.google.android.gms.internal.measurement.u7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/u7.class */
public class C7572u7<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: d */
    private final int f34707d;

    /* renamed from: g */
    private boolean f34710g;

    /* renamed from: h */
    private volatile C7559t7 f34711h;

    /* renamed from: e */
    private List<C7533r7> f34708e = Collections.emptyList();

    /* renamed from: f */
    private Map<K, V> f34709f = Collections.emptyMap();

    /* renamed from: i */
    private Map<K, V> f34712i = Collections.emptyMap();

    /* renamed from: k */
    public final V m6868k(int i) {
        m6866m();
        V v = (V) this.f34708e.remove(i).getValue();
        if (!this.f34709f.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m6865n().entrySet().iterator();
            List<C7533r7> list = this.f34708e;
            Map.Entry<K, V> next = it.next();
            list.add(new C7533r7(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: l */
    private final int m6867l(K k) {
        int size = this.f34708e.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f34708e.get(size).m6961a());
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
            int compareTo2 = k.compareTo(this.f34708e.get(i3).m6961a());
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
    public final void m6866m() {
        if (!this.f34710g) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: n */
    private final SortedMap<K, V> m6865n() {
        m6866m();
        if (this.f34709f.isEmpty() && !(this.f34709f instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f34709f = treeMap;
            this.f34712i = treeMap.descendingMap();
        }
        return (SortedMap) this.f34709f;
    }

    /* renamed from: a */
    public void mo6878a() {
        if (!this.f34710g) {
            this.f34709f = this.f34709f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f34709f);
            this.f34712i = this.f34712i.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f34712i);
            this.f34710g = true;
        }
    }

    /* renamed from: b */
    public final boolean m6877b() {
        return this.f34710g;
    }

    /* renamed from: c */
    public final int m6876c() {
        return this.f34708e.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m6866m();
        if (!this.f34708e.isEmpty()) {
            this.f34708e.clear();
        }
        if (!this.f34709f.isEmpty()) {
            this.f34709f.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m6867l(comparable) >= 0 || this.f34709f.containsKey(comparable);
    }

    /* renamed from: d */
    public final Map.Entry<K, V> m6875d(int i) {
        return this.f34708e.get(i);
    }

    /* renamed from: e */
    public final Iterable<Map.Entry<K, V>> m6874e() {
        return this.f34709f.isEmpty() ? C7520q7.m6996a() : this.f34709f.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f34711h == null) {
            this.f34711h = new C7559t7(this, null);
        }
        return this.f34711h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7572u7)) {
            return super.equals(obj);
        }
        C7572u7 c7572u7 = (C7572u7) obj;
        int size = size();
        if (size != c7572u7.size()) {
            return false;
        }
        int m6876c = m6876c();
        if (m6876c != c7572u7.m6876c()) {
            return entrySet().equals(c7572u7.entrySet());
        }
        for (int i = 0; i < m6876c; i++) {
            if (!m6875d(i).equals(c7572u7.m6875d(i))) {
                return false;
            }
        }
        if (m6876c == size) {
            return true;
        }
        return this.f34709f.equals(c7572u7.f34709f);
    }

    /* renamed from: f */
    public final V put(K k, V v) {
        m6866m();
        int m6867l = m6867l(k);
        if (m6867l >= 0) {
            return (V) this.f34708e.get(m6867l).setValue(v);
        }
        m6866m();
        if (this.f34708e.isEmpty() && !(this.f34708e instanceof ArrayList)) {
            this.f34708e = new ArrayList(this.f34707d);
        }
        int i = -(m6867l + 1);
        if (i >= this.f34707d) {
            return m6865n().put(k, v);
        }
        int size = this.f34708e.size();
        int i2 = this.f34707d;
        if (size == i2) {
            C7533r7 remove = this.f34708e.remove(i2 - 1);
            m6865n().put((K) remove.m6961a(), (V) remove.getValue());
        }
        this.f34708e.add(i, new C7533r7(this, k, v));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m6867l = m6867l(comparable);
        return m6867l >= 0 ? (V) this.f34708e.get(m6867l).getValue() : this.f34709f.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m6876c = m6876c();
        int i = 0;
        for (int i2 = 0; i2 < m6876c; i2++) {
            i += this.f34708e.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f34709f.size() > 0) {
            i3 = i + this.f34709f.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m6866m();
        Comparable comparable = (Comparable) obj;
        int m6867l = m6867l(comparable);
        if (m6867l >= 0) {
            return (V) m6868k(m6867l);
        }
        if (!this.f34709f.isEmpty()) {
            return this.f34709f.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f34708e.size() + this.f34709f.size();
    }
}
