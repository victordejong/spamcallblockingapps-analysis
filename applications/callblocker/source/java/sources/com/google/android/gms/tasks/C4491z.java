package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.tasks.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/z.class */
public final class C4491z<TResult> {

    /* renamed from: a */
    private final Object f19547a = new Object();
    @GuardedBy("mLock")

    /* renamed from: b */
    private Queue<AbstractC4490y<TResult>> f19548b;
    @GuardedBy("mLock")

    /* renamed from: c */
    private boolean f19549c;

    /* renamed from: a */
    public final void m3858a(AbstractC4469g<TResult> abstractC4469g) {
        AbstractC4490y<TResult> poll;
        synchronized (this.f19547a) {
            if (this.f19548b == null || this.f19549c) {
                return;
            }
            this.f19549c = true;
            while (true) {
                synchronized (this.f19547a) {
                    poll = this.f19548b.poll();
                    if (poll == null) {
                        this.f19549c = false;
                        return;
                    }
                }
                poll.mo3859a(abstractC4469g);
            }
        }
    }

    /* renamed from: a */
    public final void m3857a(AbstractC4490y<TResult> abstractC4490y) {
        synchronized (this.f19547a) {
            if (this.f19548b == null) {
                this.f19548b = new ArrayDeque();
            }
            this.f19548b.add(abstractC4490y);
        }
    }
}
