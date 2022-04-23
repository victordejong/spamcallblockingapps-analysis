package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/eq.class */
final class eq extends WeakReference<Throwable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f28996a;

    public eq(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f28996a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        eq eqVar = (eq) obj;
        return this.f28996a == eqVar.f28996a && get() == eqVar.get();
    }

    public final int hashCode() {
        return this.f28996a;
    }
}
