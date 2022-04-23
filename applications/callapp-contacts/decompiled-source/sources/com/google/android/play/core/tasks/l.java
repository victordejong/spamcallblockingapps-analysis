package com.google.android.play.core.tasks;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/l.class */
final class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f31570a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m f31571b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(m mVar, d dVar) {
        this.f31571b = mVar;
        this.f31570a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f31571b.f31572a) {
            if (this.f31571b.f31573b != null) {
                this.f31571b.f31573b.onSuccess(this.f31570a.c());
            }
        }
    }
}
