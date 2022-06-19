package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.w */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/w.class */
public final class C7983w<TResult> implements AbstractC7957b0<TResult> {

    /* renamed from: a */
    private final Executor f35984a;

    /* renamed from: b */
    private final Object f35985b = new Object();

    /* renamed from: c */
    private AbstractC7960d f35986c;

    public C7983w(Executor executor, AbstractC7960d abstractC7960d) {
        this.f35984a = executor;
        this.f35986c = abstractC7960d;
    }

    @Override // com.google.android.gms.tasks.AbstractC7957b0
    /* renamed from: b */
    public final void mo5777b(AbstractC7966g<TResult> abstractC7966g) {
        if (abstractC7966g.mo5810q() || abstractC7966g.mo5812o()) {
            return;
        }
        synchronized (this.f35985b) {
            if (this.f35986c == null) {
                return;
            }
            this.f35984a.execute(new RunnableC7982v(this, abstractC7966g));
        }
    }
}
