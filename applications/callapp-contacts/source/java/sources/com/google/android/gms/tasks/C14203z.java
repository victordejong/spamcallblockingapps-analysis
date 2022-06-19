package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/z.class */
public final class C14203z<TResult> implements AbstractC14171ac<TResult> {

    /* renamed from: a */
    final Object f52180a = new Object();

    /* renamed from: b */
    AbstractC14183f<? super TResult> f52181b;

    /* renamed from: c */
    private final Executor f52182c;

    public C14203z(Executor executor, AbstractC14183f<? super TResult> abstractC14183f) {
        this.f52182c = executor;
        this.f52181b = abstractC14183f;
    }

    @Override // com.google.android.gms.tasks.AbstractC14171ac
    /* renamed from: a */
    public final void mo11453a(AbstractC14185h<TResult> abstractC14185h) {
        if (abstractC14185h.mo11478b()) {
            synchronized (this.f52180a) {
                if (this.f52181b == null) {
                    return;
                }
                this.f52182c.execute(new RunnableC14202y(this, abstractC14185h));
            }
        }
    }
}
