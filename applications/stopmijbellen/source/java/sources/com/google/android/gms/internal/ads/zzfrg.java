package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrg.class */
public class zzfrg extends zzfqz implements SortedMap {
    @CheckForNull
    public SortedSet zzd;
    public final /* synthetic */ zzfrm zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfrg(zzfrm zzfrmVar, SortedMap sortedMap) {
        super(zzfrmVar, sortedMap);
        this.zze = zzfrmVar;
    }

    @Override // java.util.SortedMap
    @CheckForNull
    public final Comparator comparator() {
        return zzf().comparator();
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return zzf().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new zzfrg(this.zze, zzf().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return zzf().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new zzfrg(this.zze, zzf().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new zzfrg(this.zze, zzf().tailMap(obj));
    }

    public SortedMap zzf() {
        return (SortedMap) ((zzfqz) this).zza;
    }

    /* renamed from: zzg */
    public SortedSet zze() {
        return new zzfrh(this.zze, zzf());
    }

    /* renamed from: zzh */
    public SortedSet keySet() {
        SortedSet sortedSet = this.zzd;
        SortedSet sortedSet2 = sortedSet;
        if (sortedSet == null) {
            sortedSet2 = zze();
            this.zzd = sortedSet2;
        }
        return sortedSet2;
    }
}
