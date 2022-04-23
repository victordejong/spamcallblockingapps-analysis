package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cze.class */
final class cze extends czu<T> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f26595a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Object f26596b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cze(Object obj) {
        this.f26596b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f26595a;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (!this.f26595a) {
            this.f26595a = true;
            return this.f26596b;
        }
        throw new NoSuchElementException();
    }
}
