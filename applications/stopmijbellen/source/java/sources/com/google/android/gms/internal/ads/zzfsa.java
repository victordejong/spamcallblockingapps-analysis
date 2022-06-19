package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsa.class */
final class zzfsa extends AbstractCollection {
    public final /* synthetic */ zzfsb zza;

    public zzfsa(zzfsb zzfsbVar) {
        this.zza = zzfsbVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzfsb zzfsbVar = this.zza;
        Map zzl = zzfsbVar.zzl();
        return zzl != null ? zzl.values().iterator() : new zzfru(zzfsbVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.zza.size();
    }
}
