package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.C12045o;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* renamed from: com.google.android.gms.measurement.internal.eo */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eo.class */
public final class C13975eo extends Thread {

    /* renamed from: a */
    final /* synthetic */ C13976ep f51496a;

    /* renamed from: c */
    private final BlockingQueue<C13974en<?>> f51498c;

    /* renamed from: d */
    private boolean f51499d = false;

    /* renamed from: b */
    private final Object f51497b = new Object();

    public C13975eo(C13976ep c13976ep, String str, BlockingQueue<C13974en<?>> blockingQueue) {
        this.f51496a = c13976ep;
        C12045o.m19162a(str);
        C12045o.m19162a(blockingQueue);
        this.f51498c = blockingQueue;
        setName(str);
    }

    /* renamed from: a */
    private final void m12015a(InterruptedException interruptedException) {
        this.f51496a.f51637t.mo11661c().f51398f.m12091a(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* renamed from: b */
    private final void m12014b() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        C13975eo c13975eo;
        C13975eo c13975eo2;
        obj = this.f51496a.f51507g;
        synchronized (obj) {
            if (!this.f51499d) {
                semaphore = this.f51496a.f51508h;
                semaphore.release();
                obj2 = this.f51496a.f51507g;
                obj2.notifyAll();
                c13975eo = this.f51496a.f51501a;
                if (this == c13975eo) {
                    this.f51496a.f51501a = null;
                } else {
                    c13975eo2 = this.f51496a.f51502b;
                    if (this == c13975eo2) {
                        this.f51496a.f51502b = null;
                    } else {
                        this.f51496a.f51637t.mo11661c().f51395c.m12092a("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f51499d = true;
            }
        }
    }

    /* renamed from: a */
    public final void m12016a() {
        synchronized (this.f51497b) {
            this.f51497b.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Object obj;
        Semaphore semaphore;
        boolean z = false;
        while (!z) {
            try {
                semaphore = this.f51496a.f51508h;
                semaphore.acquire();
                z = true;
            } catch (InterruptedException e) {
                m12015a(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                C13974en<?> poll = this.f51498c.poll();
                if (poll != null) {
                    Process.setThreadPriority(true != poll.f51492a ? 10 : threadPriority);
                    poll.run();
                } else {
                    synchronized (this.f51497b) {
                        if (this.f51498c.peek() == null) {
                            boolean unused = this.f51496a.f51509i;
                            try {
                                this.f51497b.wait(30000L);
                            } catch (InterruptedException e2) {
                                m12015a(e2);
                            }
                        }
                    }
                    obj = this.f51496a.f51507g;
                    synchronized (obj) {
                        if (this.f51498c.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.f51496a.f51637t.f51529g.m12061d(null, C13935dc.f51327ao)) {
                m12014b();
            }
        } finally {
            m12014b();
        }
    }
}
