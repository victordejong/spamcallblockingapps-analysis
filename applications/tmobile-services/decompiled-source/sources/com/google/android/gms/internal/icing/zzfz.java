package com.google.android.gms.internal.icing;

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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfz.class */
public class zzfz<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: f */
    private final int f8071f;

    /* renamed from: g */
    private List<zzge> f8072g;

    /* renamed from: h */
    private Map<K, V> f8073h;

    /* renamed from: i */
    private boolean f8074i;

    /* renamed from: j */
    private volatile zzgg f8075j;

    /* renamed from: k */
    private Map<K, V> f8076k;

    /* renamed from: l */
    private volatile zzga f8077l;

    private zzfz(int i) {
        this.f8071f = i;
        this.f8072g = Collections.emptyList();
        this.f8073h = Collections.emptyMap();
        this.f8076k = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfz(int i, zzfy zzfyVar) {
        this(i);
    }

    /* renamed from: b */
    private final int m13641b(K k) {
        int size = this.f8072g.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f8072g.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f8072g.get(i2).getKey());
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
    /* renamed from: h */
    public static <FieldDescriptorType extends zzdu<FieldDescriptorType>> zzfz<FieldDescriptorType, Object> m13637h(int i) {
        return new zzfy(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final V m13634k(int i) {
        m13627r();
        V v = (V) this.f8072g.remove(i).getValue();
        if (!this.f8073h.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m13626s().entrySet().iterator();
            this.f8072g.add(new zzge(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public final void m13627r() {
        if (this.f8074i) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: s */
    private final SortedMap<K, V> m13626s() {
        m13627r();
        if (this.f8073h.isEmpty() && !(this.f8073h instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f8073h = treeMap;
            this.f8076k = treeMap.descendingMap();
        }
        return (SortedMap) this.f8073h;
    }

    /* renamed from: a */
    public final boolean m13642a() {
        return this.f8074i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m13627r();
        if (!this.f8072g.isEmpty()) {
            this.f8072g.clear();
        }
        if (!this.f8073h.isEmpty()) {
            this.f8073h.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m13641b(comparable) >= 0 || this.f8073h.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f8075j == null) {
            this.f8075j = new zzgg(this, null);
        }
        return this.f8075j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfz)) {
            return super.equals(obj);
        }
        zzfz zzfzVar = (zzfz) obj;
        int size = size();
        if (size != zzfzVar.size()) {
            return false;
        }
        int o = m13630o();
        if (o != zzfzVar.m13630o()) {
            return entrySet().equals(zzfzVar.entrySet());
        }
        for (int i = 0; i < o; i++) {
            if (!m13635j(i).equals(zzfzVar.m13635j(i))) {
                return false;
            }
        }
        if (o != size) {
            return this.f8073h.equals(zzfzVar.f8073h);
        }
        return true;
    }

    /* renamed from: f */
    public final V put(K k, V v) {
        m13627r();
        int b = m13641b(k);
        if (b >= 0) {
            return (V) this.f8072g.get(b).setValue(v);
        }
        m13627r();
        if (this.f8072g.isEmpty() && !(this.f8072g instanceof ArrayList)) {
            this.f8072g = new ArrayList(this.f8071f);
        }
        int i = -(b + 1);
        if (i >= this.f8071f) {
            return m13626s().put(k, v);
        }
        int size = this.f8072g.size();
        int i2 = this.f8071f;
        if (size == i2) {
            zzge remove = this.f8072g.remove(i2 - 1);
            m13626s().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f8072g.add(i, new zzge(this, k, v));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int b = m13641b(comparable);
        return b >= 0 ? (V) this.f8072g.get(b).getValue() : this.f8073h.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int o = m13630o();
        int i = 0;
        for (int i2 = 0; i2 < o; i2++) {
            i += this.f8072g.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f8073h.size() > 0) {
            i3 = i + this.f8073h.hashCode();
        }
        return i3;
    }

    /* renamed from: i */
    public void mo13636i() {
        if (!this.f8074i) {
            this.f8073h = this.f8073h.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8073h);
            this.f8076k = this.f8076k.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8076k);
            this.f8074i = true;
        }
    }

    /* renamed from: j */
    public final Map.Entry<K, V> m13635j(int i) {
        return this.f8072g.get(i);
    }

    /* renamed from: o */
    public final int m13630o() {
        return this.f8072g.size();
    }

    /* renamed from: p */
    public final Iterable<Map.Entry<K, V>> m13629p() {
        return this.f8073h.isEmpty() ? zzgd.m13624a() : this.f8073h.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public final Set<Map.Entry<K, V>> m13628q() {
        if (this.f8077l == null) {
            this.f8077l = new zzga(this, null);
        }
        return this.f8077l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m13627r();
        Comparable comparable = (Comparable) obj;
        int b = m13641b(comparable);
        if (b >= 0) {
            return (V) m13634k(b);
        }
        if (this.f8073h.isEmpty()) {
            return null;
        }
        return this.f8073h.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f8072g.size() + this.f8073h.size();
    }
}
