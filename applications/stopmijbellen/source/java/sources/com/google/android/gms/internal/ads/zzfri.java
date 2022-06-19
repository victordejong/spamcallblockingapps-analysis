package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfri.class */
class zzfri implements Iterator {
    public final Iterator zza;
    public final Collection zzb;
    public final /* synthetic */ zzfrj zzc;

    public zzfri(zzfrj zzfrjVar) {
        this.zzc = zzfrjVar;
        Collection collection = zzfrjVar.zzb;
        this.zzb = collection;
        this.zza = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public zzfri(zzfrj zzfrjVar, Iterator it2) {
        this.zzc = zzfrjVar;
        this.zzb = zzfrjVar.zzb;
        this.zza = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zza();
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        zza();
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.zza.remove();
        zzfrm zzfrmVar = this.zzc.zze;
        i = zzfrmVar.zzb;
        zzfrmVar.zzb = i - 1;
        this.zzc.zzc();
    }

    public final void zza() {
        this.zzc.zzb();
        if (this.zzc.zzb == this.zzb) {
            return;
        }
        throw new ConcurrentModificationException();
    }
}
