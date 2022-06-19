package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgis.class */
public final class zzgis implements Iterator<String> {
    public final Iterator<String> zza;
    public final /* synthetic */ zzgit zzb;

    public zzgis(zzgit zzgitVar) {
        zzggs zzggsVar;
        this.zzb = zzgitVar;
        zzggsVar = zzgitVar.zza;
        this.zza = zzggsVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
