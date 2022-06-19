package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsb.class */
public final class zzfsb<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Object zzd = new Object();
    @CheckForNull
    public transient int[] zza;
    @CheckForNull
    public transient Object[] zzb;
    @CheckForNull
    public transient Object[] zzc;
    @CheckForNull
    private transient Object zze;
    private transient int zzf;
    private transient int zzg;
    @CheckForNull
    private transient Set<K> zzh;
    @CheckForNull
    private transient Set<Map.Entry<K, V>> zzi;
    @CheckForNull
    private transient Collection<V> zzj;

    public zzfsb() {
        zzp(3);
    }

    public zzfsb(int i) {
        zzp(8);
    }

    public final int[] zzA() {
        int[] iArr = this.zza;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] zzB() {
        Object[] objArr = this.zzb;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object[] zzC() {
        Object[] objArr = this.zzc;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public static /* synthetic */ Object zzg(zzfsb zzfsbVar, int i) {
        return zzfsbVar.zzB()[i];
    }

    public static /* synthetic */ Object zzi(zzfsb zzfsbVar) {
        Object obj = zzfsbVar.zze;
        Objects.requireNonNull(obj);
        return obj;
    }

    public static /* synthetic */ Object zzj(zzfsb zzfsbVar, int i) {
        return zzfsbVar.zzC()[i];
    }

    public static /* synthetic */ void zzn(zzfsb zzfsbVar, int i, Object obj) {
        zzfsbVar.zzC()[i] = obj;
    }

    public final int zzv() {
        return (1 << (this.zzf & 31)) - 1;
    }

    public final int zzw(@CheckForNull Object obj) {
        int i;
        if (zzr()) {
            return -1;
        }
        int zzb = zzfsk.zzb(obj);
        int zzv = zzv();
        Object obj2 = this.zze;
        Objects.requireNonNull(obj2);
        int zzc = zzfsc.zzc(obj2, zzb & zzv);
        if (zzc == 0) {
            return -1;
        }
        int i2 = zzv ^ (-1);
        do {
            int i3 = zzc - 1;
            int i4 = zzA()[i3];
            if ((i4 & i2) == (zzb & i2) && zzfqc.zza(obj, zzB()[i3])) {
                return i3;
            }
            i = i4 & zzv;
            zzc = i;
        } while (i != 0);
        return -1;
    }

    private final int zzx(int i, int i2, int i3, int i4) {
        Object zzd2 = zzfsc.zzd(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            zzfsc.zze(zzd2, i3 & i5, i4 + 1);
        }
        Object obj = this.zze;
        Objects.requireNonNull(obj);
        int[] zzA = zzA();
        for (int i6 = 0; i6 <= i; i6++) {
            int zzc = zzfsc.zzc(obj, i6);
            while (true) {
                int i7 = zzc;
                if (i7 != 0) {
                    int i8 = i7 - 1;
                    int i9 = zzA[i8];
                    int i10 = ((i ^ (-1)) & i9) | i6;
                    int i11 = i10 & i5;
                    int zzc2 = zzfsc.zzc(zzd2, i11);
                    zzfsc.zze(zzd2, i11, i7);
                    zzA[i8] = ((i5 ^ (-1)) & i10) | (zzc2 & i5);
                    zzc = i9 & i;
                }
            }
        }
        this.zze = zzd2;
        zzz(i5);
        return i5;
    }

    public final Object zzy(@CheckForNull Object obj) {
        if (zzr()) {
            return zzd;
        }
        int zzv = zzv();
        Object obj2 = this.zze;
        Objects.requireNonNull(obj2);
        int zzb = zzfsc.zzb(obj, null, zzv, obj2, zzA(), zzB(), null);
        if (zzb == -1) {
            return zzd;
        }
        Object obj3 = zzC()[zzb];
        zzq(zzb, zzv);
        this.zzg--;
        zzo();
        return obj3;
    }

    private final void zzz(int i) {
        this.zzf = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.zzf & (-32));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (zzr()) {
            return;
        }
        zzo();
        Map<K, V> zzl = zzl();
        if (zzl != null) {
            this.zzf = zzfva.zza(size(), 3, 1073741823);
            zzl.clear();
            this.zze = null;
            this.zzg = 0;
            return;
        }
        Arrays.fill(zzB(), 0, this.zzg, (Object) null);
        Arrays.fill(zzC(), 0, this.zzg, (Object) null);
        Object obj = this.zze;
        Objects.requireNonNull(obj);
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
    public final boolean containsKey(@CheckForNull Object obj) {
        boolean z;
        Map<K, V> zzl = zzl();
        if (zzl != null) {
            z = zzl.containsKey(obj);
        } else if (zzw(obj) != -1) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        Map<K, V> zzl = zzl();
        if (zzl == null) {
            for (int i = 0; i < this.zzg; i++) {
                if (zzfqc.zza(obj, zzC()[i])) {
                    return true;
                }
            }
            return false;
        }
        return zzl.containsValue(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.zzi;
        zzfrv zzfrvVar = set;
        if (set == null) {
            zzfrvVar = new zzfrv(this);
            this.zzi = zzfrvVar;
        }
        return zzfrvVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final V get(@CheckForNull Object obj) {
        Map<K, V> zzl = zzl();
        if (zzl != null) {
            return zzl.get(obj);
        }
        int zzw = zzw(obj);
        if (zzw != -1) {
            return (V) zzC()[zzw];
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
        zzfry zzfryVar = set;
        if (set == null) {
            zzfryVar = new zzfry(this);
            this.zzh = zzfryVar;
        }
        return zzfryVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final V put(K k, V v) {
        int i;
        int min;
        int i2;
        int i3;
        if (zzr()) {
            zzfqg.zzg(zzr(), "Arrays already allocated");
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
            this.zze = zzfsc.zzd(max2);
            zzz(max2 - 1);
            this.zza = new int[i4];
            this.zzb = new Object[i4];
            this.zzc = new Object[i4];
        }
        Map<K, V> zzl = zzl();
        if (zzl != null) {
            return zzl.put(k, v);
        }
        int[] zzA = zzA();
        Object[] zzB = zzB();
        Object[] zzC = zzC();
        int i7 = this.zzg;
        int i8 = i7 + 1;
        int zzb = zzfsk.zzb(k);
        int zzv = zzv();
        int i9 = zzb & zzv;
        Object obj = this.zze;
        Objects.requireNonNull(obj);
        int zzc = zzfsc.zzc(obj, i9);
        if (zzc != 0) {
            int i10 = zzv ^ (-1);
            int i11 = 0;
            do {
                i2 = zzc - 1;
                int i12 = zzA[i2];
                i3 = i12 & i10;
                if (i3 == (zzb & i10) && zzfqc.zza(k, zzB[i2])) {
                    V v2 = (V) zzC[i2];
                    zzC[i2] = v;
                    return v2;
                }
                zzc = i12 & zzv;
                i11++;
            } while (zzc != 0);
            if (i11 >= 9) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(zzv() + 1, 1.0f);
                int zze = zze();
                while (true) {
                    int i13 = zze;
                    if (i13 < 0) {
                        this.zze = linkedHashMap;
                        this.zza = null;
                        this.zzb = null;
                        this.zzc = null;
                        zzo();
                        return (V) linkedHashMap.put(k, v);
                    }
                    linkedHashMap.put(zzB()[i13], zzC()[i13]);
                    zze = zzf(i13);
                }
            } else if (i8 > zzv) {
                i = zzx(zzv, zzfsc.zza(zzv), zzb, i7);
            } else {
                zzA[i2] = (i8 & zzv) | i3;
                i = zzv;
            }
        } else if (i8 > zzv) {
            i = zzx(zzv, zzfsc.zza(zzv), zzb, i7);
        } else {
            Object obj2 = this.zze;
            Objects.requireNonNull(obj2);
            zzfsc.zze(obj2, i9, i8);
            i = zzv;
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
        zzo();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final V remove(@CheckForNull Object obj) {
        Map<K, V> zzl = zzl();
        if (zzl != null) {
            return zzl.remove(obj);
        }
        Object zzy = zzy(obj);
        Object obj2 = zzy;
        if (zzy == zzd) {
            obj2 = null;
        }
        return (V) obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> zzl = zzl();
        return zzl != null ? zzl.size() : this.zzg;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        Collection<V> collection = this.zzj;
        zzfsa zzfsaVar = collection;
        if (collection == null) {
            zzfsaVar = new zzfsa(this);
            this.zzj = zzfsaVar;
        }
        return zzfsaVar;
    }

    public final int zze() {
        return isEmpty() ? -1 : 0;
    }

    public final int zzf(int i) {
        int i2 = i + 1;
        if (i2 < this.zzg) {
            return i2;
        }
        return -1;
    }

    @CheckForNull
    public final Map<K, V> zzl() {
        Object obj = this.zze;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final void zzo() {
        this.zzf += 32;
    }

    public final void zzp(int i) {
        this.zzf = zzfva.zza(i, 1, 1073741823);
    }

    public final void zzq(int i, int i2) {
        int i3;
        int i4;
        Object obj = this.zze;
        Objects.requireNonNull(obj);
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
        int zzb = zzfsk.zzb(obj2) & i2;
        int zzc = zzfsc.zzc(obj, zzb);
        int i5 = size + 1;
        if (zzc == i5) {
            zzfsc.zze(obj, zzb, i + 1);
            return;
        }
        do {
            i3 = zzc - 1;
            i4 = zzA[i3];
            zzc = i4 & i2;
        } while (zzc != i5);
        zzA[i3] = ((i + 1) & i2) | (i4 & (i2 ^ (-1)));
    }

    public final boolean zzr() {
        return this.zze == null;
    }
}
