package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzgi;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgj.class */
public class zzgj<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zznd;
    private final int zztp;
    private List<zzgo> zztq;
    private Map<K, V> zztr;
    private volatile zzgq zzts;
    private Map<K, V> zztt;
    private volatile zzgk zztu;

    private zzgj(int i) {
        this.zztp = i;
        this.zztq = Collections.emptyList();
        this.zztr = Collections.emptyMap();
        this.zztt = Collections.emptyMap();
    }

    public /* synthetic */ zzgj(int i, zzgi zzgiVar) {
        this(i);
    }

    private final int zza(K k) {
        int size = this.zztq.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zztq.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.zztq.get(i2).getKey());
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

    public static <FieldDescriptorType extends zzeb<FieldDescriptorType>> zzgj<FieldDescriptorType, Object> zzat(int i) {
        return new zzgi(i);
    }

    public final V zzav(int i) {
        zzic();
        V v = (V) this.zztq.remove(i).getValue();
        if (!this.zztr.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzid().entrySet().iterator();
            this.zztq.add(new zzgo(this, it.next()));
            it.remove();
        }
        return v;
    }

    public final void zzic() {
        if (!this.zznd) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private final SortedMap<K, V> zzid() {
        zzic();
        if (this.zztr.isEmpty() && !(this.zztr instanceof TreeMap)) {
            this.zztr = new TreeMap();
            this.zztt = ((TreeMap) this.zztr).descendingMap();
        }
        return (SortedMap) this.zztr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zzic();
        if (!this.zztq.isEmpty()) {
            this.zztq.clear();
        }
        if (!this.zztr.isEmpty()) {
            this.zztr.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzgj<K, V>) comparable) >= 0 || this.zztr.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzts == null) {
            this.zzts = new zzgq(this, null);
        }
        return this.zzts;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgj)) {
            return super.equals(obj);
        }
        zzgj zzgjVar = (zzgj) obj;
        int size = size();
        if (size != zzgjVar.size()) {
            return false;
        }
        int zzhz = zzhz();
        if (zzhz != zzgjVar.zzhz()) {
            return entrySet().equals(zzgjVar.entrySet());
        }
        for (int i = 0; i < zzhz; i++) {
            if (!zzau(i).equals(zzgjVar.zzau(i))) {
                return false;
            }
        }
        if (zzhz == size) {
            return true;
        }
        return this.zztr.equals(zzgjVar.zztr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzgj<K, V>) comparable);
        return zza >= 0 ? (V) this.zztq.get(zza).getValue() : this.zztr.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int zzhz = zzhz();
        int i = 0;
        for (int i2 = 0; i2 < zzhz; i2++) {
            i += this.zztq.get(i2).hashCode();
        }
        int i3 = i;
        if (this.zztr.size() > 0) {
            i3 = i + this.zztr.hashCode();
        }
        return i3;
    }

    public final boolean isImmutable() {
        return this.zznd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzgj<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzic();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzgj<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzav(zza);
        }
        if (!this.zztr.isEmpty()) {
            return this.zztr.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zztq.size() + this.zztr.size();
    }

    public final V zza(K k, V v) {
        zzic();
        int zza = zza((zzgj<K, V>) k);
        if (zza >= 0) {
            return (V) this.zztq.get(zza).setValue(v);
        }
        zzic();
        if (this.zztq.isEmpty() && !(this.zztq instanceof ArrayList)) {
            this.zztq = new ArrayList(this.zztp);
        }
        int i = -(zza + 1);
        if (i >= this.zztp) {
            return zzid().put(k, v);
        }
        int size = this.zztq.size();
        int i2 = this.zztp;
        if (size == i2) {
            zzgo remove = this.zztq.remove(i2 - 1);
            zzid().put((K) remove.getKey(), (V) remove.getValue());
        }
        this.zztq.add(i, new zzgo(this, k, v));
        return null;
    }

    public final Map.Entry<K, V> zzau(int i) {
        return this.zztq.get(i);
    }

    public void zzfk() {
        if (!this.zznd) {
            this.zztr = this.zztr.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zztr);
            this.zztt = this.zztt.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zztt);
            this.zznd = true;
        }
    }

    public final int zzhz() {
        return this.zztq.size();
    }

    public final Iterable<Map.Entry<K, V>> zzia() {
        return this.zztr.isEmpty() ? zzgn.zzif() : this.zztr.entrySet();
    }

    public final Set<Map.Entry<K, V>> zzib() {
        if (this.zztu == null) {
            this.zztu = new zzgk(this, null);
        }
        return this.zztu;
    }
}
