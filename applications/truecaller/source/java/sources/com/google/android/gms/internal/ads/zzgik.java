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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgik.class */
public class zzgik<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private final int zza;
    private boolean zzd;
    private volatile zzgii zze;
    private List<zzgig> zzb = Collections.emptyList();
    private Map<K, V> zzc = Collections.emptyMap();
    private Map<K, V> zzf = Collections.emptyMap();

    public final V zzk(int i) {
        zzm();
        V v = (V) this.zzb.remove(i).getValue();
        if (!this.zzc.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzn().entrySet().iterator();
            List<zzgig> list = this.zzb;
            Map.Entry<K, V> next = it.next();
            list.add(new zzgig(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    private final int zzl(K k) {
        int size = this.zzb.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.zzb.get(size).zza());
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
            int compareTo2 = k.compareTo(this.zzb.get(i3).zza());
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

    public final void zzm() {
        if (!this.zzd) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private final SortedMap<K, V> zzn() {
        zzm();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzc = treeMap;
            this.zzf = treeMap.descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        zzm();
        if (!this.zzb.isEmpty()) {
            this.zzb.clear();
        }
        if (!this.zzc.isEmpty()) {
            this.zzc.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zzl(comparable) >= 0 || this.zzc.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.zze == null) {
            this.zze = new zzgii(this, null);
        }
        return this.zze;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgik)) {
            return super.equals(obj);
        }
        zzgik zzgikVar = (zzgik) obj;
        int size = size();
        if (size != zzgikVar.size()) {
            return false;
        }
        int zze = zze();
        if (zze != zzgikVar.zze()) {
            return entrySet().equals(zzgikVar.entrySet());
        }
        for (int i = 0; i < zze; i++) {
            if (!zzf(i).equals(zzgikVar.zzf(i))) {
                return false;
            }
        }
        if (zze == size) {
            return true;
        }
        return this.zzc.equals(zzgikVar.zzc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zzl = zzl(comparable);
        return zzl >= 0 ? (V) this.zzb.get(zzl).getValue() : this.zzc.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int zze = zze();
        int i = 0;
        for (int i2 = 0; i2 < zze; i2++) {
            i += this.zzb.get(i2).hashCode();
        }
        return this.zzc.size() > 0 ? this.zzc.hashCode() + i : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzm();
        Comparable comparable = (Comparable) obj;
        int zzl = zzl(comparable);
        if (zzl >= 0) {
            return (V) zzk(zzl);
        }
        if (!this.zzc.isEmpty()) {
            return this.zzc.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zzc.size() + this.zzb.size();
    }

    public void zza() {
        if (!this.zzd) {
            this.zzc = this.zzc.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzc);
            this.zzf = this.zzf.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzf);
            this.zzd = true;
        }
    }

    public final boolean zzd() {
        return this.zzd;
    }

    public final int zze() {
        return this.zzb.size();
    }

    public final Map.Entry<K, V> zzf(int i) {
        return this.zzb.get(i);
    }

    public final Iterable<Map.Entry<K, V>> zzg() {
        return this.zzc.isEmpty() ? zzgif.zzb() : this.zzc.entrySet();
    }

    /* renamed from: zzh */
    public final V put(K k, V v) {
        zzm();
        int zzl = zzl(k);
        if (zzl >= 0) {
            return (V) this.zzb.get(zzl).setValue(v);
        }
        zzm();
        if (this.zzb.isEmpty() && !(this.zzb instanceof ArrayList)) {
            this.zzb = new ArrayList(this.zza);
        }
        int i = -(zzl + 1);
        if (i >= this.zza) {
            return zzn().put(k, v);
        }
        int size = this.zzb.size();
        int i2 = this.zza;
        if (size == i2) {
            zzgig remove = this.zzb.remove(i2 - 1);
            zzn().put((K) remove.zza(), (V) remove.getValue());
        }
        this.zzb.add(i, new zzgig(this, k, v));
        return null;
    }
}
