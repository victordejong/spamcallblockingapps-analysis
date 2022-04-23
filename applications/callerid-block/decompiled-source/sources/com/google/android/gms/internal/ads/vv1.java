package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vv1.class */
abstract class vv1<T> implements Iterator<T> {
    @NullableDecl

    /* renamed from: b */
    private T f8960b;

    /* renamed from: c */
    private int f8961c = 2;

    protected vv1() {
    }

    /* renamed from: b */
    protected abstract T m5179b();

    @NullableDecl
    /* renamed from: c */
    protected final T m5178c() {
        this.f8961c = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f8961c;
        if (i != 4) {
            int i2 = i - 1;
            if (i == 0) {
                throw null;
            } else if (i2 == 0) {
                return true;
            } else {
                if (i2 == 2) {
                    return false;
                }
                this.f8961c = 4;
                this.f8960b = m5179b();
                if (this.f8961c == 3) {
                    return false;
                }
                this.f8961c = 1;
                return true;
            }
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f8961c = 2;
            T t = this.f8960b;
            this.f8960b = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
