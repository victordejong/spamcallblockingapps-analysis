package com.google.android.gms.internal.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/l.class */
final class l extends i {

    /* renamed from: a  reason: collision with root package name */
    private final k f28874a = new k();

    @Override // com.google.android.gms.internal.d.i
    public final void a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f28874a.a(th).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
