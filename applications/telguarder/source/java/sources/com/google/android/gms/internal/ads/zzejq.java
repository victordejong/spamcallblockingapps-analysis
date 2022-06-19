package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejq.class */
public final class zzejq extends zzejs {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzejr zzily;

    public zzejq(zzejr zzejrVar) {
        this.zzily = zzejrVar;
        this.limit = zzejrVar.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // com.google.android.gms.internal.ads.zzejw
    public final byte nextByte() {
        int i = this.position;
        if (i < this.limit) {
            this.position = i + 1;
            return this.zzily.zzga(i);
        }
        throw new NoSuchElementException();
    }
}
