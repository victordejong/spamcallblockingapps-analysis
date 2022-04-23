package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/es.class */
final class es extends ep {

    /* renamed from: a  reason: collision with root package name */
    private final er f28999a = new er();

    @Override // com.google.android.gms.internal.measurement.ep
    public final void a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f28999a.a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
