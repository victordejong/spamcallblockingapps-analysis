package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ci */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ci.class */
final class C3848ci extends AbstractC3843ce {

    /* renamed from: a */
    private final C3847ch f17929a = new C3847ch();

    @Override // com.google.android.gms.internal.measurement.AbstractC3843ce
    /* renamed from: a */
    public final void mo5841a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        if (th2 == null) {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
        this.f17929a.m5842a(th, true).add(th2);
    }
}
