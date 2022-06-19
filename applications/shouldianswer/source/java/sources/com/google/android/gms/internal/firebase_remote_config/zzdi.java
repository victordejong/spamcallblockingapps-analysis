package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdi.class */
abstract class zzdi<T> implements Iterator<T> {
    private int zzgw = zzdk.zzgz;
    @NullableDecl
    private T zzgx;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzdt.checkState(this.zzgw != zzdk.zzhb);
        int i = zzdh.zzgv[this.zzgw - 1];
        if (i != 1) {
            if (i == 2) {
                return false;
            }
            this.zzgw = zzdk.zzhb;
            this.zzgx = zzcg();
            if (this.zzgw == zzdk.zzha) {
                return false;
            }
            this.zzgw = zzdk.zzgy;
            return true;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.zzgw = zzdk.zzgz;
            T t = this.zzgx;
            this.zzgx = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    protected abstract T zzcg();

    @NullableDecl
    public final T zzch() {
        this.zzgw = zzdk.zzha;
        return null;
    }
}
