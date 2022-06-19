package com.google.android.play.core.internal;

import java.util.Objects;
/* renamed from: com.google.android.play.core.internal.k0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/k0.class */
final class C8499k0 extends AbstractC8492h0 {

    /* renamed from: a */
    private final C8497j0 f38045a = new C8497j0();

    @Override // com.google.android.play.core.internal.AbstractC8492h0
    /* renamed from: a */
    public final void mo3506a(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.f38045a.m3508a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
