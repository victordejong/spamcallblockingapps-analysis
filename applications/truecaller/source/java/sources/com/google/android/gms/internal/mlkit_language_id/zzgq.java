package com.google.android.gms.internal.mlkit_language_id;

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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzgq.class */
public class zzgq<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private final int zza;
    private List<zzgz> zzb;
    private Map<K, V> zzc;
    private boolean zzd;
    private volatile zzhb zze;
    private Map<K, V> zzf;
    private volatile zzgv zzg;

    private zzgq(int i) {
        this.zza = i;
        this.zzb = Collections.emptyList();
        this.zzc = Collections.emptyMap();
        this.zzf = Collections.emptyMap();
    }

    public /* synthetic */ zzgq(int i, zzgt zzgtVar) {
        this(i);
    }

    private final int zza(K k) {
        int size = this.zzb.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zzb.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.zzb.get(i2).getKey());
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

    public static <FieldDescriptorType extends zzel<FieldDescriptorType>> zzgq<FieldDescriptorType, Object> zza(int i) {
        return new zzgt(i);
    }

    public final V zzc(int i) {
        zzf();
        V v = (V) this.zzb.remove(i).getValue();
        if (!this.zzc.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzg().entrySet().iterator();
            this.zzb.add(new zzgz(this, it.next()));
            it.remove();
        }
        return v;
    }

    public final void zzf() {
        if (!this.zzd) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private final SortedMap<K, V> zzg() {
        zzf();
        if (this.zzc.isEmpty() && !(this.zzc instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zzc = treeMap;
            this.zzf = treeMap.descendingMap();
        }
        return (SortedMap) this.zzc;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzf();
        if (!this.zzb.isEmpty()) {
            this.zzb.clear();
        }
        if (!this.zzc.isEmpty()) {
            this.zzc.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzgq<K, V>) comparable) >= 0 || this.zzc.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zze == null) {
            this.zze = new zzhb(this, null);
        }
        return this.zze;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgq)) {
            return super.equals(obj);
        }
        zzgq zzgqVar = (zzgq) obj;
        int size = size();
        if (size != zzgqVar.size()) {
            return false;
        }
        int zzc = zzc();
        if (zzc != zzgqVar.zzc()) {
            return entrySet().equals(zzgqVar.entrySet());
        }
        for (int i = 0; i < zzc; i++) {
            if (!zzb(i).equals(zzgqVar.zzb(i))) {
                return false;
            }
        }
        if (zzc == size) {
            return true;
        }
        return this.zzc.equals(zzgqVar.zzc);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzgq<K, V>) comparable);
        return zza >= 0 ? (V) this.zzb.get(zza).getValue() : this.zzc.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int zzc = zzc();
        int i = 0;
        for (int i2 = 0; i2 < zzc; i2++) {
            i += this.zzb.get(i2).hashCode();
        }
        int i3 = i;
        if (this.zzc.size() > 0) {
            i3 = i + this.zzc.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzgq<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzf();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzgq<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzc(zza);
        }
        if (!this.zzc.isEmpty()) {
            return this.zzc.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzc.size() + this.zzb.size();
    }

    public final V zza(K k, V v) {
        zzf();
        int zza = zza((zzgq<K, V>) k);
        if (zza >= 0) {
            return (V) this.zzb.get(zza).setValue(v);
        }
        zzf();
        if (this.zzb.isEmpty() && !(this.zzb instanceof ArrayList)) {
            this.zzb = new ArrayList(this.zza);
        }
        int i = -(zza + 1);
        if (i >= this.zza) {
            return zzg().put(k, v);
        }
        int size = this.zzb.size();
        int i2 = this.zza;
        if (size == i2) {
            zzgz remove = this.zzb.remove(i2 - 1);
            zzg().put((K) remove.getKey(), (V) remove.getValue());
        }
        this.zzb.add(i, new zzgz(this, k, v));
        return null;
    }

    public void zza() {
        if (!this.zzd) {
            this.zzc = this.zzc.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzc);
            this.zzf = this.zzf.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzf);
            this.zzd = true;
        }
    }

    public final Map.Entry<K, V> zzb(int i) {
        return this.zzb.get(i);
    }

    public final boolean zzb() {
        return this.zzd;
    }

    public final int zzc() {
        return this.zzb.size();
    }

    public final Iterable<Map.Entry<K, V>> zzd() {
        return this.zzc.isEmpty() ? zzgu.zza() : this.zzc.entrySet();
    }

    public final Set<Map.Entry<K, V>> zze() {
        if (this.zzg == null) {
            this.zzg = new zzgv(this, null);
        }
        return this.zzg;
    }
}
