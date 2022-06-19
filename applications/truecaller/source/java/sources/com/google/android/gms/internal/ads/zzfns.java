package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfns.class */
public final class zzfns<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Object zzd = new Object();
    public transient int[] zza;
    public transient Object[] zzb;
    public transient Object[] zzc;
    private transient Object zze;
    private transient int zzf;
    private transient int zzg;
    private transient Set<K> zzh;
    private transient Set<Map.Entry<K, V>> zzi;
    private transient Collection<V> zzj;

    public zzfns() {
        zze(3);
    }

    public zzfns(int i) {
        zze(8);
    }

    public final int[] zzA() {
        int[] iArr = this.zza;
        iArr.getClass();
        return iArr;
    }

    public final Object[] zzB() {
        Object[] objArr = this.zzb;
        objArr.getClass();
        return objArr;
    }

    public final Object[] zzC() {
        Object[] objArr = this.zzc;
        objArr.getClass();
        return objArr;
    }

    public static /* synthetic */ Object zzo(zzfns zzfnsVar) {
        Object obj = zzfnsVar.zze;
        obj.getClass();
        return obj;
    }

    public static /* synthetic */ Object zzs(zzfns zzfnsVar, int i) {
        return zzfnsVar.zzB()[i];
    }

    public static /* synthetic */ Object zzt(zzfns zzfnsVar, int i) {
        return zzfnsVar.zzC()[i];
    }

    public static /* synthetic */ void zzu(zzfns zzfnsVar, int i, Object obj) {
        zzfnsVar.zzC()[i] = obj;
    }

    private final void zzv(int i) {
        this.zzf = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.zzf & (-32));
    }

    public final int zzw() {
        return (1 << (this.zzf & 31)) - 1;
    }

    private final int zzx(int i, int i2, int i3, int i4) {
        Object zza = zzfnt.zza(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            zzfnt.zzc(zza, i3 & i5, i4 + 1);
        }
        Object obj = this.zze;
        obj.getClass();
        int[] zzA = zzA();
        for (int i6 = 0; i6 <= i; i6++) {
            int zzb = zzfnt.zzb(obj, i6);
            while (true) {
                int i7 = zzb;
                if (i7 != 0) {
                    int i8 = i7 - 1;
                    int i9 = zzA[i8];
                    int i10 = ((i ^ (-1)) & i9) | i6;
                    int i11 = i10 & i5;
                    int zzb2 = zzfnt.zzb(zza, i11);
                    zzfnt.zzc(zza, i11, i7);
                    zzA[i8] = ((i5 ^ (-1)) & i10) | (zzb2 & i5);
                    zzb = i9 & i;
                }
            }
        }
        this.zze = zza;
        zzv(i5);
        return i5;
    }

    public final int zzy(Object obj) {
        int i;
        if (zzf()) {
            return -1;
        }
        int zzb = zzfob.zzb(obj);
        int zzw = zzw();
        Object obj2 = this.zze;
        obj2.getClass();
        int zzb2 = zzfnt.zzb(obj2, zzb & zzw);
        if (zzb2 == 0) {
            return -1;
        }
        int i2 = zzw ^ (-1);
        do {
            int i3 = zzb2 - 1;
            int i4 = zzA()[i3];
            if ((i4 & i2) == (zzb & i2) && zzflt.zza(obj, zzB()[i3])) {
                return i3;
            }
            i = i4 & zzw;
            zzb2 = i;
        } while (i != 0);
        return -1;
    }

    public final Object zzz(Object obj) {
        if (zzf()) {
            return zzd;
        }
        int zzw = zzw();
        Object obj2 = this.zze;
        obj2.getClass();
        int zze = zzfnt.zze(obj, null, zzw, obj2, zzA(), zzB(), null);
        if (zze == -1) {
            return zzd;
        }
        Object obj3 = zzC()[zze];
        zzl(zze, zzw);
        this.zzg--;
        zzi();
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (zzf()) {
            return;
        }
        zzi();
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            this.zzf = zzfqr.zza(size(), 3, 1073741823);
            zzg.clear();
            this.zze = null;
            this.zzg = 0;
            return;
        }
        Arrays.fill(zzB(), 0, this.zzg, (Object) null);
        Arrays.fill(zzC(), 0, this.zzg, (Object) null);
        Object obj = this.zze;
        obj.getClass();
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(zzA(), 0, this.zzg, 0);
        this.zzg = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        boolean z;
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            z = zzg.containsKey(obj);
        } else if (zzy(obj) != -1) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map<K, V> zzg = zzg();
        if (zzg == null) {
            for (int i = 0; i < this.zzg; i++) {
                if (zzflt.zza(obj, zzC()[i])) {
                    return true;
                }
            }
            return false;
        }
        return zzg.containsValue(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.zzi;
        zzfnm zzfnmVar = set;
        if (set == null) {
            zzfnmVar = new zzfnm(this);
            this.zzi = zzfnmVar;
        }
        return zzfnmVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            return zzg.get(obj);
        }
        int zzy = zzy(obj);
        if (zzy != -1) {
            return (V) zzC()[zzy];
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        Set<K> set = this.zzh;
        zzfno zzfnoVar = set;
        if (set == null) {
            zzfnoVar = new zzfno(this);
            this.zzh = zzfnoVar;
        }
        return zzfnoVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        int i;
        int min;
        int i2;
        int i3;
        if (zzf()) {
            zzflx.zzb(zzf(), "Arrays already allocated");
            int i4 = this.zzf;
            int max = Math.max(i4 + 1, 2);
            int highestOneBit = Integer.highestOneBit(max);
            int i5 = highestOneBit;
            if (max > highestOneBit) {
                int i6 = highestOneBit + highestOneBit;
                i5 = i6;
                if (i6 <= 0) {
                    i5 = 1073741824;
                }
            }
            int max2 = Math.max(4, i5);
            this.zze = zzfnt.zza(max2);
            zzv(max2 - 1);
            this.zza = new int[i4];
            this.zzb = new Object[i4];
            this.zzc = new Object[i4];
        }
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            return zzg.put(k, v);
        }
        int[] zzA = zzA();
        Object[] zzB = zzB();
        Object[] zzC = zzC();
        int i7 = this.zzg;
        int i8 = i7 + 1;
        int zzb = zzfob.zzb(k);
        int zzw = zzw();
        int i9 = zzb & zzw;
        Object obj = this.zze;
        obj.getClass();
        int zzb2 = zzfnt.zzb(obj, i9);
        if (zzb2 != 0) {
            int i10 = zzw ^ (-1);
            int i11 = 0;
            do {
                i2 = zzb2 - 1;
                int i12 = zzA[i2];
                i3 = i12 & i10;
                if (i3 == (zzb & i10) && zzflt.zza(k, zzB[i2])) {
                    V v2 = (V) zzC[i2];
                    zzC[i2] = v;
                    return v2;
                }
                zzb2 = i12 & zzw;
                i11++;
            } while (zzb2 != 0);
            if (i11 >= 9) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(zzw() + 1, 1.0f);
                int zzm = zzm();
                while (true) {
                    int i13 = zzm;
                    if (i13 < 0) {
                        this.zze = linkedHashMap;
                        this.zza = null;
                        this.zzb = null;
                        this.zzc = null;
                        zzi();
                        return (V) linkedHashMap.put(k, v);
                    }
                    linkedHashMap.put(zzB()[i13], zzC()[i13]);
                    zzm = zzn(i13);
                }
            } else if (i8 > zzw) {
                i = zzx(zzw, zzfnt.zzd(zzw), zzb, i7);
            } else {
                zzA[i2] = (i8 & zzw) | i3;
                i = zzw;
            }
        } else if (i8 > zzw) {
            i = zzx(zzw, zzfnt.zzd(zzw), zzb, i7);
        } else {
            Object obj2 = this.zze;
            obj2.getClass();
            zzfnt.zzc(obj2, i9, i8);
            i = zzw;
        }
        int length = zzA().length;
        if (i8 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.zza = Arrays.copyOf(zzA(), min);
            this.zzb = Arrays.copyOf(zzB(), min);
            this.zzc = Arrays.copyOf(zzC(), min);
        }
        zzA()[i7] = (i ^ (-1)) & zzb;
        zzB()[i7] = k;
        zzC()[i7] = v;
        this.zzg = i8;
        zzi();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        Map<K, V> zzg = zzg();
        if (zzg != null) {
            return zzg.remove(obj);
        }
        Object zzz = zzz(obj);
        Object obj2 = zzz;
        if (zzz == zzd) {
            obj2 = null;
        }
        return (V) obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> zzg = zzg();
        return zzg != null ? zzg.size() : this.zzg;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.zzj;
        zzfnr zzfnrVar = collection;
        if (collection == null) {
            zzfnrVar = new zzfnr(this);
            this.zzj = zzfnrVar;
        }
        return zzfnrVar;
    }

    public final void zze(int i) {
        this.zzf = zzfqr.zza(i, 1, 1073741823);
    }

    public final boolean zzf() {
        return this.zze == null;
    }

    public final Map<K, V> zzg() {
        Object obj = this.zze;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void zzi() {
        this.zzf += 32;
    }

    public final void zzl(int i, int i2) {
        int i3;
        int i4;
        Object obj = this.zze;
        obj.getClass();
        int[] zzA = zzA();
        Object[] zzB = zzB();
        Object[] zzC = zzC();
        int size = size() - 1;
        if (i >= size) {
            zzB[i] = null;
            zzC[i] = null;
            zzA[i] = 0;
            return;
        }
        Object obj2 = zzB[size];
        zzB[i] = obj2;
        zzC[i] = zzC[size];
        zzB[size] = null;
        zzC[size] = null;
        zzA[i] = zzA[size];
        zzA[size] = 0;
        int zzb = zzfob.zzb(obj2) & i2;
        int zzb2 = zzfnt.zzb(obj, zzb);
        int i5 = size + 1;
        if (zzb2 == i5) {
            zzfnt.zzc(obj, zzb, i + 1);
            return;
        }
        do {
            i3 = zzb2 - 1;
            i4 = zzA[i3];
            zzb2 = i4 & i2;
        } while (zzb2 != i5);
        zzA[i3] = ((i + 1) & i2) | (i4 & (i2 ^ (-1)));
    }

    public final int zzm() {
        return isEmpty() ? -1 : 0;
    }

    public final int zzn(int i) {
        int i2 = i + 1;
        if (i2 < this.zzg) {
            return i2;
        }
        return -1;
    }
}
