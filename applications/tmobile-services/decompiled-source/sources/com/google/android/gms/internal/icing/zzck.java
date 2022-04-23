package com.google.android.gms.internal.icing;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzck.class */
final class zzck extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f7949a;

    public zzck(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f7949a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzck.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzck zzckVar = (zzck) obj;
        return this.f7949a == zzckVar.f7949a && get() == zzckVar.get();
    }

    public final int hashCode() {
        return this.f7949a;
    }
}
