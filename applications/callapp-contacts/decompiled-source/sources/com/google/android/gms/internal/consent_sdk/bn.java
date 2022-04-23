package com.google.android.gms.internal.consent_sdk;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bn.class */
final class bn extends bj {

    /* renamed from: a  reason: collision with root package name */
    private final bm f28765a = new bm();

    @Override // com.google.android.gms.internal.consent_sdk.bj
    public final void a(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.f28765a.a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
