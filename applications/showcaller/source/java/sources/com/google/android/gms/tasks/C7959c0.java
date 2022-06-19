package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.android.gms.tasks.c0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/c0.class */
public final class C7959c0<TResult> {

    /* renamed from: a */
    private final Object f35939a = new Object();

    /* renamed from: b */
    private Queue<AbstractC7957b0<TResult>> f35940b;

    /* renamed from: c */
    private boolean f35941c;

    /* renamed from: a */
    public final void m5837a(AbstractC7957b0<TResult> abstractC7957b0) {
        synchronized (this.f35939a) {
            if (this.f35940b == null) {
                this.f35940b = new ArrayDeque();
            }
            this.f35940b.add(abstractC7957b0);
        }
    }

    /* renamed from: b */
    public final void m5836b(AbstractC7966g<TResult> abstractC7966g) {
        AbstractC7957b0<TResult> poll;
        synchronized (this.f35939a) {
            if (this.f35940b != null && !this.f35941c) {
                this.f35941c = true;
                while (true) {
                    synchronized (this.f35939a) {
                        poll = this.f35940b.poll();
                        if (poll == null) {
                            this.f35941c = false;
                            return;
                        }
                    }
                    poll.mo5777b(abstractC7966g);
                }
            }
        }
    }
}
