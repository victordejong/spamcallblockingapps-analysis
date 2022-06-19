package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzal.class */
public final class zzal implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzam zzb;

    public zzal(zzam zzamVar) {
        Bundle bundle;
        this.zzb = zzamVar;
        bundle = this.zzb.zza;
        this.zza = bundle.keySet().iterator();
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
        throw new UnsupportedOperationException("Remove not supported");
    }
}
