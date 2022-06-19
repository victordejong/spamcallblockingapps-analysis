package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.tasks.ai */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ai.class */
public final class RunnableC14177ai implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14176ah f52139a;

    /* renamed from: b */
    final /* synthetic */ Callable f52140b;

    public RunnableC14177ai(C14176ah c14176ah, Callable callable) {
        this.f52139a = c14176ah;
        this.f52140b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f52139a.m11499a((C14176ah) this.f52140b.call());
        } catch (Exception e) {
            this.f52139a.m11500a(e);
        } catch (Throwable th) {
            this.f52139a.m11500a((Exception) new RuntimeException(th));
        }
    }
}
