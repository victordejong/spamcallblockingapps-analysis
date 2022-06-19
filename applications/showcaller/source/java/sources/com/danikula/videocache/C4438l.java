package com.danikula.videocache;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;
import org.slf4j.AbstractC9605b;
import org.slf4j.C9606c;
/* renamed from: com.danikula.videocache.l */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/l.class */
public class C4438l {

    /* renamed from: a */
    private static final AbstractC9605b f13555a = C9606c.m352i("ProxyCache");

    /* renamed from: b */
    private final AbstractC4442n f13556b;

    /* renamed from: c */
    private final AbstractC4420a f13557c;

    /* renamed from: g */
    private volatile Thread f13561g;

    /* renamed from: h */
    private volatile boolean f13562h;

    /* renamed from: d */
    private final Object f13558d = new Object();

    /* renamed from: e */
    private final Object f13559e = new Object();

    /* renamed from: i */
    private volatile int f13563i = -1;

    /* renamed from: f */
    private final AtomicInteger f13560f = new AtomicInteger();

    /* renamed from: com.danikula.videocache.l$b */
    /* loaded from: classes-dex2jar.jar:com/danikula/videocache/l$b.class */
    public class RunnableC4440b implements Runnable {
        private RunnableC4440b() {
            C4438l.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4438l.this.m22464k();
        }
    }

    public C4438l(AbstractC4442n abstractC4442n, AbstractC4420a abstractC4420a) {
        this.f13556b = (AbstractC4442n) C4437k.m22476d(abstractC4442n);
        this.f13557c = (AbstractC4420a) C4437k.m22476d(abstractC4420a);
    }

    /* renamed from: b */
    private void m22473b() {
        int i = this.f13560f.get();
        if (i < 1) {
            return;
        }
        this.f13560f.set(0);
        throw new ProxyCacheException("Error reading source " + i + " times");
    }

    /* renamed from: c */
    private void m22472c() {
        try {
            this.f13556b.close();
        } catch (ProxyCacheException e) {
            m22467h(new ProxyCacheException("Error closing source " + this.f13556b, e));
        }
    }

    /* renamed from: d */
    private boolean m22471d() {
        return Thread.currentThread().isInterrupted() || this.f13562h;
    }

    /* renamed from: e */
    private void m22470e(long j, long j2) {
        m22469f(j, j2);
        synchronized (this.f13558d) {
            this.f13558d.notifyAll();
        }
    }

    /* renamed from: i */
    private void m22466i() {
        this.f13563i = 100;
        mo22468g(this.f13563i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* renamed from: k */
    public void m22464k() {
        char c = 0;
        char c2 = 65535;
        try {
            char mo22447b = this.f13557c.mo22447b();
            this.f13556b.mo22452a(mo22447b);
            ?? length = this.f13556b.length();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = this.f13556b.read(bArr);
                if (read == -1) {
                    m22461n();
                    m22466i();
                    c2 = length;
                    c = mo22447b;
                    break;
                }
                synchronized (this.f13559e) {
                    if (m22471d()) {
                        m22472c();
                        m22470e(mo22447b, length);
                        return;
                    }
                    this.f13557c.mo22446c(bArr, read);
                }
                mo22447b += read;
                m22470e(mo22447b, length);
            }
        } finally {
            try {
                m22472c();
                m22470e(c, c2);
            } catch (Throwable th) {
            }
        }
        m22472c();
        m22470e(c, c2);
    }

    /* renamed from: l */
    private void m22463l() {
        synchronized (this) {
            boolean z = (this.f13561g == null || this.f13561g.getState() == Thread.State.TERMINATED) ? false : true;
            if (!this.f13562h && !this.f13557c.mo22445d() && !z) {
                RunnableC4440b runnableC4440b = new RunnableC4440b();
                this.f13561g = new Thread(runnableC4440b, "Source reader for " + this.f13556b);
                this.f13561g.start();
            }
        }
    }

    /* renamed from: n */
    private void m22461n() {
        synchronized (this.f13559e) {
            if (!m22471d() && this.f13557c.mo22447b() == this.f13556b.length()) {
                this.f13557c.mo22448a();
            }
        }
    }

    /* renamed from: o */
    private void m22460o() {
        synchronized (this.f13558d) {
            try {
                this.f13558d.wait(1000L);
            } catch (InterruptedException e) {
                throw new ProxyCacheException("Waiting source data is interrupted!", e);
            }
        }
    }

    /* renamed from: f */
    protected void m22469f(long j, long j2) {
        boolean z = true;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        int i2 = i == 0 ? 100 : (int) ((((float) j) / ((float) j2)) * 100.0f);
        boolean z2 = i2 != this.f13563i;
        if (i < 0) {
            z = false;
        }
        if (z && z2) {
            mo22468g(i2);
        }
        this.f13563i = i2;
    }

    /* renamed from: g */
    protected void mo22468g(int i) {
        throw null;
    }

    /* renamed from: h */
    protected final void m22467h(Throwable th) {
        if (th instanceof InterruptedProxyCacheException) {
            f13555a.debug("ProxyCache is interrupted");
        } else {
            f13555a.error("ProxyCache error", th);
        }
    }

    /* renamed from: j */
    public int m22465j(byte[] bArr, long j, int i) {
        C4441m.m22459a(bArr, j, i);
        while (!this.f13557c.mo22445d() && this.f13557c.mo22447b() < i + j && !this.f13562h) {
            m22463l();
            m22460o();
            m22473b();
        }
        int mo22444e = this.f13557c.mo22444e(bArr, j, i);
        if (this.f13557c.mo22445d() && this.f13563i != 100) {
            this.f13563i = 100;
            mo22468g(100);
        }
        return mo22444e;
    }

    /* renamed from: m */
    public void m22462m() {
        synchronized (this.f13559e) {
            AbstractC9605b abstractC9605b = f13555a;
            abstractC9605b.debug("Shutdown proxy for " + this.f13556b);
            try {
                this.f13562h = true;
                if (this.f13561g != null) {
                    this.f13561g.interrupt();
                }
                this.f13557c.close();
            } catch (ProxyCacheException e) {
                m22467h(e);
            }
        }
    }
}
