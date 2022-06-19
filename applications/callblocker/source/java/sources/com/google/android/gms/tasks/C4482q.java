package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.tasks.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/q.class */
final class C4482q<TResult> implements AbstractC4490y<TResult> {

    /* renamed from: a */
    private final Executor f19527a;

    /* renamed from: b */
    private final Object f19528b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c */
    private AbstractC4465c<TResult> f19529c;

    public C4482q(Executor executor, AbstractC4465c<TResult> abstractC4465c) {
        this.f19527a = executor;
        this.f19529c = abstractC4465c;
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3860a() {
        synchronized (this.f19528b) {
            this.f19529c = null;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3859a(AbstractC4469g<TResult> abstractC4469g) {
        synchronized (this.f19528b) {
            if (this.f19529c == null) {
                return;
            }
            this.f19527a.execute(new RunnableC4483r(this, abstractC4469g));
        }
    }
}
