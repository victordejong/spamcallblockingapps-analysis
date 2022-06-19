package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hx2.class */
final class hx2 extends jy2 {

    /* renamed from: d */
    boolean f24070d;

    /* renamed from: e */
    final /* synthetic */ Object f24071e;

    public hx2(Object obj) {
        this.f24071e = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f24070d;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f24070d) {
            this.f24070d = true;
            return this.f24071e;
        }
        throw new NoSuchElementException();
    }
}
