package com.google.android.play.core.internal;

import java.util.Objects;
/* renamed from: com.google.android.play.core.internal.av */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/av.class */
final class C15031av extends AbstractC15028as {

    /* renamed from: a */
    private final C15030au f54758a = new C15030au();

    @Override // com.google.android.play.core.internal.AbstractC15028as
    /* renamed from: a */
    public final void mo9578a(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.f54758a.m9579a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
