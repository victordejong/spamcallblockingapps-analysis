package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/az.class */
final class az implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f29422a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ca f29423b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(ca caVar, long j) {
        this.f29423b = caVar;
        this.f29422a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29423b.b(this.f29422a);
    }
}
