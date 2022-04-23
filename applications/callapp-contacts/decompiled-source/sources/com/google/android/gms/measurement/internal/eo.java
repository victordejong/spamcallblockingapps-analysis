package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.o;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Semaphore;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eo.class */
public final class eo extends Thread {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ep f29572a;

    /* renamed from: c  reason: collision with root package name */
    private final BlockingQueue<en<?>> f29574c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29575d = false;

    /* renamed from: b  reason: collision with root package name */
    private final Object f29573b = new Object();

    public eo(ep epVar, String str, BlockingQueue<en<?>> blockingQueue) {
        this.f29572a = epVar;
        o.a(str);
        o.a(blockingQueue);
        this.f29574c = blockingQueue;
        setName(str);
    }

    private final void a(InterruptedException interruptedException) {
        this.f29572a.t.c().f.a(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    private final void b() {
        Object obj;
        Semaphore semaphore;
        Object obj2;
        eo eoVar;
        eo eoVar2;
        obj = this.f29572a.g;
        synchronized (obj) {
            if (!this.f29575d) {
                semaphore = this.f29572a.h;
                semaphore.release();
                obj2 = this.f29572a.g;
                obj2.notifyAll();
                eoVar = this.f29572a.f29576a;
                if (this == eoVar) {
                    this.f29572a.f29576a = null;
                } else {
                    eoVar2 = this.f29572a.f29577b;
                    if (this == eoVar2) {
                        this.f29572a.f29577b = null;
                    } else {
                        this.f29572a.t.c().f29506c.a("Current scheduler thread is neither worker nor network");
                    }
                }
                this.f29575d = true;
            }
        }
    }

    public final void a() {
        synchronized (this.f29573b) {
            this.f29573b.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Object obj;
        Semaphore semaphore;
        boolean z = false;
        while (!z) {
            try {
                semaphore = this.f29572a.h;
                semaphore.acquire();
                z = true;
            } catch (InterruptedException e) {
                a(e);
            }
        }
        try {
            int i = Process.getThreadPriority(Process.myTid());
            while (true) {
                en<?> poll = this.f29574c.poll();
                if (poll != null) {
                    if (true != poll.f29568a) {
                        i = 10;
                    }
                    Process.setThreadPriority(i);
                    poll.run();
                } else {
                    synchronized (this.f29573b) {
                        if (this.f29574c.peek() == null) {
                            boolean unused = this.f29572a.i;
                            try {
                                this.f29573b.wait(30000L);
                            } catch (InterruptedException e2) {
                                a(e2);
                            }
                        }
                    }
                    obj = this.f29572a.g;
                    synchronized (obj) {
                        if (this.f29574c.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (this.f29572a.t.g.d(null, dc.ao)) {
                b();
            }
        } finally {
            b();
        }
    }
}
