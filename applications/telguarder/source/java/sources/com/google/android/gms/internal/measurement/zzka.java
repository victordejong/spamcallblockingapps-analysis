package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzka.class */
final class zzka implements Iterator<String> {
    final Iterator<String> zza;
    final /* synthetic */ zzkb zzb;

    public zzka(zzkb zzkbVar) {
        zzih zzihVar;
        this.zzb = zzkbVar;
        zzihVar = zzkbVar.zza;
        this.zza = zzihVar.iterator();
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
