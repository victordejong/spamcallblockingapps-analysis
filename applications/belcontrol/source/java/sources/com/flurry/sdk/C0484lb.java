package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;
/* renamed from: com.flurry.sdk.lb */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lb.class */
public class C0484lb {

    /* renamed from: a */
    private static final String f3515a = "lb";

    /* renamed from: b */
    private Timer f3516b;

    /* renamed from: c */
    private C0485a f3517c;

    /* renamed from: d */
    private lc f3518d;

    /* renamed from: com.flurry.sdk.lb$a */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/lb$a.class */
    public final class C0485a extends TimerTask {
        private C0485a() {
            C0484lb.this = r4;
        }

        public /* synthetic */ C0485a(C0484lb c0484lb, byte b) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            C0478ku.m4596a(3, C0484lb.f3515a, "HttpRequest timed out. Cancelling.");
            lc lcVar = C0484lb.this.f3518d;
            long currentTimeMillis = System.currentTimeMillis();
            long j = lcVar.n;
            String str = lc.e;
            C0478ku.m4596a(3, str, "Timeout (" + (currentTimeMillis - j) + "MS) for url: " + lcVar.g);
            lcVar.q = 629;
            lcVar.t = true;
            lcVar.e();
            lcVar.f();
        }
    }

    public C0484lb(lc lcVar) {
        this.f3518d = lcVar;
    }

    /* renamed from: a */
    public final void m4571a() {
        synchronized (this) {
            Timer timer = this.f3516b;
            if (timer != null) {
                timer.cancel();
                this.f3516b = null;
                C0478ku.m4596a(3, f3515a, "HttpRequestTimeoutTimer stopped.");
            }
            this.f3517c = null;
        }
    }

    /* renamed from: a */
    public final void m4570a(long j) {
        synchronized (this) {
            if (this.f3516b != null) {
                m4571a();
            }
            this.f3516b = new Timer("HttpRequestTimeoutTimer");
            C0485a c0485a = new C0485a(this, (byte) 0);
            this.f3517c = c0485a;
            this.f3516b.schedule(c0485a, j);
            String str = f3515a;
            C0478ku.m4596a(3, str, "HttpRequestTimeoutTimer started: " + j + "MS");
        }
    }
}
