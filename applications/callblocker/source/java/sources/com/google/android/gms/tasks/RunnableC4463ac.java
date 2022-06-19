package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.tasks.ac */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/ac.class */
public final class RunnableC4463ac implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4461ab f19506a;

    /* renamed from: b */
    private final /* synthetic */ Callable f19507b;

    public RunnableC4463ac(C4461ab c4461ab, Callable callable) {
        this.f19506a = c4461ab;
        this.f19507b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f19506a.m3916a((C4461ab) this.f19507b.call());
        } catch (Exception e) {
            this.f19506a.m3917a(e);
        }
    }
}
