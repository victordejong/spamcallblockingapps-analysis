package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgnj.class */
final class zzgnj implements Iterator<String> {
    public final Iterator<String> zza;
    public final /* synthetic */ zzgnk zzb;

    public zzgnj(zzgnk zzgnkVar) {
        zzgld zzgldVar;
        this.zzb = zzgnkVar;
        zzgldVar = zzgnkVar.zza;
        this.zza = zzgldVar.iterator();
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
