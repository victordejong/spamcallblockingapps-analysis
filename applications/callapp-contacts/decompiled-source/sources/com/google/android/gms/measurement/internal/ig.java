package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ig.class */
final class ig implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ df f29834a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ij f29835b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ig(ij ijVar, df dfVar) {
        this.f29835b = ijVar;
        this.f29834a = dfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f29835b) {
            this.f29835b.f29840c = false;
            if (!this.f29835b.f29839b.e()) {
                this.f29835b.f29839b.t.c().j.a("Connected to remote service");
                this.f29835b.f29839b.a(this.f29834a);
            }
        }
    }
}
