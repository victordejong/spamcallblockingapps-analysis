package com.google.android.gms.internal.ads;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnn.class */
public abstract class zzfnn<T> implements Iterator<T> {
    public int zzb;
    public int zzc;
    public int zzd = -1;
    public final /* synthetic */ zzfns zze;

    public /* synthetic */ zzfnn(zzfns zzfnsVar, zzfnq zzfnqVar) {
        int i;
        this.zze = zzfnsVar;
        i = zzfnsVar.zzf;
        this.zzb = i;
        this.zzc = zzfnsVar.zzm();
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
            this.zzc = this.zze.zzn(this.zzc);
            return zza;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzb();
        zzflx.zzb(this.zzd >= 0, "no calls to next() since the last call to remove()");
        this.zzb += 32;
        zzfns zzfnsVar = this.zze;
        zzfnsVar.remove(zzfns.zzs(zzfnsVar, this.zzd));
        this.zzc--;
        this.zzd = -1;
    }

    public abstract T zza(int i);
}
