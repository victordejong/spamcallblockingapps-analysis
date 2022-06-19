package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmx.class */
public class zzfmx extends zzfmq implements SortedMap {
    public SortedSet zzd;
    public final /* synthetic */ zzfnd zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfmx(zzfnd zzfndVar, SortedMap sortedMap) {
        super(zzfndVar, sortedMap);
        this.zze = zzfndVar;
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return zzg().comparator();
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return zzg().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new zzfmx(this.zze, zzg().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return zzg().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new zzfmx(this.zze, zzg().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new zzfmx(this.zze, zzg().tailMap(obj));
    }

    /* renamed from: zze */
    public SortedSet zzh() {
        return new zzfmy(this.zze, zzg());
    }

    /* renamed from: zzf */
    public SortedSet keySet() {
        SortedSet sortedSet = this.zzd;
        SortedSet sortedSet2 = sortedSet;
        if (sortedSet == null) {
            sortedSet2 = zzh();
            this.zzd = sortedSet2;
        }
        return sortedSet2;
    }

    public SortedMap zzg() {
        return (SortedMap) ((zzfmq) this).zza;
    }
}
