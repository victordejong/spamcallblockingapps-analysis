package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmp.class */
public final class zzfmp implements Iterator<Map.Entry> {
    public final Iterator<Map.Entry> zza;
    public Collection zzb;
    public final /* synthetic */ zzfmq zzc;

    public zzfmp(zzfmq zzfmqVar) {
        this.zzc = zzfmqVar;
        this.zza = zzfmqVar.zza.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        Map.Entry next = this.zza.next();
        this.zzb = (Collection) next.getValue();
        return this.zzc.zzb(next);
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        zzflx.zzb(this.zzb != null, "no calls to next() since the last call to remove()");
        this.zza.remove();
        zzfnd zzfndVar = this.zzc.zzb;
        i = zzfndVar.zzb;
        zzfndVar.zzb = i - this.zzb.size();
        this.zzb.clear();
        this.zzb = null;
    }
}
