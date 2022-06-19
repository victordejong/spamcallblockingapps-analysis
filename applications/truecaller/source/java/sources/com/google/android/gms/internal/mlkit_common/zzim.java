package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzim.class */
public final class zzim implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzik zzb;

    public zzim(zzik zzikVar) {
        zzgi zzgiVar;
        this.zzb = zzikVar;
        zzgiVar = zzikVar.zza;
        this.zza = zzgiVar.iterator();
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
