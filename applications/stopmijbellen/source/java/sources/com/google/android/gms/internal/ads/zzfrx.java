package com.google.android.gms.internal.ads;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrx.class */
abstract class zzfrx<T> implements Iterator<T> {
    public int zzb;
    public int zzc;
    public int zzd = -1;
    public final /* synthetic */ zzfsb zze;

    public /* synthetic */ zzfrx(zzfsb zzfsbVar, zzfrw zzfrwVar) {
        int i;
        this.zze = zzfsbVar;
        i = zzfsbVar.zzf;
        this.zzb = i;
        this.zzc = zzfsbVar.zze();
    }

    private final void zzb() {
        int i;
        i = this.zze.zzf;
        if (i == this.zzb) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc >= 0;
    }

    @Override // java.util.Iterator
    public final T next() {
        zzb();
        if (hasNext()) {
            int i = this.zzc;
            this.zzd = i;
            T zza = zza(i);
            this.zzc = this.zze.zzf(this.zzc);
            return zza;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzb();
        zzfqg.zzg(this.zzd >= 0, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        zzfsb zzfsbVar = this.zze;
        zzfsbVar.remove(zzfsb.zzg(zzfsbVar, this.zzd));
        this.zzc--;
        this.zzd = -1;
    }

    public abstract T zza(int i);
}
