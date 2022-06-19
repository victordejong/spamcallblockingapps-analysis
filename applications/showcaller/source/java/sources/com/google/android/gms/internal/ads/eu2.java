package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/eu2.class */
abstract class eu2<T> implements Iterator<T> {

    /* renamed from: d */
    private T f22544d;

    /* renamed from: e */
    private int f22545e = 2;

    /* renamed from: a */
    protected abstract T mo15043a();

    /* renamed from: b */
    public final T m15374b() {
        this.f22545e = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f22545e;
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
            this.f22545e = 4;
            this.f22544d = mo15043a();
            if (this.f22545e == 3) {
                return false;
            }
            this.f22545e = 1;
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f22545e = 2;
            T t = this.f22544d;
            this.f22544d = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
