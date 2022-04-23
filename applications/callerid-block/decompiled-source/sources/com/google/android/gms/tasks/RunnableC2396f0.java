package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.tasks.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/f0.class */
final class RunnableC2396f0 implements Runnable {

    /* renamed from: b */
    private final /* synthetic */ b0 f10540b;

    /* renamed from: c */
    private final /* synthetic */ Callable f10541c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2396f0(b0 b0Var, Callable callable) {
        this.f10540b = b0Var;
        this.f10541c = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f10540b.s(this.f10541c.call());
        } catch (Exception e) {
            this.f10540b.r(e);
        }
    }
}
