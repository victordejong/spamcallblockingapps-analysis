package com.google.android.gms.internal.vision;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzjq.class */
public final class zzjq implements Iterator<String> {
    private final /* synthetic */ zzjo zzaan;
    private Iterator<String> zzabj;

    public zzjq(zzjo zzjoVar) {
        this.zzaan = zzjoVar;
        this.zzabj = zzjo.zza(zzjoVar).iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzabj.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzabj.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
