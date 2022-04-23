package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ff.class */
final class ff implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzas f29627a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29628b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ fl f29629c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ff(fl flVar, zzas zzasVar, String str) {
        this.f29629c = flVar;
        this.f29627a = zzasVar;
        this.f29628b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jo joVar;
        jo joVar2;
        joVar = this.f29629c.f29644a;
        joVar.n();
        joVar2 = this.f29629c.f29644a;
        joVar2.a(this.f29627a, this.f29628b);
    }
}
