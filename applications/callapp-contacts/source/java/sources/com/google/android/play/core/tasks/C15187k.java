package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.k */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/k.class */
public final class C15187k<ResultT> implements AbstractC15190n<ResultT> {

    /* renamed from: a */
    final Object f55014a = new Object();

    /* renamed from: b */
    final AbstractC15178b f55015b;

    /* renamed from: c */
    private final Executor f55016c;

    public C15187k(Executor executor, AbstractC15178b abstractC15178b) {
        this.f55016c = executor;
        this.f55015b = abstractC15178b;
    }

    @Override // com.google.android.play.core.tasks.AbstractC15190n
    /* renamed from: a */
    public final void mo9327a(AbstractC15180d<ResultT> abstractC15180d) {
        if (!abstractC15180d.mo9313b()) {
            synchronized (this.f55014a) {
                if (this.f55015b == null) {
                    return;
                }
                this.f55016c.execute(new RunnableC15185i(this, abstractC15180d));
            }
        }
    }
}
