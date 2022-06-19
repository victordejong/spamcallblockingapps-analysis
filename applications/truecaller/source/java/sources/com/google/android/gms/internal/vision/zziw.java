package com.google.android.gms.internal.vision;

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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zziw.class */
public class zziw<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private volatile zzix zzaaa;
    private boolean zztc;
    private final int zzzv;
    private List<zzjb> zzzw;
    private Map<K, V> zzzx;
    private volatile zzjd zzzy;
    private Map<K, V> zzzz;

    private zziw(int i) {
        this.zzzv = i;
        this.zzzw = Collections.emptyList();
        this.zzzx = Collections.emptyMap();
        this.zzzz = Collections.emptyMap();
    }

    public /* synthetic */ zziw(int i, zziv zzivVar) {
        this(i);
    }

    private final int zza(K k) {
        int size = this.zzzw.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zzzw.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.zzzw.get(i2).getKey());
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

    public static <FieldDescriptorType extends zzgk<FieldDescriptorType>> zziw<FieldDescriptorType, Object> zzbt(int i) {
        return new zziv(i);
    }

    public final V zzbv(int i) {
        zzia();
        V v = (V) this.zzzw.remove(i).getValue();
        if (!this.zzzx.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzib().entrySet().iterator();
            this.zzzw.add(new zzjb(this, it.next()));
            it.remove();
        }
        return v;
    }

    public final void zzia() {
        if (!this.zztc) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private final SortedMap<K, V> zzib() {
        zzia();
        if (this.zzzx.isEmpty() && !(this.zzzx instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzzx = treeMap;
            this.zzzz = treeMap.descendingMap();
        }
        return (SortedMap) this.zzzx;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzia();
        if (!this.zzzw.isEmpty()) {
            this.zzzw.clear();
        }
        if (!this.zzzx.isEmpty()) {
            this.zzzx.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zziw<K, V>) comparable) >= 0 || this.zzzx.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzzy == null) {
            this.zzzy = new zzjd(this, null);
        }
        return this.zzzy;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zziw)) {
            return super.equals(obj);
        }
        zziw zziwVar = (zziw) obj;
        int size = size();
        if (size != zziwVar.size()) {
            return false;
        }
        int zzhx = zzhx();
        if (zzhx != zziwVar.zzhx()) {
            return entrySet().equals(zziwVar.entrySet());
        }
        for (int i = 0; i < zzhx; i++) {
            if (!zzbu(i).equals(zziwVar.zzbu(i))) {
                return false;
            }
        }
        if (zzhx == size) {
            return true;
        }
        return this.zzzx.equals(zziwVar.zzzx);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zziw<K, V>) comparable);
        return zza >= 0 ? (V) this.zzzw.get(zza).getValue() : this.zzzx.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int zzhx = zzhx();
        int i = 0;
        for (int i2 = 0; i2 < zzhx; i2++) {
            i += this.zzzw.get(i2).hashCode();
        }
        int i3 = i;
        if (this.zzzx.size() > 0) {
            i3 = i + this.zzzx.hashCode();
        }
        return i3;
    }

    public final boolean isImmutable() {
        return this.zztc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zziw<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzia();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zziw<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzbv(zza);
        }
        if (!this.zzzx.isEmpty()) {
            return this.zzzx.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzzx.size() + this.zzzw.size();
    }

    public final V zza(K k, V v) {
        zzia();
        int zza = zza((zziw<K, V>) k);
        if (zza >= 0) {
            return (V) this.zzzw.get(zza).setValue(v);
        }
        zzia();
        if (this.zzzw.isEmpty() && !(this.zzzw instanceof ArrayList)) {
            this.zzzw = new ArrayList(this.zzzv);
        }
        int i = -(zza + 1);
        if (i >= this.zzzv) {
            return zzib().put(k, v);
        }
        int size = this.zzzw.size();
        int i2 = this.zzzv;
        if (size == i2) {
            zzjb remove = this.zzzw.remove(i2 - 1);
            zzib().put((K) remove.getKey(), (V) remove.getValue());
        }
        this.zzzw.add(i, new zzjb(this, k, v));
        return null;
    }

    public final Map.Entry<K, V> zzbu(int i) {
        return this.zzzw.get(i);
    }

    public void zzdp() {
        if (!this.zztc) {
            this.zzzx = this.zzzx.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzzx);
            this.zzzz = this.zzzz.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzzz);
            this.zztc = true;
        }
    }

    public final int zzhx() {
        return this.zzzw.size();
    }

    public final Iterable<Map.Entry<K, V>> zzhy() {
        return this.zzzx.isEmpty() ? zzja.zzid() : this.zzzx.entrySet();
    }

    public final Set<Map.Entry<K, V>> zzhz() {
        if (this.zzaaa == null) {
            this.zzaaa = new zzix(this, (zziv) null);
        }
        return this.zzaaa;
    }
}
