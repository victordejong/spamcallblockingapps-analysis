package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmu.class */
public final class zzfmu extends zzfmx implements NavigableMap {
    public final /* synthetic */ zzfnd zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfmu(zzfnd zzfndVar, NavigableMap navigableMap) {
        super(zzfndVar, navigableMap);
        this.zzc = zzfndVar;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry ceilingEntry = ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return zzb(ceilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new zzfmu(this.zzc, ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).descendingMap());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry firstEntry = ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return zzb(firstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry floorEntry = ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return zzb(floorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).floorKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z) {
        return new zzfmu(this.zzc, ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).headMap(obj, z));
    }

    @Override // com.google.android.gms.internal.ads.zzfmx, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry higherEntry = ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return zzb(higherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).higherKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfmx, com.google.android.gms.internal.ads.zzfmq, com.google.android.gms.internal.ads.zzfph, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry lastEntry = ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return zzb(lastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry lowerEntry = ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return zzb(lowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return zzc(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return zzc(descendingMap().entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return new zzfmu(this.zzc, ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).subMap(obj, z, obj2, z2));
    }

    @Override // com.google.android.gms.internal.ads.zzfmx, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z) {
        return new zzfmu(this.zzc, ((NavigableMap) ((SortedMap) ((zzfmq) this).zza)).tailMap(obj, z));
    }

    @Override // com.google.android.gms.internal.ads.zzfmx, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    public final Map.Entry zzc(Iterator<Map.Entry> it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry next = it.next();
        Collection zzc = this.zzc.zzc();
        zzc.addAll((Collection) next.getValue());
        it.remove();
        return new zzfof(next.getKey(), this.zzc.zza(zzc));
    }

    /* renamed from: zzd */
    public final NavigableSet zzh() {
        return new zzfmv(this.zzc, (NavigableMap) ((SortedMap) ((zzfmq) this).zza));
    }

    @Override // com.google.android.gms.internal.ads.zzfmx
    public final /* bridge */ /* synthetic */ SortedSet zzf() {
        return (NavigableSet) super.keySet();
    }

    @Override // com.google.android.gms.internal.ads.zzfmx
    public final /* bridge */ /* synthetic */ SortedMap zzg() {
        return (NavigableMap) ((SortedMap) ((zzfmq) this).zza);
    }
}
