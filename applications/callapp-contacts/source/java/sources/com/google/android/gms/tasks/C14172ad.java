package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.android.gms.tasks.ad */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ad.class */
public final class C14172ad<TResult> {

    /* renamed from: a */
    private final Object f52128a = new Object();

    /* renamed from: b */
    private Queue<AbstractC14171ac<TResult>> f52129b;

    /* renamed from: c */
    private boolean f52130c;

    /* renamed from: a */
    public final void m11502a(AbstractC14171ac<TResult> abstractC14171ac) {
        synchronized (this.f52128a) {
            if (this.f52129b == null) {
                this.f52129b = new ArrayDeque();
            }
            this.f52129b.add(abstractC14171ac);
        }
    }

    /* renamed from: a */
    public final void m11501a(AbstractC14185h<TResult> abstractC14185h) {
        AbstractC14171ac<TResult> poll;
        synchronized (this.f52128a) {
            if (this.f52129b != null && !this.f52130c) {
                this.f52130c = true;
                while (true) {
                    synchronized (this.f52128a) {
                        poll = this.f52129b.poll();
                        if (poll == null) {
                            this.f52130c = false;
                            return;
                        }
                    }
                    poll.mo11453a(abstractC14185h);
                }
            }
        }
    }
}
