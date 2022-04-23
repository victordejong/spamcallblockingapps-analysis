package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bl.class */
final class bl extends WeakReference<Throwable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f28762a;

    public bl(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.f28762a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        bl blVar = (bl) obj;
        return this.f28762a == blVar.f28762a && get() == blVar.get();
    }

    public final int hashCode() {
        return this.f28762a;
    }
}
