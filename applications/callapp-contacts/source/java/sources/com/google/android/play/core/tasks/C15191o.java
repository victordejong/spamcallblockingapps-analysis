package com.google.android.play.core.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.android.play.core.tasks.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/o.class */
public final class C15191o<ResultT> {

    /* renamed from: a */
    private final Object f55022a = new Object();

    /* renamed from: b */
    private Queue<AbstractC15190n<ResultT>> f55023b;

    /* renamed from: c */
    private boolean f55024c;

    /* renamed from: a */
    public final void m9326a(AbstractC15180d<ResultT> abstractC15180d) {
        AbstractC15190n<ResultT> poll;
        synchronized (this.f55022a) {
            if (this.f55023b != null && !this.f55024c) {
                this.f55024c = true;
                while (true) {
                    synchronized (this.f55022a) {
                        poll = this.f55023b.poll();
                        if (poll == null) {
                            this.f55024c = false;
                            return;
                        }
                    }
                    poll.mo9327a(abstractC15180d);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m9325a(AbstractC15190n<ResultT> abstractC15190n) {
        synchronized (this.f55022a) {
            if (this.f55023b == null) {
                this.f55023b = new ArrayDeque();
            }
            this.f55023b.add(abstractC15190n);
        }
    }
}
