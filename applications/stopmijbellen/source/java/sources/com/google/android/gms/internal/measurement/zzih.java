package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzih.class */
final class zzih extends WeakReference<Throwable> {
    private final int zza;

    public zzih(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.zza = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzih.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzih zzihVar = (zzih) obj;
        return this.zza == zzihVar.zza && get() == zzihVar.get();
    }

    public final int hashCode() {
        return this.zza;
    }
}
