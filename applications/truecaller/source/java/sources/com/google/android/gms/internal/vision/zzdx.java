package com.google.android.gms.internal.vision;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzdx.class */
public final class zzdx extends WeakReference<Throwable> {
    private final int zzmi;

    public zzdx(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zzmi = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzdx.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzdx zzdxVar = (zzdx) obj;
        return this.zzmi == zzdxVar.zzmi && get() == zzdxVar.get();
    }

    public final int hashCode() {
        return this.zzmi;
    }
}
