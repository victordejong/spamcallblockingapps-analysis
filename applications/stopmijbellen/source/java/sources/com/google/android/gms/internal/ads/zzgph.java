package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgph.class */
final class zzgph implements Iterator {
    public int zza = 0;
    public final /* synthetic */ zzgpi zzb;

    public zzgph(zzgpi zzgpiVar) {
        this.zzb = zzgpiVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb.zza.size() || this.zzb.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.zza >= this.zzb.zza.size()) {
            zzgpi zzgpiVar = this.zzb;
            zzgpiVar.zza.add(zzgpiVar.zzb.next());
            return next();
        }
        List<E> list = this.zzb.zza;
        int i = this.zza;
        this.zza = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
