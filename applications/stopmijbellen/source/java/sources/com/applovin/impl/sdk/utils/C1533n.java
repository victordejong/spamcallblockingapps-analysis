package com.applovin.impl.sdk.utils;

import com.applovin.impl.sdk.C1408l;
import java.util.Timer;
import java.util.TimerTask;
/* renamed from: com.applovin.impl.sdk.utils.n */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/n.class */
public class C1533n {

    /* renamed from: a */
    private final C1408l f5696a;

    /* renamed from: b */
    private Timer f5697b;

    /* renamed from: c */
    private long f5698c;

    /* renamed from: d */
    private long f5699d;

    /* renamed from: e */
    private final Runnable f5700e;

    /* renamed from: f */
    private long f5701f;

    /* renamed from: g */
    private final Object f5702g = new Object();

    private C1533n(C1408l c1408l, Runnable runnable) {
        this.f5696a = c1408l;
        this.f5700e = runnable;
    }

    /* renamed from: a */
    public static C1533n m4965a(long j, C1408l c1408l, Runnable runnable) {
        if (j < 0) {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Invalid fire time passed in: " + j + ".");
        } else if (runnable == null) {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Runnable is null.");
        } else {
            C1533n c1533n = new C1533n(c1408l, runnable);
            c1533n.f5698c = System.currentTimeMillis();
            c1533n.f5699d = j;
            try {
                Timer timer = new Timer();
                c1533n.f5697b = timer;
                timer.schedule(c1533n.m4957e(), j);
            } catch (OutOfMemoryError e) {
                c1408l.m5542A().m5115b("Timer", "Failed to create timer due to OOM error", e);
            }
            return c1533n;
        }
    }

    /* renamed from: e */
    private TimerTask m4957e() {
        return new TimerTask() { // from class: com.applovin.impl.sdk.utils.n.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                try {
                    C1533n.this.f5700e.run();
                    synchronized (C1533n.this.f5702g) {
                        C1533n.this.f5697b = null;
                    }
                } catch (Throwable th) {
                    try {
                        if (C1533n.this.f5696a != null) {
                            C1533n.this.f5696a.m5542A().m5115b("Timer", "Encountered error while executing timed task", th);
                        }
                        synchronized (C1533n.this.f5702g) {
                            C1533n.this.f5697b = null;
                        }
                    } catch (Throwable th2) {
                        synchronized (C1533n.this.f5702g) {
                            C1533n.this.f5697b = null;
                            throw th2;
                        }
                    }
                }
            }
        };
    }

    /* renamed from: a */
    public long m4966a() {
        if (this.f5697b != null) {
            return this.f5699d - (System.currentTimeMillis() - this.f5698c);
        }
        return this.f5699d - this.f5701f;
    }

    /* renamed from: b */
    public void m4962b() {
        synchronized (this.f5702g) {
            Timer timer = this.f5697b;
            if (timer != null) {
                timer.cancel();
                this.f5701f = Math.max(1L, System.currentTimeMillis() - this.f5698c);
                this.f5697b = null;
            }
        }
    }

    /* renamed from: c */
    public void m4960c() {
        synchronized (this.f5702g) {
            long j = this.f5701f;
            if (j > 0) {
                long j2 = this.f5699d - j;
                this.f5699d = j2;
                if (j2 < 0) {
                    this.f5699d = 0L;
                }
                Timer timer = new Timer();
                this.f5697b = timer;
                timer.schedule(m4957e(), this.f5699d);
                this.f5698c = System.currentTimeMillis();
                this.f5701f = 0L;
            }
        }
    }

    /* renamed from: d */
    public void m4958d() {
        synchronized (this.f5702g) {
            Timer timer = this.f5697b;
            if (timer != null) {
                timer.cancel();
                this.f5697b = null;
                this.f5701f = 0L;
            }
        }
    }
}
