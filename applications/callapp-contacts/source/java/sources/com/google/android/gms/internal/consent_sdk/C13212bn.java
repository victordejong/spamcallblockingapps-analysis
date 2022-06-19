package com.google.android.gms.internal.consent_sdk;

import java.util.Objects;
/* renamed from: com.google.android.gms.internal.consent_sdk.bn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bn.class */
final class C13212bn extends AbstractC13207bj {

    /* renamed from: a */
    private final C13211bm f50396a = new C13211bm();

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13207bj
    /* renamed from: a */
    public final void mo13556a(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.f50396a.m13557a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
