package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/u.class */
final class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f30036a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ v f30037b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(v vVar, h hVar) {
        this.f30037b = vVar;
        this.f30036a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f30037b.f30038a) {
            if (this.f30037b.f30039b != null) {
                this.f30037b.f30039b.onComplete(this.f30036a);
            }
        }
    }
}
