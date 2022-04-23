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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpu.class */
public class dpu<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final int f27083a;

    /* renamed from: b  reason: collision with root package name */
    private List<dpz> f27084b;

    /* renamed from: c  reason: collision with root package name */
    private Map<K, V> f27085c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f27086d;
    private volatile dqb e;
    private Map<K, V> f;
    private volatile dpv g;

    private dpu(int i) {
        this.f27083a = i;
        this.f27084b = Collections.emptyList();
        this.f27085c = Collections.emptyMap();
        this.f = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dpu(int i, dpt dptVar) {
        this(i);
    }

    private final int a(K k) {
        int size = this.f27084b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f27084b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f27084b.get(i2).getKey());
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
    public static <FieldDescriptorType extends dnb<FieldDescriptorType>> dpu<FieldDescriptorType, Object> a(int i) {
        return new dpt(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V c(int i) {
        f();
        V v = (V) this.f27084b.remove(i).getValue();
        if (!this.f27085c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = g().entrySet().iterator();
            this.f27084b.add(new dpz(this, it2.next()));
            it2.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        if (this.f27086d) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> g() {
        f();
        if (this.f27085c.isEmpty() && !(this.f27085c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f27085c = treeMap;
            this.f = treeMap.descendingMap();
        }
        return (SortedMap) this.f27085c;
    }

    public final V a(K k, V v) {
        f();
        int a2 = a((dpu<K, V>) k);
        if (a2 >= 0) {
            return (V) this.f27084b.get(a2).setValue(v);
        }
        f();
        if (this.f27084b.isEmpty() && !(this.f27084b instanceof ArrayList)) {
            this.f27084b = new ArrayList(this.f27083a);
        }
        int i = -(a2 + 1);
        if (i >= this.f27083a) {
            return g().put(k, v);
        }
        int size = this.f27084b.size();
        int i2 = this.f27083a;
        if (size == i2) {
            dpz remove = this.f27084b.remove(i2 - 1);
            g().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f27084b.add(i, new dpz(this, k, v));
        return null;
    }

    public void a() {
        if (!this.f27086d) {
            this.f27085c = this.f27085c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f27085c);
            this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
            this.f27086d = true;
        }
    }

    public final Map.Entry<K, V> b(int i) {
        return this.f27084b.get(i);
    }

    public final boolean b() {
        return this.f27086d;
    }

    public final int c() {
        return this.f27084b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
        if (!this.f27084b.isEmpty()) {
            this.f27084b.clear();
        }
        if (!this.f27085c.isEmpty()) {
            this.f27085c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a((dpu<K, V>) comparable) >= 0 || this.f27085c.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        return this.f27085c.isEmpty() ? dpy.a() : this.f27085c.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> e() {
        if (this.g == null) {
            this.g = new dpv(this, null);
        }
        return this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.e == null) {
            this.e = new dqb(this, null);
        }
        return this.e;
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
        int c2 = c();
        if (c2 != dpuVar.c()) {
            return entrySet().equals(dpuVar.entrySet());
        }
        for (int i = 0; i < c2; i++) {
            if (!b(i).equals(dpuVar.b(i))) {
                return false;
            }
        }
        if (c2 != size) {
            return this.f27085c.equals(dpuVar.f27085c);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a((dpu<K, V>) comparable);
        return a2 >= 0 ? (V) this.f27084b.get(a2).getValue() : this.f27085c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c2 = c();
        int i = 0;
        for (int i2 = 0; i2 < c2; i2++) {
            i += this.f27084b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f27085c.size() > 0) {
            i3 = i + this.f27085c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a((dpu<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int a2 = a((dpu<K, V>) comparable);
        if (a2 >= 0) {
            return (V) c(a2);
        }
        if (this.f27085c.isEmpty()) {
            return null;
        }
        return this.f27085c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f27084b.size() + this.f27085c.size();
    }
}
