package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.t */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/t.class */
public final class C14197t<TResult> implements AbstractC14171ac<TResult> {

    /* renamed from: a */
    final Object f52165a = new Object();

    /* renamed from: b */
    AbstractC14180c f52166b;

    /* renamed from: c */
    private final Executor f52167c;

    public C14197t(Executor executor, AbstractC14180c abstractC14180c) {
        this.f52167c = executor;
        this.f52166b = abstractC14180c;
    }

    @Override // com.google.android.gms.tasks.AbstractC14171ac
    /* renamed from: a */
    public final void mo11453a(AbstractC14185h<TResult> abstractC14185h) {
        if (abstractC14185h.mo11476c()) {
            synchronized (this.f52165a) {
                if (this.f52166b == null) {
                    return;
                }
                this.f52167c.execute(new RunnableC14196s(this));
            }
        }
    }
}
