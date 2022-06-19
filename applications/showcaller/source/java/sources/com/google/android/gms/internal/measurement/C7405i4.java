package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.i4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i4.class */
final class C7405i4 extends AbstractC7363f4 {

    /* renamed from: a */
    private final C7391h4 f34519a = new C7391h4();

    @Override // com.google.android.gms.internal.measurement.AbstractC7363f4
    /* renamed from: a */
    public final void mo7210a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f34519a.m7373a(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
