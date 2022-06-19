package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/i.class */
final class C8577i<ResultT> implements AbstractC8579k<ResultT> {

    /* renamed from: a */
    private final Executor f38176a;

    /* renamed from: b */
    private final Object f38177b = new Object();

    /* renamed from: c */
    private final AbstractC8570b<? super ResultT> f38178c;

    public C8577i(Executor executor, AbstractC8570b<? super ResultT> abstractC8570b) {
        this.f38176a = executor;
        this.f38178c = abstractC8570b;
    }

    @Override // com.google.android.play.core.tasks.AbstractC8579k
    /* renamed from: a */
    public final void mo3318a(AbstractC8571c<ResultT> abstractC8571c) {
        if (abstractC8571c.mo3305f()) {
            synchronized (this.f38177b) {
                if (this.f38178c == null) {
                    return;
                }
                this.f38176a.execute(new RunnableC8576h(this, abstractC8571c));
            }
        }
    }
}
