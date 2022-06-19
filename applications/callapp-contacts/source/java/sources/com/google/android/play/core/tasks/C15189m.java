package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.m */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/m.class */
public final class C15189m<ResultT> implements AbstractC15190n<ResultT> {

    /* renamed from: a */
    final Object f55019a = new Object();

    /* renamed from: b */
    final AbstractC15179c<? super ResultT> f55020b;

    /* renamed from: c */
    private final Executor f55021c;

    public C15189m(Executor executor, AbstractC15179c<? super ResultT> abstractC15179c) {
        this.f55021c = executor;
        this.f55020b = abstractC15179c;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15190n
    /* renamed from: a */
    public final void mo9327a(AbstractC15180d<ResultT> abstractC15180d) {
        if (abstractC15180d.mo9313b()) {
            synchronized (this.f55019a) {
                if (this.f55020b == null) {
                    return;
                }
                this.f55021c.execute(new RunnableC15188l(this, abstractC15180d));
            }
        }
    }
}
