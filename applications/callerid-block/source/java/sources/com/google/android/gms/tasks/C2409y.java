package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.tasks.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/y.class */
final class C2409y<TResult> {

    /* renamed from: a */
    private final Object f10559a = new Object();
    @GuardedBy("mLock")

    /* renamed from: b */
    private Queue<AbstractC2410z<TResult>> f10560b;
    @GuardedBy("mLock")

    /* renamed from: c */
    private boolean f10561c;

    C2409y() {
    }

    /* renamed from: a */
    public final void m3753a(AbstractC2397g<TResult> abstractC2397g) {
        AbstractC2410z<TResult> poll;
        synchronized (this.f10559a) {
            try {
                if (this.f10560b != null && !this.f10561c) {
                    this.f10561c = true;
                    while (true) {
                        synchronized (this.f10559a) {
                            poll = this.f10560b.poll();
                            if (poll == null) {
                                this.f10561c = false;
                                return;
                            }
                        }
                        poll.m3751d(abstractC2397g);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final void m3752b(AbstractC2410z<TResult> abstractC2410z) {
        synchronized (this.f10559a) {
            if (this.f10560b == null) {
                this.f10560b = new ArrayDeque();
            }
            this.f10560b.add(abstractC2410z);
        }
    }
}
