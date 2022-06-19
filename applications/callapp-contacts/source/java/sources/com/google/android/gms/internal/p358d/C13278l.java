package com.google.android.gms.internal.p358d;
/* renamed from: com.google.android.gms.internal.d.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/l.class */
final class C13278l extends AbstractC13275i {

    /* renamed from: a */
    private final C13277k f50534a = new C13277k();

    @Override // com.google.android.gms.internal.p358d.AbstractC13275i
    /* renamed from: a */
    public final void mo13504a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f50534a.m13505a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
