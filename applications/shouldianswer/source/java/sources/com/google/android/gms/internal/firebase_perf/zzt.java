package com.google.android.gms.internal.firebase_perf;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzt.class */
final class zzt<K> extends zzq<K> {
    private final transient zzj<K> zze;
    private final transient zzo<K, ?> zzo;

    public zzt(zzo<K, ?> zzoVar, zzj<K> zzjVar) {
        this.zzo = zzoVar;
        this.zze = zzjVar;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(@NullableDecl Object obj) {
        return this.zzo.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzq, com.google.android.gms.internal.firebase_perf.zzk, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzo.size();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final int zza(Object[] objArr, int i) {
        return zzc().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public final zzy<K> zzb() {
        return (zzy) zzc().iterator();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzq, com.google.android.gms.internal.firebase_perf.zzk
    public final zzj<K> zzc() {
        return this.zze;
    }
}
