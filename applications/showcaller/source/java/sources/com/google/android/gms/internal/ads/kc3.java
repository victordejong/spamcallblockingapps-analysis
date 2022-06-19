package com.google.android.gms.internal.ads;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kc3.class */
final class kc3 extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f25101a;

    public kc3(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.f25101a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != kc3.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        kc3 kc3Var = (kc3) obj;
        return this.f25101a == kc3Var.f25101a && get() == kc3Var.get();
    }

    public final int hashCode() {
        return this.f25101a;
    }
}
