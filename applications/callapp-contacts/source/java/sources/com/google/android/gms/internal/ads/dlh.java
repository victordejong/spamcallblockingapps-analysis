package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlh.class */
final class dlh extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f47178a;

    public dlh(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.f47178a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        dlh dlhVar = (dlh) obj;
        return this.f47178a == dlhVar.f47178a && get() == dlhVar.get();
    }

    public final int hashCode() {
        return this.f47178a;
    }
}
