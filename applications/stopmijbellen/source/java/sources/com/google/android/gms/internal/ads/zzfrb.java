package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrb.class */
public final class zzfrb implements Iterator {
    @CheckForNull
    public Map.Entry zza;
    public final /* synthetic */ Iterator zzb;
    public final /* synthetic */ zzfrc zzc;

    public zzfrb(zzfrc zzfrcVar, Iterator it2) {
        this.zzc = zzfrcVar;
        this.zzb = it2;
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
        zzfqg.zzg(this.zza != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.zza.getValue();
        this.zzb.remove();
        zzfrm zzfrmVar = this.zzc.zza;
        i = zzfrmVar.zzb;
        zzfrmVar.zzb = i - collection.size();
        collection.clear();
        this.zza = null;
    }
}
