package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxl.class */
abstract class cxl<T> implements Iterator<T> {

    /* renamed from: a */
    private int f46729a = cxn.f46732b;

    /* renamed from: b */
    private T f46730b;

    /* renamed from: a */
    protected abstract T mo17054a();

    /* renamed from: b */
    public final T m17078b() {
        this.f46729a = cxn.f46733c;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f46729a != cxn.f46734d) {
            int i = cxk.f46728a[this.f46729a - 1];
            if (i == 1) {
                return false;
            }
            if (i == 2) {
                return true;
            }
            this.f46729a = cxn.f46734d;
            this.f46730b = mo17054a();
            if (this.f46729a == cxn.f46733c) {
                return false;
            }
            this.f46729a = cxn.f46731a;
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f46729a = cxn.f46732b;
            T t = this.f46730b;
            this.f46730b = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
