package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.es */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/es.class */
final class C13479es extends AbstractC13476ep {

    /* renamed from: a */
    private final C13478er f50698a = new C13478er();

    @Override // com.google.android.gms.internal.measurement.AbstractC13476ep
    /* renamed from: a */
    public final void mo12890a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f50698a.m12891a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
