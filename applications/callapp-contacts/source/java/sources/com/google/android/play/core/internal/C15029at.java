package com.google.android.play.core.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.play.core.internal.at */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/at.class */
final class C15029at extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f54755a;

    public C15029at(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f54755a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C15029at c15029at = (C15029at) obj;
        return this.f54755a == c15029at.f54755a && get() == c15029at.get();
    }

    public final int hashCode() {
        return this.f54755a;
    }
}
