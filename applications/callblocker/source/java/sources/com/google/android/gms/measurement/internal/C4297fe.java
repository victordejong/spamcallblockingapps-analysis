package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.C2662s;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* renamed from: com.google.android.gms.measurement.internal.fe */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fe.class */
public final class C4297fe extends Thread {

    /* renamed from: b */
    private final BlockingQueue<C4294fb<?>> f18881b;

    /* renamed from: d */
    private final /* synthetic */ C4293fa f18883d;

    /* renamed from: c */
    private boolean f18882c = false;

    /* renamed from: a */
    private final Object f18880a = new Object();

    public C4297fe(C4293fa c4293fa, String str, BlockingQueue<C4294fb<?>> blockingQueue) {
        this.f18883d = c4293fa;
        C2662s.m13981a(str);
        C2662s.m13981a(blockingQueue);
        this.f18881b = blockingQueue;
        setName(str);
    }

    /* renamed from: a */
    private final void m4533a(InterruptedException interruptedException) {
        this.f18883d.mo4030v().m4662e().m4653a(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* renamed from: b */
    private final void m4532b() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        C4297fe c4297fe;
        C4297fe c4297fe2;
        obj = this.f18883d.f18838g;
        synchronized (obj) {
            if (!this.f18882c) {
                semaphore = this.f18883d.f18839h;
                semaphore.release();
                obj2 = this.f18883d.f18838g;
                obj2.notifyAll();
                c4297fe = this.f18883d.f18832a;
                if (this == c4297fe) {
                    this.f18883d.f18832a = null;
                } else {
                    c4297fe2 = this.f18883d.f18833b;
                    if (this == c4297fe2) {
                        this.f18883d.f18833b = null;
                    } else {
                        this.f18883d.mo4030v().m4655x_().m4654a("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f18882c = true;
            }
        }
    }

    /* renamed from: a */
    public final void m4534a() {
        synchronized (this.f18880a) {
            this.f18880a.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Semaphore semaphore;
        Object obj;
        boolean z;
        boolean z2 = false;
        while (!z2) {
            try {
                semaphore = this.f18883d.f18839h;
                semaphore.acquire();
                z2 = true;
            } catch (InterruptedException e) {
                m4533a(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                C4294fb<?> poll = this.f18881b.poll();
                if (poll != null) {
                    Process.setThreadPriority(poll.f18841a ? threadPriority : 10);
                    poll.run();
                } else {
                    synchronized (this.f18880a) {
                        if (this.f18881b.peek() == null) {
                            z = this.f18883d.f18840i;
                            if (!z) {
                                try {
                                    this.f18880a.wait(30000L);
                                } catch (InterruptedException e2) {
                                    m4533a(e2);
                                }
                            }
                        }
                    }
                    obj = this.f18883d.f18838g;
                    synchronized (obj) {
                        if (this.f18881b.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.f18883d.mo4027x().m4804a(C4452t.f19464ay)) {
                m4532b();
            }
        } finally {
            m4532b();
        }
    }
}
