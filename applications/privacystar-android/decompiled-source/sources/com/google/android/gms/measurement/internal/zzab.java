package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzab.class */
public final class zzab implements Iterator<String> {
    private Iterator<String> zzain;
    private final /* synthetic */ zzaa zzaio;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(zzaa zzaaVar) {
        Bundle bundle;
        this.zzaio = zzaaVar;
        bundle = this.zzaio.zzaim;
        this.zzain = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzain.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzain.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
