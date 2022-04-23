package com.google.android.gms.tasks;

import java.util.ArrayDeque;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ad.class */
public final class ad<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f30002a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private Queue<ac<TResult>> f30003b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f30004c;

    public final void a(ac<TResult> acVar) {
        synchronized (this.f30002a) {
            if (this.f30003b == null) {
                this.f30003b = new ArrayDeque();
            }
            this.f30003b.add(acVar);
        }
    }

    public final void a(h<TResult> hVar) {
        ac<TResult> poll;
        synchronized (this.f30002a) {
            if (this.f30003b != null && !this.f30004c) {
                this.f30004c = true;
                while (true) {
                    synchronized (this.f30002a) {
                        poll = this.f30003b.poll();
                        if (poll == null) {
                            this.f30004c = false;
                            return;
                        }
                    }
                    poll.a(hVar);
                }
            }
        }
    }
}
