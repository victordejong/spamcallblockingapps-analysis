package com.google.android.libraries.places.internal;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzvd.class */
public final class zzvd implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzvb zzb;

    public zzvd(zzvb zzvbVar) {
        this.zzb = zzvbVar;
        this.zza = zzvb.zza(zzvbVar).iterator();
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
