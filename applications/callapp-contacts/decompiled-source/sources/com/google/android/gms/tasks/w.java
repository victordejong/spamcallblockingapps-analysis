package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/w.class */
final class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h f30041a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x f30042b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(x xVar, h hVar) {
        this.f30042b = xVar;
        this.f30041a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f30042b.f30043a) {
            if (this.f30042b.f30044b != null) {
                this.f30042b.f30044b.onFailure((Exception) o.a(this.f30041a.e()));
            }
        }
    }
}
