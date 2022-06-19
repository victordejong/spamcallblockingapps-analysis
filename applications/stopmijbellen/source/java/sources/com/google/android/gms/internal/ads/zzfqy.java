package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqy.class */
final class zzfqy implements Iterator<Map.Entry> {
    public final Iterator<Map.Entry> zza;
    @CheckForNull
    public Collection zzb;
    public final /* synthetic */ zzfqz zzc;

    public zzfqy(zzfqz zzfqzVar) {
        this.zzc = zzfqzVar;
        this.zza = zzfqzVar.zza.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        Map.Entry next = this.zza.next();
        this.zzb = (Collection) next.getValue();
        return this.zzc.zza(next);
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        zzfqg.zzg(this.zzb != null, "no calls to next() since the last call to remove()");
        this.zza.remove();
        zzfrm zzfrmVar = this.zzc.zzb;
        i = zzfrmVar.zzb;
        zzfrmVar.zzb = i - this.zzb.size();
        this.zzb.clear();
        this.zzb = null;
    }
}
