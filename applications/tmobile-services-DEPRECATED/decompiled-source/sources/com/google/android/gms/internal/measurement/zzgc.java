package com.google.android.gms.internal.measurement;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgc.class */
final class zzgc extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f8446a;

    public zzgc(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f8446a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzgc.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzgc zzgcVar = (zzgc) obj;
        return this.f8446a == zzgcVar.f8446a && get() == zzgcVar.get();
    }

    public final int hashCode() {
        return this.f8446a;
    }
}
