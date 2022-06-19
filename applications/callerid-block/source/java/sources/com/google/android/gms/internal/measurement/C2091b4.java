package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.measurement.b4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/b4.class */
final class C2091b4 extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f9734a;

    public C2091b4(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f9734a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C2091b4.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C2091b4 c2091b4 = (C2091b4) obj;
        return this.f9734a == c2091b4.f9734a && get() == c2091b4.get();
    }

    public final int hashCode() {
        return this.f9734a;
    }
}
