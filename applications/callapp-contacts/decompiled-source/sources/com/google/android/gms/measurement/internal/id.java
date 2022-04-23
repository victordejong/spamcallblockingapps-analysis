package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/id.class */
final class id implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ df f29826a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ij f29827b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public id(ij ijVar, df dfVar) {
        this.f29827b = ijVar;
        this.f29826a = dfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f29827b) {
            this.f29827b.f29840c = false;
            if (!this.f29827b.f29839b.e()) {
                this.f29827b.f29839b.t.c().k.a("Connected to service");
                this.f29827b.f29839b.a(this.f29826a);
            }
        }
    }
}
