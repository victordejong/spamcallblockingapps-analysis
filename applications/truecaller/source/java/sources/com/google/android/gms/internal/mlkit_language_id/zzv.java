package com.google.android.gms.internal.mlkit_language_id;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzv.class */
public final class zzv extends WeakReference<Throwable> {
    private final int zza;

    public zzv(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zza = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzv.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzv zzvVar = (zzv) obj;
        return this.zza == zzvVar.zza && get() == zzvVar.get();
    }

    public final int hashCode() {
        return this.zza;
    }
}
