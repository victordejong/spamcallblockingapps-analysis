package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vg3.class */
final class vg3 implements Iterator<String> {

    /* renamed from: d */
    final Iterator<String> f31178d;

    /* renamed from: e */
    final /* synthetic */ wg3 f31179e;

    public vg3(wg3 wg3Var) {
        we3 we3Var;
        this.f31179e = wg3Var;
        we3Var = wg3Var.f31579d;
        this.f31178d = we3Var.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f31178d.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f31178d.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
