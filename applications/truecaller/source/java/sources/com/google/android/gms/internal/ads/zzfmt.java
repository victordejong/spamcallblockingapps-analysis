package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmt.class */
public class zzfmt extends zzfpf {
    public final /* synthetic */ zzfnd zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfmt(zzfnd zzfndVar, Map map) {
        super(map);
        this.zza = zzfndVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpf, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        zzfox.zzb(iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        return this.zzd.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return this == obj || this.zzd.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zzd.keySet().hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfpf, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfms(this, this.zzd.entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.zzfpf, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i;
        Collection collection = (Collection) this.zzd.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfnd zzfndVar = this.zza;
            i = zzfndVar.zzb;
            zzfndVar.zzb = i - size;
            return size > 0;
        }
        return false;
    }
}
