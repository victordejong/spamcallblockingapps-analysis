package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzml.class */
final class zzml implements Iterator<String> {
    public final Iterator<String> zza;
    public final /* synthetic */ zzmm zzb;

    public zzml(zzmm zzmmVar) {
        zzks zzksVar;
        this.zzb = zzmmVar;
        zzksVar = zzmmVar.zza;
        this.zza = zzksVar.iterator();
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
