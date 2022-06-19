package ba;

import java.util.logging.Level;
/* renamed from: ba.a */
/* loaded from: classes2-dex2jar.jar:ba/a.class */
public final class RunnableC0747a implements Runnable, AbstractC0761j {

    /* renamed from: a */
    public final C0760i f2819a = new C0760i();

    /* renamed from: b */
    public final C0748b f2820b;

    /* renamed from: c */
    public volatile boolean f2821c;

    public RunnableC0747a(C0748b c0748b) {
        this.f2820b = c0748b;
    }

    @Override // ba.AbstractC0761j
    /* renamed from: a */
    public void mo2657a(C0767o c0767o, Object obj) {
        C0759h m7395a = C0759h.m7395a(c0767o, obj);
        synchronized (this) {
            this.f2819a.m7394a(m7395a);
            if (!this.f2821c) {
                this.f2821c = true;
                this.f2820b.f2834j.execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        C0759h m7393b;
        while (true) {
            try {
                C0760i c0760i = this.f2819a;
                synchronized (c0760i) {
                    if (c0760i.f2860a == null) {
                        c0760i.wait(1000);
                    }
                    m7393b = c0760i.m7393b();
                }
                C0759h c0759h = m7393b;
                if (m7393b == null) {
                    synchronized (this) {
                        c0759h = this.f2819a.m7393b();
                        if (c0759h == null) {
                            return;
                        }
                    }
                }
                this.f2820b.m7408c(c0759h);
            } catch (InterruptedException e) {
                AbstractC0754e abstractC0754e = this.f2820b.f2840p;
                Level level = Level.WARNING;
                abstractC0754e.mo7243b(level, Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.f2821c = false;
            }
        }
    }
}
