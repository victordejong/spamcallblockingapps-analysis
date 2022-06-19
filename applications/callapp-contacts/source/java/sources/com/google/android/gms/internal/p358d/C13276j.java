package com.google.android.gms.internal.p358d;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.d.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/j.class */
final class C13276j extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f50531a;

    public C13276j(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f50531a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C13276j c13276j = (C13276j) obj;
        return this.f50531a == c13276j.f50531a && get() == c13276j.get();
    }

    public final int hashCode() {
        return this.f50531a;
    }
}
