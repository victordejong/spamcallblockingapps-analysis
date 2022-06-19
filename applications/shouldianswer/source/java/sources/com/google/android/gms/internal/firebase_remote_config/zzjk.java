package com.google.android.gms.internal.firebase_remote_config;

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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjk.class */
public class zzjk<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzqg;
    private final int zzws;
    private List<zzjp> zzwt;
    private Map<K, V> zzwu;
    private volatile zzjr zzwv;
    private Map<K, V> zzww;
    private volatile zzjl zzwx;

    private zzjk(int i) {
        this.zzws = i;
        this.zzwt = Collections.emptyList();
        this.zzwu = Collections.emptyMap();
        this.zzww = Collections.emptyMap();
    }

    public /* synthetic */ zzjk(int i, zzjj zzjjVar) {
        this(i);
    }

    private final int zza(K k) {
        int size = this.zzwt.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zzwt.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.zzwt.get(i2).getKey());
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

    public static <FieldDescriptorType extends zzhc<FieldDescriptorType>> zzjk<FieldDescriptorType, Object> zzbl(int i) {
        return new zzjj(i);
    }

    public final V zzbn(int i) {
        zziu();
        V v = (V) this.zzwt.remove(i).getValue();
        if (!this.zzwu.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zziv().entrySet().iterator();
            this.zzwt.add(new zzjp(this, it.next()));
            it.remove();
        }
        return v;
    }

    public final void zziu() {
        if (!this.zzqg) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private final SortedMap<K, V> zziv() {
        zziu();
        if (this.zzwu.isEmpty() && !(this.zzwu instanceof TreeMap)) {
            this.zzwu = new TreeMap();
            this.zzww = ((TreeMap) this.zzwu).descendingMap();
        }
        return (SortedMap) this.zzwu;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        zziu();
        if (!this.zzwt.isEmpty()) {
            this.zzwt.clear();
        }
        if (!this.zzwu.isEmpty()) {
            this.zzwu.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza((zzjk<K, V>) comparable) >= 0 || this.zzwu.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zzwv == null) {
            this.zzwv = new zzjr(this, null);
        }
        return this.zzwv;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjk)) {
            return super.equals(obj);
        }
        zzjk zzjkVar = (zzjk) obj;
        int size = size();
        if (size != zzjkVar.size()) {
            return false;
        }
        int zzir = zzir();
        if (zzir != zzjkVar.zzir()) {
            return entrySet().equals(zzjkVar.entrySet());
        }
        for (int i = 0; i < zzir; i++) {
            if (!zzbm(i).equals(zzjkVar.zzbm(i))) {
                return false;
            }
        }
        if (zzir == size) {
            return true;
        }
        return this.zzwu.equals(zzjkVar.zzwu);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzjk<K, V>) comparable);
        return zza >= 0 ? (V) this.zzwt.get(zza).getValue() : this.zzwu.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int zzir = zzir();
        int i = 0;
        for (int i2 = 0; i2 < zzir; i2++) {
            i += this.zzwt.get(i2).hashCode();
        }
        int i3 = i;
        if (this.zzwu.size() > 0) {
            i3 = i + this.zzwu.hashCode();
        }
        return i3;
    }

    public final boolean isImmutable() {
        return this.zzqg;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return zza((zzjk<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zziu();
        Comparable comparable = (Comparable) obj;
        int zza = zza((zzjk<K, V>) comparable);
        if (zza >= 0) {
            return (V) zzbn(zza);
        }
        if (!this.zzwu.isEmpty()) {
            return this.zzwu.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.zzwt.size() + this.zzwu.size();
    }

    public final V zza(K k, V v) {
        zziu();
        int zza = zza((zzjk<K, V>) k);
        if (zza >= 0) {
            return (V) this.zzwt.get(zza).setValue(v);
        }
        zziu();
        if (this.zzwt.isEmpty() && !(this.zzwt instanceof ArrayList)) {
            this.zzwt = new ArrayList(this.zzws);
        }
        int i = -(zza + 1);
        if (i >= this.zzws) {
            return zziv().put(k, v);
        }
        int size = this.zzwt.size();
        int i2 = this.zzws;
        if (size == i2) {
            zzjp remove = this.zzwt.remove(i2 - 1);
            zziv().put((K) remove.getKey(), (V) remove.getValue());
        }
        this.zzwt.add(i, new zzjp(this, k, v));
        return null;
    }

    public final Map.Entry<K, V> zzbm(int i) {
        return this.zzwt.get(i);
    }

    public void zzes() {
        if (!this.zzqg) {
            this.zzwu = this.zzwu.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzwu);
            this.zzww = this.zzww.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.zzww);
            this.zzqg = true;
        }
    }

    public final int zzir() {
        return this.zzwt.size();
    }

    public final Iterable<Map.Entry<K, V>> zzis() {
        return this.zzwu.isEmpty() ? zzjo.zzix() : this.zzwu.entrySet();
    }

    public final Set<Map.Entry<K, V>> zzit() {
        if (this.zzwx == null) {
            this.zzwx = new zzjl(this, null);
        }
        return this.zzwx;
    }
}
