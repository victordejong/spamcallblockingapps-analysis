package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/y.class */
final class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f30046a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z f30047b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(z zVar, h hVar) {
        this.f30047b = zVar;
        this.f30046a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f30047b.f30048a) {
            if (this.f30047b.f30049b != null) {
                this.f30047b.f30049b.onSuccess(this.f30046a.d());
            }
        }
    }
}
