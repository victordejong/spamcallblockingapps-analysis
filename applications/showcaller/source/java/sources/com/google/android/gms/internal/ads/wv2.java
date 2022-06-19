package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wv2.class */
public class wv2 extends pv2 implements SortedMap {

    /* renamed from: h */
    SortedSet f31802h;

    /* renamed from: i */
    final /* synthetic */ zzfnd f31803i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wv2(zzfnd zzfndVar, SortedMap sortedMap) {
        super(zzfndVar, sortedMap);
        this.f31803i = zzfndVar;
    }

    /* renamed from: c */
    SortedSet mo9437c() {
        return new xv2(this.f31803i, mo9435e());
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return mo9435e().comparator();
    }

    /* renamed from: d */
    public SortedSet keySet() {
        SortedSet sortedSet = this.f31802h;
        SortedSet sortedSet2 = sortedSet;
        if (sortedSet == null) {
            sortedSet2 = mo9437c();
            this.f31802h = sortedSet2;
        }
        return sortedSet2;
    }

    /* renamed from: e */
    SortedMap mo9435e() {
        return (SortedMap) this.f28176f;
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return mo9435e().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new wv2(this.f31803i, mo9435e().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return mo9435e().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new wv2(this.f31803i, mo9435e().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new wv2(this.f31803i, mo9435e().tailMap(obj));
    }
}
