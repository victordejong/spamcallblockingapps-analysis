package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepu.class */
final class zzepu implements Iterator<E> {
    private int pos = 0;
    private final /* synthetic */ zzepr zzjbm;

    public zzepu(zzepr zzeprVar) {
        this.zzjbm = zzeprVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.pos < this.zzjbm.zzjbk.size() || this.zzjbm.zzjbl.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [E, java.lang.Object] */
    @Override // java.util.Iterator
    public final E next() {
        while (this.pos >= this.zzjbm.zzjbk.size()) {
            this.zzjbm.zzjbk.add(this.zzjbm.zzjbl.next());
        }
        List<E> list = this.zzjbm.zzjbk;
        int i = this.pos;
        this.pos = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
