package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ii.class */
final class ii implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ij f29837a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ii(ij ijVar) {
        this.f29837a = ijVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29837a.f29839b.f29842b = null;
        this.f29837a.f29839b.q();
    }
}
