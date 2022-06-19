package com.google.android.gms.internal.mlkit_translate;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzmz.class */
public final class zzmz implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzmx zzb;

    public zzmz(zzmx zzmxVar) {
        zzkv zzkvVar;
        this.zzb = zzmxVar;
        zzkvVar = zzmxVar.zza;
        this.zza = zzkvVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
