package com.google.android.gms.measurement.internal;

import android.os.Process;
import com.google.android.gms.common.internal.C1581h;
import java.util.concurrent.BlockingQueue;
/* renamed from: com.google.android.gms.measurement.internal.o4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o4.class */
final class C2307o4 extends Thread {

    /* renamed from: c */
    private final BlockingQueue<C2301n4<?>> f10336c;

    /* renamed from: e */
    final /* synthetic */ p4 f10338e;

    /* renamed from: d */
    private boolean f10337d = false;

    /* renamed from: b */
    private final Object f10335b = new Object();

    public C2307o4(p4 p4Var, String str, BlockingQueue<C2301n4<?>> blockingQueue) {
        this.f10338e = p4Var;
        C1581h.m8347h(str);
        C1581h.m8347h(blockingQueue);
        this.f10336c = blockingQueue;
        setName(str);
    }

    /* renamed from: b */
    private final void m3864b() {
        synchronized (p4.x(this.f10338e)) {
            if (!this.f10337d) {
                p4.u(this.f10338e).release();
                p4.x(this.f10338e).notifyAll();
                if (this == p4.y(this.f10338e)) {
                    p4.z(this.f10338e, (C2307o4) null);
                } else if (this == p4.A(this.f10338e)) {
                    p4.B(this.f10338e, (C2307o4) null);
                } else {
                    ((m5) this.f10338e).a.t().m().m3876a("Current scheduler thread is neither worker nor network");
                }
                this.f10337d = true;
            }
        }
    }

    /* renamed from: c */
    private final void m3863c(InterruptedException interruptedException) {
        ((m5) this.f10338e).a.t().p().m3875b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* renamed from: a */
    public final void m3865a() {
        synchronized (this.f10335b) {
            this.f10335b.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                p4.u(this.f10338e).acquire();
                z = true;
            } catch (InterruptedException e) {
                m3863c(e);
            }
        }
        try {
            int i = Process.getThreadPriority(Process.myTid());
            while (true) {
                C2301n4<?> poll = this.f10336c.poll();
                if (poll != null) {
                    if (true != poll.f10309c) {
                        i = 10;
                    }
                    Process.setThreadPriority(i);
                    poll.run();
                } else {
                    synchronized (this.f10335b) {
                        if (this.f10336c.peek() == null) {
                            p4.w(this.f10338e);
                            try {
                                this.f10335b.wait(30000L);
                            } catch (InterruptedException e2) {
                                m3863c(e2);
                            }
                        }
                    }
                    synchronized (p4.x(this.f10338e)) {
                        if (this.f10336c.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (((m5) this.f10338e).a.z().w((String) null, C2232c3.f10069p0)) {
                m3864b();
            }
            m3864b();
        } catch (Throwable th) {
            m3864b();
            throw th;
        }
    }
}
