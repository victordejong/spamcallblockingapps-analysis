package com.google.android.play.core.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.play.core.internal.i0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/i0.class */
final class C8495i0 extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f38040a;

    public C8495i0(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f38040a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C8495i0.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C8495i0 c8495i0 = (C8495i0) obj;
        return this.f38040a == c8495i0.f38040a && get() == c8495i0.get();
    }

    public final int hashCode() {
        return this.f38040a;
    }
}
