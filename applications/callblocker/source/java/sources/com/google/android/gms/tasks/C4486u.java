package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.tasks.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/u.class */
final class C4486u<TResult> implements AbstractC4490y<TResult> {

    /* renamed from: a */
    private final Executor f19537a;

    /* renamed from: b */
    private final Object f19538b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c */
    private AbstractC4467e<? super TResult> f19539c;

    public C4486u(Executor executor, AbstractC4467e<? super TResult> abstractC4467e) {
        this.f19537a = executor;
        this.f19539c = abstractC4467e;
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3860a() {
        synchronized (this.f19538b) {
            this.f19539c = null;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3859a(AbstractC4469g<TResult> abstractC4469g) {
        if (abstractC4469g.mo3894b()) {
            synchronized (this.f19538b) {
                if (this.f19539c != null) {
                    this.f19537a.execute(new RunnableC4487v(this, abstractC4469g));
                }
            }
        }
    }
}
