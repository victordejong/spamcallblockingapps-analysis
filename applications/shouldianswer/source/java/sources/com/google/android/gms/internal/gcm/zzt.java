package com.google.android.gms.internal.gcm;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/gcm/zzt.class */
final class zzt extends WeakReference<Throwable> {
    private final int zzdv;

    public zzt(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.zzdv = System.identityHashCode(th);
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
        zzt zztVar = (zzt) obj;
        return this.zzdv == zztVar.zzdv && get() == zztVar.get();
    }

    public final int hashCode() {
        return this.zzdv;
    }
}
