package com.google.android.gms.internal.firebase_remote_config;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzef.class */
final class zzef extends WeakReference<Throwable> {
    private final int zziy;

    public zzef(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.zziy = System.identityHashCode(th);
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
        zzef zzefVar = (zzef) obj;
        return this.zziy == zzefVar.zziy && get() == zzefVar.get();
    }

    public final int hashCode() {
        return this.zziy;
    }
}
