package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fj.class */
final class fj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29638a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ fl f29639b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fj(fl flVar, zzp zzpVar) {
        this.f29639b = flVar;
        this.f29638a = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        jo joVar2;
        joVar = this.f29639b.f29644a;
        joVar.n();
        joVar2 = this.f29639b.f29644a;
        joVar2.b(this.f29638a);
    }
}
