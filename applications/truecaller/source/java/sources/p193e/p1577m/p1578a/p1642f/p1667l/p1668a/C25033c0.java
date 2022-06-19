package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Process;
import com.google.android.gms.measurement.internal.zzdu;
import com.google.android.gms.measurement.internal.zzfo;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: e.m.a.f.l.a.c0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/c0.class */
public final class C25033c0 extends Thread {

    /* renamed from: b */
    public final BlockingQueue f70021b;

    /* renamed from: d */
    public final /* synthetic */ zzfo f70023d;

    /* renamed from: c */
    public boolean f70022c = false;

    /* renamed from: a */
    public final Object f70020a = new Object();

    public C25033c0(zzfo zzfoVar, String str, BlockingQueue blockingQueue) {
        this.f70023d = zzfoVar;
        Objects.requireNonNull(blockingQueue, "null reference");
        this.f70021b = blockingQueue;
        setName(str);
    }

    /* renamed from: a */
    public final void m4231a() {
        synchronized (this.f70023d.i) {
            if (!this.f70022c) {
                this.f70023d.j.release();
                this.f70023d.i.notifyAll();
                zzfo zzfoVar = this.f70023d;
                if (this == zzfoVar.c) {
                    zzfoVar.c = null;
                } else if (this == zzfoVar.d) {
                    zzfoVar.d = null;
                } else {
                    ((v0) zzfoVar).a.zzay().f.m38590a("Current scheduler thread is neither worker nor network");
                }
                this.f70022c = true;
            }
        }
    }

    /* renamed from: b */
    public final void m4230b(InterruptedException interruptedException) {
        ((v0) this.f70023d).a.zzay().i.m38589b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.f70023d.j.acquire();
                z = true;
            } catch (InterruptedException e) {
                m4230b(e);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                C25027b0 c25027b0 = (C25027b0) this.f70021b.poll();
                if (c25027b0 != null) {
                    Process.setThreadPriority(true != c25027b0.f70010b ? 10 : threadPriority);
                    c25027b0.run();
                } else {
                    synchronized (this.f70020a) {
                        if (this.f70021b.peek() == null) {
                            zzfo zzfoVar = this.f70023d;
                            AtomicLong atomicLong = zzfo.k;
                            Objects.requireNonNull(zzfoVar);
                            try {
                                this.f70020a.wait(30000L);
                            } catch (InterruptedException e2) {
                                m4230b(e2);
                            }
                        }
                    }
                    synchronized (this.f70023d.i) {
                        if (this.f70021b.peek() == null) {
                            break;
                        }
                    }
                }
            }
            if (((v0) this.f70023d).a.g.r((String) null, zzdu.f6321f0)) {
                m4231a();
            }
        } finally {
            m4231a();
        }
    }
}
