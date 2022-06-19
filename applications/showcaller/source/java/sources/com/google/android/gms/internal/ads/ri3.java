package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ri3.class */
final class ri3 implements Iterator {

    /* renamed from: d */
    int f28973d = 0;

    /* renamed from: e */
    final /* synthetic */ si3 f28974e;

    public ri3(si3 si3Var) {
        this.f28974e = si3Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f28973d < this.f28974e.f29533e.size() || this.f28974e.f29534f.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f28973d >= this.f28974e.f29533e.size()) {
            si3 si3Var = this.f28974e;
            si3Var.f29533e.add(si3Var.f29534f.next());
            return next();
        }
        List<E> list = this.f28974e.f29533e;
        int i = this.f28973d;
        this.f28973d = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
