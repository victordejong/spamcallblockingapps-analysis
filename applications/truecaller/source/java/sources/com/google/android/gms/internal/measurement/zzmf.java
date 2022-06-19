package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzmf.class */
public final class zzmf implements Iterator {
    public final Iterator zza;
    public final /* synthetic */ zzmg zzb;

    public zzmf(zzmg zzmgVar) {
        zzkm zzkmVar;
        this.zzb = zzmgVar;
        zzkmVar = zzmgVar.zza;
        this.zza = zzkmVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
