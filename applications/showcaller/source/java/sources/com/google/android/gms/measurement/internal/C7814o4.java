package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.C6155o;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* renamed from: com.google.android.gms.measurement.internal.o4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/o4.class */
public final class C7814o4 extends Thread {

    /* renamed from: e */
    private final BlockingQueue<C7803n4<?>> f35526e;

    /* renamed from: g */
    final /* synthetic */ C7825p4 f35528g;

    /* renamed from: f */
    private boolean f35527f = false;

    /* renamed from: d */
    private final Object f35525d = new Object();

    public C7814o4(C7825p4 c7825p4, String str, BlockingQueue<C7803n4<?>> blockingQueue) {
        this.f35528g = c7825p4;
        C6155o.m17018j(str);
        C6155o.m17018j(blockingQueue);
        this.f35526e = blockingQueue;
        setName(str);
    }

    /* renamed from: b */
    private final void m6181b() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        C7814o4 c7814o4;
        C7814o4 c7814o42;
        obj = this.f35528g.f35580j;
        synchronized (obj) {
            if (!this.f35527f) {
                semaphore = this.f35528g.f35581k;
                semaphore.release();
                obj2 = this.f35528g.f35580j;
                obj2.notifyAll();
                c7814o4 = this.f35528g.f35574d;
                if (this == c7814o4) {
                    this.f35528g.f35574d = null;
                } else {
                    c7814o42 = this.f35528g.f35575e;
                    if (this == c7814o42) {
                        this.f35528g.f35575e = null;
                    } else {
                        this.f35528g.f35460a.mo6047C().m6195m().m6216a("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f35527f = true;
            }
        }
    }

    /* renamed from: c */
    private final void m6180c(InterruptedException interruptedException) {
        this.f35528g.f35460a.mo6047C().m6192p().m6215b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* renamed from: a */
    public final void m6182a() {
        synchronized (this.f35525d) {
            this.f35525d.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Object obj;
        Semaphore semaphore;
        boolean z = false;
        while (!z) {
            try {
                semaphore = this.f35528g.f35581k;
                semaphore.acquire();
                z = true;
            } catch (InterruptedException e) {
                m6180c(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                C7803n4<?> poll = this.f35526e.poll();
                if (poll != null) {
                    Process.setThreadPriority(true != poll.f35483e ? 10 : threadPriority);
                    poll.run();
                } else {
                    synchronized (this.f35525d) {
                        if (this.f35526e.peek() == null) {
                            boolean unused = this.f35528g.f35582l;
                            try {
                                this.f35525d.wait(30000L);
                            } catch (InterruptedException e2) {
                                m6180c(e2);
                            }
                        }
                    }
                    obj = this.f35528g.f35580j;
                    synchronized (obj) {
                        if (this.f35526e.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.f35528g.f35460a.m6006y().m6471u(null, C7672c3.f35095q0)) {
                m6181b();
            }
        } finally {
            m6181b();
        }
    }
}
