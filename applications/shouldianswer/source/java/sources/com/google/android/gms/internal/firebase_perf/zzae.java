package com.google.android.gms.internal.firebase_perf;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzae.class */
final class zzae extends WeakReference<Throwable> {
    private final int zzz;

    public zzae(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.zzz = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzae zzaeVar = (zzae) obj;
        return this.zzz == zzaeVar.zzz && get() == zzaeVar.get();
    }

    public final int hashCode() {
        return this.zzz;
    }
}
