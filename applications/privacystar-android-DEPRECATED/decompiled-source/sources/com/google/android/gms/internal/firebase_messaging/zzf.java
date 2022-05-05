package com.google.android.gms.internal.firebase_messaging;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzf.class */
final class zzf extends WeakReference<Throwable> {
    private final int zzg;

    public zzf(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th == null) {
            throw new NullPointerException("The referent cannot be null");
        }
        this.zzg = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzf zzfVar = (zzf) obj;
        return this.zzg == zzfVar.zzg && get() == zzfVar.get();
    }

    public final int hashCode() {
        return this.zzg;
    }
}
