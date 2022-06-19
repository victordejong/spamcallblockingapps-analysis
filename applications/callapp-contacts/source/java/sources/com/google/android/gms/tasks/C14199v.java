package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/v.class */
public final class C14199v<TResult> implements AbstractC14171ac<TResult> {

    /* renamed from: a */
    final Object f52170a = new Object();

    /* renamed from: b */
    AbstractC14181d<TResult> f52171b;

    /* renamed from: c */
    private final Executor f52172c;

    public C14199v(Executor executor, AbstractC14181d<TResult> abstractC14181d) {
        this.f52172c = executor;
        this.f52171b = abstractC14181d;
    }

    @Override // com.google.android.gms.tasks.AbstractC14171ac
    /* renamed from: a */
    public final void mo11453a(AbstractC14185h<TResult> abstractC14185h) {
        synchronized (this.f52170a) {
            if (this.f52171b == null) {
                return;
            }
            this.f52172c.execute(new RunnableC14198u(this, abstractC14185h));
        }
    }
}
