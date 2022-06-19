package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoi.class */
final class zzeoi implements Iterator<String> {
    private final /* synthetic */ zzeog zzivd;
    private Iterator<String> zzivz;

    public zzeoi(zzeog zzeogVar) {
        zzelv zzelvVar;
        this.zzivd = zzeogVar;
        zzelvVar = zzeogVar.zzive;
        this.zzivz = zzelvVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzivz.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzivz.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
