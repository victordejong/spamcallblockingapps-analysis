package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.measurement.g4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g4.class */
final class C7377g4 extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f34484a;

    public C7377g4(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f34484a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C7377g4.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C7377g4 c7377g4 = (C7377g4) obj;
        return this.f34484a == c7377g4.f34484a && get() == c7377g4.get();
    }

    public final int hashCode() {
        return this.f34484a;
    }
}
