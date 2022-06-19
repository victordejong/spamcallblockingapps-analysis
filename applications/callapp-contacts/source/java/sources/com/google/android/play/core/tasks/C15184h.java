package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/h.class */
public final class C15184h<ResultT> implements AbstractC15190n<ResultT> {

    /* renamed from: a */
    final Object f55009a = new Object();

    /* renamed from: b */
    final AbstractC15177a<ResultT> f55010b;

    /* renamed from: c */
    private final Executor f55011c;

    public C15184h(Executor executor, AbstractC15177a<ResultT> abstractC15177a) {
        this.f55011c = executor;
        this.f55010b = abstractC15177a;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15190n
    /* renamed from: a */
    public final void mo9327a(AbstractC15180d<ResultT> abstractC15180d) {
        synchronized (this.f55009a) {
            if (this.f55010b == null) {
                return;
            }
            this.f55011c.execute(new RunnableC15183g(this, abstractC15180d));
        }
    }
}
