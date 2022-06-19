package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmr.class */
public class zzfmr<T> implements Iterator<T> {
    public final Iterator<Map.Entry> zza;
    public Object zzb = null;
    public Collection zzc = null;
    public Iterator zzd = zzfow.INSTANCE;
    public final /* synthetic */ zzfnd zze;

    public zzfmr(zzfnd zzfndVar) {
        Map map;
        this.zze = zzfndVar;
        map = zzfndVar.zza;
        this.zza = map.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext() || this.zzd.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!this.zzd.hasNext()) {
            Map.Entry next = this.zza.next();
            this.zzb = next.getKey();
            Collection collection = (Collection) next.getValue();
            this.zzc = collection;
            this.zzd = collection.iterator();
        }
        return (T) this.zzd.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.zzd.remove();
        Collection collection = this.zzc;
        collection.getClass();
        if (collection.isEmpty()) {
            this.zza.remove();
        }
        zzfnd zzfndVar = this.zze;
        i = zzfndVar.zzb;
        zzfndVar.zzb = i - 1;
    }
}
