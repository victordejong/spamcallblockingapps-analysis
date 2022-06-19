package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cze.class */
final class cze extends czu<T> {

    /* renamed from: a */
    private boolean f46790a;

    /* renamed from: b */
    private final /* synthetic */ Object f46791b;

    public cze(Object obj) {
        this.f46791b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f46790a;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (!this.f46790a) {
            this.f46790a = true;
            return this.f46791b;
        }
        throw new NoSuchElementException();
    }
}
