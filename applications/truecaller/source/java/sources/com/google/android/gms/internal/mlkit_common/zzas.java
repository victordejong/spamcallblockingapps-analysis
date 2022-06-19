package com.google.android.gms.internal.mlkit_common;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzas.class */
public final class zzas extends WeakReference<Throwable> {
    private final int zza;

    public zzas(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zza = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzas.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzas zzasVar = (zzas) obj;
        return this.zza == zzasVar.zza && get() == zzasVar.get();
    }

    public final int hashCode() {
        return this.zza;
    }
}
