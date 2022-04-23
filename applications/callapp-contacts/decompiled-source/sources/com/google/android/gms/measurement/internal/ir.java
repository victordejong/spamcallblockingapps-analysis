package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ir.class */
final class ir implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f29859a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ iz f29860b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ir(iz izVar, long j) {
        this.f29860b = izVar;
        this.f29859a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        iz.a(this.f29860b, this.f29859a);
    }
}
