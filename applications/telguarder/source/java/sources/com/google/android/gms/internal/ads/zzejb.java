package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzejb.class */
final class zzejb extends WeakReference<Throwable> {
    private final int zzilf;

    public zzejb(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zzilf = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzejb zzejbVar = (zzejb) obj;
        return this.zzilf == zzejbVar.zzilf && get() == zzejbVar.get();
    }

    public final int hashCode() {
        return this.zzilf;
    }
}
