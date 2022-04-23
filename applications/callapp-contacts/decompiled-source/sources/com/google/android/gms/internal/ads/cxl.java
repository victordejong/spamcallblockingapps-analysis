package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxl.class */
abstract class cxl<T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    private int f26538a = cxn.f26541b;

    /* renamed from: b  reason: collision with root package name */
    private T f26539b;

    protected abstract T a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        this.f26538a = cxn.f26542c;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f26538a != cxn.f26543d) {
            int i = cxk.f26537a[this.f26538a - 1];
            if (i == 1) {
                return false;
            }
            if (i == 2) {
                return true;
            }
            this.f26538a = cxn.f26543d;
            this.f26539b = a();
            if (this.f26538a == cxn.f26542c) {
                return false;
            }
            this.f26538a = cxn.f26540a;
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f26538a = cxn.f26541b;
            T t = this.f26539b;
            this.f26539b = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
