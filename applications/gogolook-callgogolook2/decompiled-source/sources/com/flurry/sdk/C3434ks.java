package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;
/* renamed from: com.flurry.sdk.ks */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ks.class */
public final class C3434ks {

    /* renamed from: a */
    public Timer f5889a;

    /* renamed from: b */
    public C3435a f5890b;

    /* renamed from: com.flurry.sdk.ks$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ks$a.class */
    public final class C3435a extends TimerTask {
        public C3435a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            C3434ks.this.m32496a();
            C3345jm.m32636a().m32635a(new C3436kt());
        }
    }

    /* renamed from: a */
    public final void m32496a() {
        synchronized (this) {
            if (this.f5889a != null) {
                this.f5889a.cancel();
                this.f5889a = null;
            }
            this.f5890b = null;
        }
    }

    /* renamed from: a */
    public final void m32495a(long j) {
        synchronized (this) {
            if (this.f5889a != null) {
                m32496a();
            }
            this.f5889a = new Timer("FlurrySessionTimer");
            this.f5890b = new C3435a();
            this.f5889a.schedule(this.f5890b, j);
        }
    }
}
