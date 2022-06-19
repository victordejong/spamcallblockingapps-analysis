package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfui.class */
final class zzfui<K, V> extends zzftc<Map.Entry<K, V>> {
    private final transient zzfsw<K, V> zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzfui(zzfsw<K, V> zzfswVar, Object[] objArr, int i, int i2) {
        this.zza = zzfswVar;
        this.zzb = objArr;
        this.zzc = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.zza.get(key));
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzftc, com.google.android.gms.internal.ads.zzfsn, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final int zza(Object[] objArr, int i) {
        return zzd().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzftc, com.google.android.gms.internal.ads.zzfsn
    public final zzfuu<Map.Entry<K, V>> zze() {
        return zzd().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final boolean zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzftc
    public final zzfss<Map.Entry<K, V>> zzi() {
        return new zzfuh(this);
    }
}
