package com.google.android.play.core.internal;

import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/av.class */
final class av extends as {

    /* renamed from: a  reason: collision with root package name */
    private final au f31356a = new au();

    @Override // com.google.android.play.core.internal.as
    public final void a(Throwable th, Throwable th2) {
        if (th2 != th) {
            Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
            this.f31356a.a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
