package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/s.class */
final class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t f30032a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(t tVar) {
        this.f30032a = tVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f30032a.f30033a) {
            if (this.f30032a.f30034b != null) {
                this.f30032a.f30034b.a();
            }
        }
    }
}
