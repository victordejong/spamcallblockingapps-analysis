package com.google.android.gms.internal.firebase_perf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzr.class */
final class zzr<K, V> extends zzq<Map.Entry<K, V>> {
    private final transient int size;
    private final transient Object[] zzf;
    private final transient zzo<K, V> zzo;
    private final transient int zzp = 0;

    public zzr(zzo<K, V> zzoVar, Object[] objArr, int i, int i2) {
        this.zzo = zzoVar;
        this.zzf = objArr;
        this.size = i2;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.zzo.get(key));
        }
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzq, com.google.android.gms.internal.firebase_perf.zzk, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final int zza(Object[] objArr, int i) {
        return zzc().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final zzy<Map.Entry<K, V>> zzb() {
        return (zzy) zzc().iterator();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzq
    final zzj<Map.Entry<K, V>> zzk() {
        return new zzu(this);
    }
}
