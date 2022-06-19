package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrc.class */
public class zzfrc extends zzfto {
    public final /* synthetic */ zzfrm zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfrc(zzfrm zzfrmVar, Map map) {
        super(map);
        this.zza = zzfrmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfto, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        zzftg.zzb(iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        return this.zzd.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        return this == obj || this.zzd.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zzd.keySet().hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfto, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfrb(this, this.zzd.entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.zzfto, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        int i;
        Collection collection = (Collection) this.zzd.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfrm zzfrmVar = this.zza;
            i = zzfrmVar.zzb;
            zzfrmVar.zzb = i - size;
            return size > 0;
        }
        return false;
    }
}
