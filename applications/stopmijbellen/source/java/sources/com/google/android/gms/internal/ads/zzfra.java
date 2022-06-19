package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfra.class */
public class zzfra<T> implements Iterator<T> {
    public final Iterator<Map.Entry> zza;
    @CheckForNull
    public Object zzb = null;
    @CheckForNull
    public Collection zzc = null;
    public Iterator zzd = zzftf.INSTANCE;
    public final /* synthetic */ zzfrm zze;

    public zzfra(zzfrm zzfrmVar) {
        Map map;
        this.zze = zzfrmVar;
        map = zzfrmVar.zza;
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
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.zza.remove();
        }
        zzfrm zzfrmVar = this.zze;
        i = zzfrmVar.zzb;
        zzfrmVar.zzb = i - 1;
    }
}
