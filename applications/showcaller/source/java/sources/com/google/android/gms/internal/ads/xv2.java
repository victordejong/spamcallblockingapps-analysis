package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xv2.class */
public class xv2 extends sv2 implements SortedSet {

    /* renamed from: f */
    final /* synthetic */ zzfnd f32313f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xv2(zzfnd zzfndVar, SortedMap sortedMap) {
        super(zzfndVar, sortedMap);
        this.f32313f = zzfndVar;
    }

    /* renamed from: c */
    SortedMap mo9045c() {
        return (SortedMap) this.f28213d;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return mo9045c().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return mo9045c().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new xv2(this.f32313f, mo9045c().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return mo9045c().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new xv2(this.f32313f, mo9045c().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new xv2(this.f32313f, mo9045c().tailMap(obj));
    }
}
