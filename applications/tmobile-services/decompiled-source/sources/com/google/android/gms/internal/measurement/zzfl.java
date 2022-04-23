package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfl.class */
final class zzfl extends zzfx<T> {

    /* renamed from: f */
    private boolean f8419f;

    /* renamed from: g */
    private final /* synthetic */ Object f8420g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfl(Object obj) {
        this.f8420g = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f8419f;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (!this.f8419f) {
            this.f8419f = true;
            return this.f8420g;
        }
        throw new NoSuchElementException();
    }
}
