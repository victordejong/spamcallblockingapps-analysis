package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tv2.class */
public final class tv2 extends wv2 implements NavigableMap {

    /* renamed from: j */
    final /* synthetic */ zzfnd f30381j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tv2(zzfnd zzfndVar, NavigableMap navigableMap) {
        super(zzfndVar, navigableMap);
        this.f30381j = zzfndVar;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry ceilingEntry = ((NavigableMap) ((SortedMap) this.f28176f)).ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return m12123b(ceilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f28176f)).ceilingKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.wv2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ SortedSet mo9436d() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new tv2(this.f30381j, ((NavigableMap) ((SortedMap) this.f28176f)).descendingMap());
    }

    @Override // com.google.android.gms.internal.ads.wv2
    /* renamed from: e */
    final /* bridge */ /* synthetic */ SortedMap mo9435e() {
        return (NavigableMap) ((SortedMap) this.f28176f);
    }

    /* renamed from: f */
    final Map.Entry m10486f(Iterator<Map.Entry> it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry next = it.next();
        Collection zzc = this.f30381j.zzc();
        zzc.addAll((Collection) next.getValue());
        it.remove();
        return new zzfof(next.getKey(), this.f30381j.zza(zzc));
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry firstEntry = ((NavigableMap) ((SortedMap) this.f28176f)).firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return m12123b(firstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry floorEntry = ((NavigableMap) ((SortedMap) this.f28176f)).floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return m12123b(floorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f28176f)).floorKey(obj);
    }

    /* renamed from: g */
    public final NavigableSet mo9437c() {
        return new uv2(this.f30381j, (NavigableMap) ((SortedMap) this.f28176f));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z) {
        return new tv2(this.f30381j, ((NavigableMap) ((SortedMap) this.f28176f)).headMap(obj, z));
    }

    @Override // com.google.android.gms.internal.ads.wv2, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry higherEntry = ((NavigableMap) ((SortedMap) this.f28176f)).higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return m12123b(higherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f28176f)).higherKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.wv2, com.google.android.gms.internal.ads.pv2, java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry lastEntry = ((NavigableMap) ((SortedMap) this.f28176f)).lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return m12123b(lastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry lowerEntry = ((NavigableMap) ((SortedMap) this.f28176f)).lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return m12123b(lowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f28176f)).lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return m10486f(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return m10486f(descendingMap().entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return new tv2(this.f30381j, ((NavigableMap) ((SortedMap) this.f28176f)).subMap(obj, z, obj2, z2));
    }

    @Override // com.google.android.gms.internal.ads.wv2, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z) {
        return new tv2(this.f30381j, ((NavigableMap) ((SortedMap) this.f28176f)).tailMap(obj, z));
    }

    @Override // com.google.android.gms.internal.ads.wv2, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }
}
