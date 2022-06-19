package com.google.android.gms.internal.mlkit_language_id;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzhk.class */
public final class zzhk implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzhi zzb;

    public zzhk(zzhi zzhiVar) {
        zzfg zzfgVar;
        this.zzb = zzhiVar;
        zzfgVar = zzhiVar.zza;
        this.zza = zzfgVar.iterator();
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
