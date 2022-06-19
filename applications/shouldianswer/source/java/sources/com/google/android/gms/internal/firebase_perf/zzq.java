package com.google.android.gms.internal.firebase_perf;

import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzq.class */
public abstract class zzq<E> extends zzk<E> implements Set<E> {
    @NullableDecl
    private transient zzj<E> zzn;

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        return zzv.zza(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzv.zza(this);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzk
    public zzj<E> zzc() {
        zzj<E> zzjVar = this.zzn;
        zzj<E> zzjVar2 = zzjVar;
        if (zzjVar == null) {
            zzjVar2 = zzk();
            this.zzn = zzjVar2;
        }
        return zzjVar2;
    }

    zzj<E> zzk() {
        return zzj.zza(toArray());
    }
}
