package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfoo.class */
public final class zzfoo extends zzfql {
    public final Iterator<? extends zzfoe> zza;
    public Iterator zzb = zzfov.zza;
    public final /* synthetic */ zzfor zzc;

    public zzfoo(zzfor zzforVar) {
        this.zzc = zzforVar;
        this.zza = ((zzfoj) zzforVar.zzb.values()).listIterator(0);
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
