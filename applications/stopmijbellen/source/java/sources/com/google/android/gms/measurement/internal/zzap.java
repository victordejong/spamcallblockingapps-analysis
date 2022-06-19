package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzap.class */
final class zzap implements Iterator<String> {
    public final Iterator<String> zza;
    public final /* synthetic */ zzaq zzb;

    public zzap(zzaq zzaqVar) {
        Bundle bundle;
        this.zzb = zzaqVar;
        bundle = zzaqVar.zza;
        this.zza = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }

    /* renamed from: zza */
    public final String next() {
        return this.zza.next();
    }
}
