package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.measurement.eq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/eq.class */
final class C13477eq extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f50695a;

    public C13477eq(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f50695a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C13477eq c13477eq = (C13477eq) obj;
        return this.f50695a == c13477eq.f50695a && get() == c13477eq.get();
    }

    public final int hashCode() {
        return this.f50695a;
    }
}
