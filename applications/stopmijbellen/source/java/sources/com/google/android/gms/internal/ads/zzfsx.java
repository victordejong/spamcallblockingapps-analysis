package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfsx.class */
final class zzfsx extends zzfuu {
    public final Iterator<? extends zzfsn> zza;
    public Iterator zzb = zzfte.zza;
    public final /* synthetic */ zzfta zzc;

    public zzfsx(zzfta zzftaVar) {
        this.zzc = zzftaVar;
        this.zza = ((zzfss) zzftaVar.zzb.values()).listIterator(0);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext() || this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.zzb.hasNext()) {
            this.zzb = this.zza.next().iterator();
        }
        return this.zzb.next();
    }
}
