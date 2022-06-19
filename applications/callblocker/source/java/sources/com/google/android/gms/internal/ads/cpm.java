package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpm.class */
final class cpm extends cpy<T> {

    /* renamed from: a */
    private boolean f13502a;

    /* renamed from: b */
    private final /* synthetic */ Object f13503b;

    public cpm(Object obj) {
        this.f13503b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f13502a;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (this.f13502a) {
            throw new NoSuchElementException();
        }
        this.f13502a = true;
        return this.f13503b;
    }
}
