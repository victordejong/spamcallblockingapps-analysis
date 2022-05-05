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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzke.class */
public class zzke<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: f */
    private final int f8599f;

    /* renamed from: g */
    private List<zzkj> f8600g;

    /* renamed from: h */
    private Map<K, V> f8601h;

    /* renamed from: i */
    private boolean f8602i;

    /* renamed from: j */
    private volatile zzkl f8603j;

    /* renamed from: k */
    private Map<K, V> f8604k;

    /* renamed from: l */
    private volatile zzkf f8605l;

    private zzke(int i) {
        this.f8599f = i;
        this.f8600g = Collections.emptyList();
        this.f8601h = Collections.emptyMap();
        this.f8604k = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzke(int i, zzkd zzkdVar) {
        this(i);
    }

    /* renamed from: a */
    private final int m12157a(K k) {
        int size = this.f8600g.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f8600g.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f8600g.get(i2).getKey());
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
    /* renamed from: b */
    public static <FieldDescriptorType extends zzhr<FieldDescriptorType>> zzke<FieldDescriptorType, Object> m12156b(int i) {
        return new zzkd(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public final V m12147m(int i) {
        m12142r();
        V v = (V) this.f8600g.remove(i).getValue();
        if (!this.f8601h.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m12141s().entrySet().iterator();
            this.f8600g.add(new zzkj(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public final void m12142r() {
        if (this.f8602i) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: s */
    private final SortedMap<K, V> m12141s() {
        m12142r();
        if (this.f8601h.isEmpty() && !(this.f8601h instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f8601h = treeMap;
            this.f8604k = treeMap.descendingMap();
        }
        return (SortedMap) this.f8601h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m12142r();
        if (!this.f8600g.isEmpty()) {
            this.f8600g.clear();
        }
        if (!this.f8601h.isEmpty()) {
            this.f8601h.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m12157a(comparable) >= 0 || this.f8601h.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f8603j == null) {
            this.f8603j = new zzkl(this, null);
        }
        return this.f8603j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzke)) {
            return super.equals(obj);
        }
        zzke zzkeVar = (zzke) obj;
        int size = size();
        if (size != zzkeVar.size()) {
            return false;
        }
        int l = m12148l();
        if (l != zzkeVar.m12148l()) {
            return entrySet().equals(zzkeVar.entrySet());
        }
        for (int i = 0; i < l; i++) {
            if (!m12150j(i).equals(zzkeVar.m12150j(i))) {
                return false;
            }
        }
        if (l != size) {
            return this.f8601h.equals(zzkeVar.f8601h);
        }
        return true;
    }

    /* renamed from: f */
    public final V put(K k, V v) {
        m12142r();
        int a = m12157a(k);
        if (a >= 0) {
            return (V) this.f8600g.get(a).setValue(v);
        }
        m12142r();
        if (this.f8600g.isEmpty() && !(this.f8600g instanceof ArrayList)) {
            this.f8600g = new ArrayList(this.f8599f);
        }
        int i = -(a + 1);
        if (i >= this.f8599f) {
            return m12141s().put(k, v);
        }
        int size = this.f8600g.size();
        int i2 = this.f8599f;
        if (size == i2) {
            zzkj remove = this.f8600g.remove(i2 - 1);
            m12141s().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f8600g.add(i, new zzkj(this, k, v));
        return null;
    }

    /* renamed from: g */
    public void mo12153g() {
        if (!this.f8602i) {
            this.f8601h = this.f8601h.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8601h);
            this.f8604k = this.f8604k.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8604k);
            this.f8602i = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m12157a(comparable);
        return a >= 0 ? (V) this.f8600g.get(a).getValue() : this.f8601h.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int l = m12148l();
        int i = 0;
        for (int i2 = 0; i2 < l; i2++) {
            i += this.f8600g.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f8601h.size() > 0) {
            i3 = i + this.f8601h.hashCode();
        }
        return i3;
    }

    /* renamed from: j */
    public final Map.Entry<K, V> m12150j(int i) {
        return this.f8600g.get(i);
    }

    /* renamed from: k */
    public final boolean m12149k() {
        return this.f8602i;
    }

    /* renamed from: l */
    public final int m12148l() {
        return this.f8600g.size();
    }

    /* renamed from: o */
    public final Iterable<Map.Entry<K, V>> m12145o() {
        return this.f8601h.isEmpty() ? zzki.m12139a() : this.f8601h.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public final Set<Map.Entry<K, V>> m12143q() {
        if (this.f8605l == null) {
            this.f8605l = new zzkf(this, null);
        }
        return this.f8605l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m12142r();
        Comparable comparable = (Comparable) obj;
        int a = m12157a(comparable);
        if (a >= 0) {
            return (V) m12147m(a);
        }
        if (this.f8601h.isEmpty()) {
            return null;
        }
        return this.f8601h.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f8600g.size() + this.f8601h.size();
    }
}
