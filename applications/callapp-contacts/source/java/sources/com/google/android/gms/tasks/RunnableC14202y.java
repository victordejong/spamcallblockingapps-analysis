package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/y.class */
final class RunnableC14202y implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC14185h f52178a;

    /* renamed from: b */
    final /* synthetic */ C14203z f52179b;

    public RunnableC14202y(C14203z c14203z, AbstractC14185h abstractC14185h) {
        this.f52179b = c14203z;
        this.f52178a = abstractC14185h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f52179b.f52180a) {
            if (this.f52179b.f52181b != null) {
                this.f52179b.f52181b.onSuccess(this.f52178a.mo11475d());
            }
        }
    }
}
