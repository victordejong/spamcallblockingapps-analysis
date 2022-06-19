package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/va2.class */
final class va2 extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f8874a;

    public va2(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f8874a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != va2.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        va2 va2Var = (va2) obj;
        return this.f8874a == va2Var.f8874a && get() == va2Var.get();
    }

    public final int hashCode() {
        return this.f8874a;
    }
}
