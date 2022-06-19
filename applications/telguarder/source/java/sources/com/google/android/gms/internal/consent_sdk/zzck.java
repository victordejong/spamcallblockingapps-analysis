package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzck.class */
final class zzck extends WeakReference<Throwable> {
    private final int zza;

    public zzck(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zza = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzck zzckVar = (zzck) obj;
        return this.zza == zzckVar.zza && get() == zzckVar.get();
    }

    public final int hashCode() {
        return this.zza;
    }
}
