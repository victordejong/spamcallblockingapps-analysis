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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ik.class */
public class ik<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final int f29128a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29131d;
    private volatile ij e;

    /* renamed from: b  reason: collision with root package name */
    private List<ih> f29129b = Collections.emptyList();

    /* renamed from: c  reason: collision with root package name */
    private Map<K, V> f29130c = Collections.emptyMap();
    private Map<K, V> f = Collections.emptyMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ik(int i, id idVar) {
        this.f29128a = i;
    }

    private final int a(K k) {
        int size = this.f29129b.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f29129b.get(size).f29120a);
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
            int compareTo2 = k.compareTo(this.f29129b.get(i3).f29120a);
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
    public final V b(int i) {
        e();
        V v = (V) this.f29129b.remove(i).getValue();
        if (!this.f29130c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it2 = f().entrySet().iterator();
            List<ih> list = this.f29129b;
            Map.Entry<K, V> next = it2.next();
            list.add(new ih(this, next.getKey(), next.getValue()));
            it2.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        if (this.f29131d) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> f() {
        e();
        if (this.f29130c.isEmpty() && !(this.f29130c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f29130c = treeMap;
            this.f = treeMap.descendingMap();
        }
        return (SortedMap) this.f29130c;
    }

    public final V a(K k, V v) {
        e();
        int a2 = a((ik<K, V>) k);
        if (a2 >= 0) {
            return (V) this.f29129b.get(a2).setValue(v);
        }
        e();
        if (this.f29129b.isEmpty() && !(this.f29129b instanceof ArrayList)) {
            this.f29129b = new ArrayList(this.f29128a);
        }
        int i = -(a2 + 1);
        if (i >= this.f29128a) {
            return f().put(k, v);
        }
        int size = this.f29129b.size();
        int i2 = this.f29128a;
        if (size == i2) {
            ih remove = this.f29129b.remove(i2 - 1);
            f().put((K) remove.f29120a, (V) remove.getValue());
        }
        this.f29129b.add(i, new ih(this, k, v));
        return null;
    }

    public final Map.Entry<K, V> a(int i) {
        return this.f29129b.get(i);
    }

    public void a() {
        if (!this.f29131d) {
            this.f29130c = this.f29130c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f29130c);
            this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
            this.f29131d = true;
        }
    }

    public final boolean b() {
        return this.f29131d;
    }

    public final int c() {
        return this.f29129b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        e();
        if (!this.f29129b.isEmpty()) {
            this.f29129b.clear();
        }
        if (!this.f29130c.isEmpty()) {
            this.f29130c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a((ik<K, V>) comparable) >= 0 || this.f29130c.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        return this.f29130c.isEmpty() ? ig.a() : this.f29130c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.e == null) {
            this.e = new ij(this, null);
        }
        return this.e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ik)) {
            return super.equals(obj);
        }
        ik ikVar = (ik) obj;
        int size = size();
        if (size != ikVar.size()) {
            return false;
        }
        int c2 = c();
        if (c2 != ikVar.c()) {
            return entrySet().equals(ikVar.entrySet());
        }
        for (int i = 0; i < c2; i++) {
            if (!a(i).equals(ikVar.a(i))) {
                return false;
            }
        }
        if (c2 != size) {
            return this.f29130c.equals(ikVar.f29130c);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a((ik<K, V>) comparable);
        return a2 >= 0 ? (V) this.f29129b.get(a2).getValue() : this.f29130c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int c2 = c();
        int i = 0;
        for (int i2 = 0; i2 < c2; i2++) {
            i += this.f29129b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f29130c.size() > 0) {
            i3 = i + this.f29130c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object put(Object obj, Object obj2) {
        return a((ik<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        e();
        Comparable comparable = (Comparable) obj;
        int a2 = a((ik<K, V>) comparable);
        if (a2 >= 0) {
            return (V) b(a2);
        }
        if (this.f29130c.isEmpty()) {
            return null;
        }
        return this.f29130c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f29129b.size() + this.f29130c.size();
    }
}
