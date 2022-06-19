package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxi.class */
final class zzdxi extends zzdya<T> {
    private boolean zzhxy;
    private final /* synthetic */ Object zzhxz;

    public zzdxi(Object obj) {
        this.zzhxz = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.zzhxy;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (!this.zzhxy) {
            this.zzhxy = true;
            return this.zzhxz;
        }
        throw new NoSuchElementException();
    }
}
