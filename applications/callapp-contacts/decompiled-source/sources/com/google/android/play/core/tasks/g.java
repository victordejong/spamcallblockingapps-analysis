package com.google.android.play.core.tasks;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/g.class */
final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f31560a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h f31561b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(h hVar, d dVar) {
        this.f31561b = hVar;
        this.f31560a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f31561b.f31562a) {
            if (this.f31561b.f31563b != null) {
                this.f31561b.f31563b.onComplete(this.f31560a);
            }
        }
    }
}
