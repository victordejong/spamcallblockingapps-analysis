package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.tasks.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/o.class */
final class C4480o<TResult> implements AbstractC4490y<TResult> {

    /* renamed from: a */
    private final Executor f19523a;

    /* renamed from: b */
    private final Object f19524b = new Object();
    @GuardedBy("mLock")

    /* renamed from: c */
    private AbstractC4464b f19525c;

    public C4480o(Executor executor, AbstractC4464b abstractC4464b) {
        this.f19523a = executor;
        this.f19525c = abstractC4464b;
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3860a() {
        synchronized (this.f19524b) {
            this.f19525c = null;
        }
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3859a(AbstractC4469g abstractC4469g) {
        if (abstractC4469g.mo3892c()) {
            synchronized (this.f19524b) {
                if (this.f19525c != null) {
                    this.f19523a.execute(new RunnableC4481p(this));
                }
            }
        }
    }
}
