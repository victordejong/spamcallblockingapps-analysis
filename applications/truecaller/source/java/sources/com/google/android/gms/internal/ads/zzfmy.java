package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmy.class */
public class zzfmy extends zzfmt implements SortedSet {
    public final /* synthetic */ zzfnd zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfmy(zzfnd zzfndVar, SortedMap sortedMap) {
        super(zzfndVar, sortedMap);
        this.zzc = zzfndVar;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return zza().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return zza().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new zzfmy(this.zzc, zza().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return zza().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new zzfmy(this.zzc, zza().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new zzfmy(this.zzc, zza().tailMap(obj));
    }

    public SortedMap zza() {
        return (SortedMap) this.zzd;
    }
}
