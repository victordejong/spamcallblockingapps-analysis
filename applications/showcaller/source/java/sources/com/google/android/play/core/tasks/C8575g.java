package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/g.class */
final class C8575g<ResultT> implements AbstractC8579k<ResultT> {

    /* renamed from: a */
    private final Executor f38171a;

    /* renamed from: b */
    private final Object f38172b = new Object();

    /* renamed from: c */
    private final AbstractC8569a f38173c;

    public C8575g(Executor executor, AbstractC8569a abstractC8569a) {
        this.f38171a = executor;
        this.f38173c = abstractC8569a;
    }

    @Override // com.google.android.play.core.tasks.AbstractC8579k
    /* renamed from: a */
    public final void mo3318a(AbstractC8571c<ResultT> abstractC8571c) {
        if (!abstractC8571c.mo3305f()) {
            synchronized (this.f38172b) {
                if (this.f38173c == null) {
                    return;
                }
                this.f38171a.execute(new RunnableC8574f(this, abstractC8571c));
            }
        }
    }
}
