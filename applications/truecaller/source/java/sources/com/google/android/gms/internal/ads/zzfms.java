package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfms.class */
public final class zzfms implements Iterator {
    public Map.Entry zza;
    public final /* synthetic */ Iterator zzb;
    public final /* synthetic */ zzfmt zzc;

    public zzfms(zzfmt zzfmtVar, Iterator it) {
        this.zzc = zzfmtVar;
        this.zzb = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.zzb.next();
        this.zza = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        zzflx.zzb(this.zza != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.zza.getValue();
        this.zzb.remove();
        zzfnd zzfndVar = this.zzc.zza;
        i = zzfndVar.zzb;
        zzfndVar.zzb = i - collection.size();
        collection.clear();
        this.zza = null;
    }
}
