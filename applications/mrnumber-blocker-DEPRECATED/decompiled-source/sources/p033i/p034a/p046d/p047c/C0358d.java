package p033i.p034a.p046d.p047c;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: i.a.d.c.d */
/* loaded from: classes2-dex2jar.jar:i/a/d/c/d.class */
public final class C0358d {

    /* renamed from: a */
    private Boolean f882a = null;

    /* renamed from: b */
    private final List<Runnable> f883b = new ArrayList();

    /* renamed from: c */
    private final Object f884c = new Object();

    static {
        new C0358d().m338e();
        new C0358d().m342a();
    }

    /* renamed from: a */
    public C0358d m342a() {
        synchronized (this.f884c) {
            if (this.f882a == null) {
                this.f882a = Boolean.FALSE;
                for (Runnable runnable : this.f883b) {
                    runnable.run();
                }
            }
        }
        return this;
    }

    /* renamed from: b */
    public boolean m341b() {
        boolean z;
        synchronized (this.f884c) {
            z = this.f882a != null;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m340c() {
        boolean z;
        synchronized (this.f884c) {
            Boolean bool = this.f882a;
            z = bool != null && bool.booleanValue();
        }
        return z;
    }

    /* renamed from: d */
    public C0358d m339d(long j, TimeUnit timeUnit) {
        if (m341b()) {
            return this;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        m337f(new Runnable() { // from class: i.a.d.c.a
            @Override // java.lang.Runnable
            public final void run() {
                countDownLatch.countDown();
            }
        });
        if (!countDownLatch.await(j, timeUnit)) {
            m342a();
        }
        return this;
    }

    /* renamed from: e */
    public C0358d m338e() {
        synchronized (this.f884c) {
            if (this.f882a == null) {
                this.f882a = Boolean.TRUE;
                for (Runnable runnable : this.f883b) {
                    runnable.run();
                }
            }
        }
        return this;
    }

    /* renamed from: f */
    public C0358d m337f(Runnable runnable) {
        synchronized (this.f884c) {
            if (this.f882a != null) {
                runnable.run();
            } else {
                this.f883b.add(runnable);
            }
        }
        return this;
    }
}
