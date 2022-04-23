package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fa.class */
final class fa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29614a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ fl f29615b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(fl flVar, zzp zzpVar) {
        this.f29615b = flVar;
        this.f29614a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        jo joVar2;
        joVar = this.f29615b.f29644a;
        joVar.n();
        joVar2 = this.f29615b.f29644a;
        joVar2.a(this.f29614a);
    }
}
