package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.tasks.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/s.class */
final class C4484s<TResult> implements AbstractC4490y<TResult> {

    /* renamed from: a */
    private final Executor f19532a;

    /* renamed from: b */
    private final Object f19533b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c */
    private AbstractC4466d f19534c;

    public C4484s(Executor executor, AbstractC4466d abstractC4466d) {
        this.f19532a = executor;
        this.f19534c = abstractC4466d;
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3860a() {
        synchronized (this.f19533b) {
            this.f19534c = null;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3859a(AbstractC4469g<TResult> abstractC4469g) {
        if (abstractC4469g.mo3894b() || abstractC4469g.mo3892c()) {
            return;
        }
        synchronized (this.f19533b) {
            if (this.f19534c != null) {
                this.f19532a.execute(new RunnableC4485t(this, abstractC4469g));
            }
        }
    }
}
