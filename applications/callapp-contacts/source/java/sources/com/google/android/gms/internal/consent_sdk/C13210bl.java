package com.google.android.gms.internal.consent_sdk;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.consent_sdk.bl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bl.class */
final class C13210bl extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f50393a;

    public C13210bl(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        Objects.requireNonNull(th, "The referent cannot be null");
        this.f50393a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C13210bl c13210bl = (C13210bl) obj;
        return this.f50393a == c13210bl.f50393a && get() == c13210bl.get();
    }

    public final int hashCode() {
        return this.f50393a;
    }
}
