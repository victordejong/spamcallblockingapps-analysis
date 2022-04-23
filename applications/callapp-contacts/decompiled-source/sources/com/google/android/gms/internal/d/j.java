package com.google.android.gms.internal.d;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/j.class */
final class j extends WeakReference<Throwable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f28871a;

    public j(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f28871a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        j jVar = (j) obj;
        return this.f28871a == jVar.f28871a && get() == jVar.get();
    }

    public final int hashCode() {
        return this.f28871a;
    }
}
