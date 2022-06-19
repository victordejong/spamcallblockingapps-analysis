package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdh.class */
final class zzdh extends WeakReference<Throwable> {
    private final int zza;

    public zzdh(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.zza = System.identityHashCode(th);
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
        zzdh zzdhVar = (zzdh) obj;
        return this.zza == zzdhVar.zza && get() == zzdhVar.get();
    }

    public final int hashCode() {
        return this.zza;
    }
}
