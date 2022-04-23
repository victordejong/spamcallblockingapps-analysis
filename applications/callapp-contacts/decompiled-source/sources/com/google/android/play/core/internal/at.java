package com.google.android.play.core.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/at.class */
final class at extends WeakReference<Throwable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f31353a;

    public at(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f31353a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        at atVar = (at) obj;
        return this.f31353a == atVar.f31353a && get() == atVar.get();
    }

    public final int hashCode() {
        return this.f31353a;
    }
}
