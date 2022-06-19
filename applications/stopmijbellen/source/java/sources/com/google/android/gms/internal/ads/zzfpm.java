package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfpm.class */
abstract class zzfpm<T> implements Iterator<T> {
    @CheckForNull
    private T zza;
    private int zzb = 2;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zzb;
        if (i != 4) {
            int i2 = i - 1;
            if (i == 0) {
                throw null;
            }
            if (i2 == 0) {
                return true;
            }
            if (i2 == 2) {
                return false;
            }
            this.zzb = 4;
            this.zza = zza();
            if (this.zzb == 3) {
                return false;
            }
            this.zzb = 1;
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.zzb = 2;
            T t = this.zza;
            this.zza = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @CheckForNull
    public abstract T zza();

    @CheckForNull
    public final T zzb() {
        this.zzb = 3;
        return null;
    }
}
