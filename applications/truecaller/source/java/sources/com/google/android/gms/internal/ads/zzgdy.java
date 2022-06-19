package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdy.class */
public final class zzgdy extends WeakReference<Throwable> {
    private final int zza;

    public zzgdy(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zza = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzgdy.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzgdy zzgdyVar = (zzgdy) obj;
        return this.zza == zzgdyVar.zza && get() == zzgdyVar.get();
    }

    public final int hashCode() {
        return this.zza;
    }
}
