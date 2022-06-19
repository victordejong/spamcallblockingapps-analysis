package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.s */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/s.class */
final class C7979s<TResult> implements AbstractC7957b0<TResult> {

    /* renamed from: a */
    private final Executor f35974a;

    /* renamed from: b */
    private final Object f35975b = new Object();

    /* renamed from: c */
    private AbstractC7956b f35976c;

    public C7979s(Executor executor, AbstractC7956b abstractC7956b) {
        this.f35974a = executor;
        this.f35976c = abstractC7956b;
    }

    @Override // com.google.android.gms.tasks.AbstractC7957b0
    /* renamed from: b */
    public final void mo5777b(AbstractC7966g<TResult> abstractC7966g) {
        if (abstractC7966g.mo5812o()) {
            synchronized (this.f35975b) {
                if (this.f35976c == null) {
                    return;
                }
                this.f35974a.execute(new RunnableC7978r(this));
            }
        }
    }
}
