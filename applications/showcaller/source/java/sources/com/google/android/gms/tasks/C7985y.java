package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/y.class */
public final class C7985y<TResult> implements AbstractC7957b0<TResult> {

    /* renamed from: a */
    private final Executor f35989a;

    /* renamed from: b */
    private final Object f35990b = new Object();

    /* renamed from: c */
    private AbstractC7962e<? super TResult> f35991c;

    public C7985y(Executor executor, AbstractC7962e<? super TResult> abstractC7962e) {
        this.f35989a = executor;
        this.f35991c = abstractC7962e;
    }

    @Override // com.google.android.gms.tasks.AbstractC7957b0
    /* renamed from: b */
    public final void mo5777b(AbstractC7966g<TResult> abstractC7966g) {
        if (abstractC7966g.mo5810q()) {
            synchronized (this.f35990b) {
                if (this.f35991c == null) {
                    return;
                }
                this.f35989a.execute(new RunnableC7984x(this, abstractC7966g));
            }
        }
    }
}
