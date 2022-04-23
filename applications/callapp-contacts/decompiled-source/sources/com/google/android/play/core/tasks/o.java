package com.google.android.play.core.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/o.class */
public final class o<ResultT> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f31575a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private Queue<n<ResultT>> f31576b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f31577c;

    public final void a(d<ResultT> dVar) {
        n<ResultT> poll;
        synchronized (this.f31575a) {
            if (this.f31576b != null && !this.f31577c) {
                this.f31577c = true;
                while (true) {
                    synchronized (this.f31575a) {
                        poll = this.f31576b.poll();
                        if (poll == null) {
                            this.f31577c = false;
                            return;
                        }
                    }
                    poll.a(dVar);
                }
            }
        }
    }

    public final void a(n<ResultT> nVar) {
        synchronized (this.f31575a) {
            if (this.f31576b == null) {
                this.f31576b = new ArrayDeque();
            }
            this.f31576b.add(nVar);
        }
    }
}
