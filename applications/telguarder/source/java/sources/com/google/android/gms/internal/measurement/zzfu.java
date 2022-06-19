package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfu.class */
final class zzfu extends WeakReference<Throwable> {
    private final int zza;

    public zzfu(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.zza = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzfu zzfuVar = (zzfu) obj;
        return this.zza == zzfuVar.zza && get() == zzfuVar.get();
    }

    public final int hashCode() {
        return this.zza;
    }
}
