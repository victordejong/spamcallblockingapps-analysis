package com.google.android.play.core.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.android.play.core.tasks.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/l.class */
public final class C8580l<ResultT> {

    /* renamed from: a */
    private final Object f38179a = new Object();

    /* renamed from: b */
    private Queue<AbstractC8579k<ResultT>> f38180b;

    /* renamed from: c */
    private boolean f38181c;

    /* renamed from: a */
    public final void m3317a(AbstractC8579k<ResultT> abstractC8579k) {
        synchronized (this.f38179a) {
            if (this.f38180b == null) {
                this.f38180b = new ArrayDeque();
            }
            this.f38180b.add(abstractC8579k);
        }
    }

    /* renamed from: b */
    public final void m3316b(AbstractC8571c<ResultT> abstractC8571c) {
        AbstractC8579k<ResultT> poll;
        synchronized (this.f38179a) {
            if (this.f38180b != null && !this.f38181c) {
                this.f38181c = true;
                while (true) {
                    synchronized (this.f38179a) {
                        poll = this.f38180b.poll();
                        if (poll == null) {
                            this.f38181c = false;
                            return;
                        }
                    }
                    poll.mo3318a(abstractC8571c);
                }
            }
        }
    }
}
