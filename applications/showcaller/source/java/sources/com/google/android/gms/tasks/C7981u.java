package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.u */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/u.class */
final class C7981u<TResult> implements AbstractC7957b0<TResult> {

    /* renamed from: a */
    private final Executor f35979a;

    /* renamed from: b */
    private final Object f35980b = new Object();

    /* renamed from: c */
    private AbstractC7958c<TResult> f35981c;

    public C7981u(Executor executor, AbstractC7958c<TResult> abstractC7958c) {
        this.f35979a = executor;
        this.f35981c = abstractC7958c;
    }

    @Override // com.google.android.gms.tasks.AbstractC7957b0
    /* renamed from: b */
    public final void mo5777b(AbstractC7966g<TResult> abstractC7966g) {
        synchronized (this.f35980b) {
            if (this.f35981c == null) {
                return;
            }
            this.f35979a.execute(new RunnableC7980t(this, abstractC7966g));
        }
    }
}
