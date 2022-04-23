package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/is.class */
final class is implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f29861a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ iz f29862b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public is(iz izVar, long j) {
        this.f29862b = izVar;
        this.f29861a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        iz.b(this.f29862b, this.f29861a);
    }
}
