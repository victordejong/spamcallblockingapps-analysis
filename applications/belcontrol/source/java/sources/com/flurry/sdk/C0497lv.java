package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;
/* renamed from: com.flurry.sdk.lv */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lv.class */
public final class C0497lv {

    /* renamed from: a */
    private Timer f3575a;

    /* renamed from: b */
    private C0498a f3576b;

    /* renamed from: com.flurry.sdk.lv$a */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/lv$a.class */
    public final class C0498a extends TimerTask {
        public C0498a() {
            C0497lv.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            C0497lv.this.m4517a();
            C0472kq.m4617a().m4616a(new lw());
        }
    }

    /* renamed from: a */
    public final void m4517a() {
        synchronized (this) {
            Timer timer = this.f3575a;
            if (timer != null) {
                timer.cancel();
                this.f3575a = null;
            }
            this.f3576b = null;
        }
    }

    /* renamed from: a */
    public final void m4516a(long j) {
        synchronized (this) {
            if (this.f3575a != null) {
                m4517a();
            }
            this.f3575a = new Timer("FlurrySessionTimer");
            C0498a c0498a = new C0498a();
            this.f3576b = c0498a;
            this.f3575a.schedule(c0498a, j);
        }
    }
}
