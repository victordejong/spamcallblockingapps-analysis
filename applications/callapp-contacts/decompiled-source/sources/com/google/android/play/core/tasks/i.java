package com.google.android.play.core.tasks;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/i.class */
final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f31565a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ k f31566b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(k kVar, d dVar) {
        this.f31566b = kVar;
        this.f31565a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f31566b.f31567a) {
            if (this.f31566b.f31568b != null) {
                this.f31566b.f31568b.onFailure(this.f31565a.d());
            }
        }
    }
}
