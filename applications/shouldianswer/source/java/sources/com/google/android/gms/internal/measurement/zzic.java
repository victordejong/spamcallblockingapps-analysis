package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzic.class */
final class zzic implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzia zzb;

    public zzic(zzia zziaVar) {
        zzfv zzfvVar;
        this.zzb = zziaVar;
        zzfvVar = this.zzb.zza;
        this.zza = zzfvVar.iterator();
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
