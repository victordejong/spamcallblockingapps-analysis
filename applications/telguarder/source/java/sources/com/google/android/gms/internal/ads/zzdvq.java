package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvq.class */
abstract class zzdvq<T> implements Iterator<T> {
    private int zzhvl = zzdvs.zzhvo;
    @NullableDecl
    private T zzhvm;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzhvl != zzdvs.zzhvq) {
            int i = zzdvp.zzhvk[this.zzhvl - 1];
            if (i == 1) {
                return false;
            }
            if (i == 2) {
                return true;
            }
            this.zzhvl = zzdvs.zzhvq;
            this.zzhvm = zzaza();
            if (this.zzhvl == zzdvs.zzhvp) {
                return false;
            }
            this.zzhvl = zzdvs.zzhvn;
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.zzhvl = zzdvs.zzhvo;
            T t = this.zzhvm;
            this.zzhvm = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    protected abstract T zzaza();

    @NullableDecl
    public final T zzazb() {
        this.zzhvl = zzdvs.zzhvp;
        return null;
    }
}
