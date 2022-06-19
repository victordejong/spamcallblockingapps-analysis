package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkq.class */
public final class zzgkq implements Iterator {
    public int zza = 0;
    public final /* synthetic */ zzgkr zzb;

    public zzgkq(zzgkr zzgkrVar) {
        this.zzb = zzgkrVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb.zza.size() || this.zzb.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.zza >= this.zzb.zza.size()) {
            zzgkr zzgkrVar = this.zzb;
            zzgkrVar.zza.add(zzgkrVar.zzb.next());
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
