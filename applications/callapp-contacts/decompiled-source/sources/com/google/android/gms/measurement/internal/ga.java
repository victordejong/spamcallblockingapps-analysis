package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ga.class */
final class ga implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f29672a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ gv f29673b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ga(gv gvVar, long j) {
        this.f29673b = gvVar;
        this.f29672a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29673b.t.b().g.a(this.f29672a);
        this.f29673b.t.c().j.a("Session timeout duration set", Long.valueOf(this.f29672a));
    }
}
