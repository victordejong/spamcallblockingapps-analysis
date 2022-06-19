package com.google.android.gms.internal.mlkit_translate;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzbg.class */
public final class zzbg extends WeakReference<Throwable> {
    private final int zza;

    public zzbg(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.zza = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzbg.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzbg zzbgVar = (zzbg) obj;
        return this.zza == zzbgVar.zza && get() == zzbgVar.get();
    }

    public final int hashCode() {
        return this.zza;
    }
}
