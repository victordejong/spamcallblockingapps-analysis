package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.tasks.g0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/g0.class */
final class RunnableC7967g0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C7965f0 f35949d;

    /* renamed from: e */
    final /* synthetic */ Callable f35950e;

    public RunnableC7967g0(C7965f0 c7965f0, Callable callable) {
        this.f35949d = c7965f0;
        this.f35950e = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f35949d.m5833t(this.f35950e.call());
        } catch (Exception e) {
            this.f35949d.m5831v(e);
        } catch (Throwable th) {
            this.f35949d.m5831v(new RuntimeException(th));
        }
    }
}
