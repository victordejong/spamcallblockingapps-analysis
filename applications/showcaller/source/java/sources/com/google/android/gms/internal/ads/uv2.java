package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uv2.class */
public final class uv2 extends xv2 implements NavigableSet {

    /* renamed from: g */
    final /* synthetic */ zzfnd f30982g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uv2(zzfnd zzfndVar, NavigableMap navigableMap) {
        super(zzfndVar, navigableMap);
        this.f30982g = zzfndVar;
    }

    @Override // com.google.android.gms.internal.ads.xv2
    /* renamed from: c */
    final /* bridge */ /* synthetic */ SortedMap mo9045c() {
        return (NavigableMap) ((SortedMap) this.f28213d);
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f28213d)).ceilingKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return descendingSet().iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new uv2(this.f30982g, ((NavigableMap) ((SortedMap) this.f28213d)).descendingMap());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f28213d)).floorKey(obj);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        return new uv2(this.f30982g, ((NavigableMap) ((SortedMap) this.f28213d)).headMap(obj, z));
    }

    @Override // com.google.android.gms.internal.ads.xv2, java.util.SortedSet, java.util.NavigableSet
    public final /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f28213d)).higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f28213d)).lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        return jx2.m14015a(iterator());
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        return jx2.m14015a(descendingIterator());
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new uv2(this.f30982g, ((NavigableMap) ((SortedMap) this.f28213d)).subMap(obj, z, obj2, z2));
    }

    @Override // com.google.android.gms.internal.ads.xv2, java.util.SortedSet, java.util.NavigableSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        return new uv2(this.f30982g, ((NavigableMap) ((SortedMap) this.f28213d)).tailMap(obj, z));
    }

    @Override // com.google.android.gms.internal.ads.xv2, java.util.SortedSet, java.util.NavigableSet
    public final /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }
}
