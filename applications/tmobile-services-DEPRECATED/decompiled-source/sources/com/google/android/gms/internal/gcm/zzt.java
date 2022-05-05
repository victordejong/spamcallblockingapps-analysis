package com.google.android.gms.internal.gcm;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/gcm/zzt.class */
final class zzt extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f7867a;

    public zzt(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f7867a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != zzt.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzt zztVar = (zzt) obj;
        return this.f7867a == zztVar.f7867a && get() == zztVar.get();
    }

    public final int hashCode() {
        return this.f7867a;
    }
}
