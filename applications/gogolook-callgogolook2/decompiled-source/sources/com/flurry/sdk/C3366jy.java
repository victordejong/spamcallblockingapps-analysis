package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;
/* renamed from: com.flurry.sdk.jy */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jy.class */
public class C3366jy {

    /* renamed from: a */
    public static final String f5757a = "jy";

    /* renamed from: b */
    public Timer f5758b;

    /* renamed from: c */
    public C3367a f5759c;

    /* renamed from: d */
    public C3368jz f5760d;

    /* renamed from: com.flurry.sdk.jy$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jy$a.class */
    public final class C3367a extends TimerTask {
        public C3367a() {
        }

        public /* synthetic */ C3367a(C3366jy jyVar, byte b) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            C3356jq.m32615a(3, C3366jy.f5757a, "HttpRequest timed out. Cancelling.");
            C3368jz jzVar = C3366jy.this.f5760d;
            long currentTimeMillis = System.currentTimeMillis();
            long j = jzVar.f5773n;
            String str = C3368jz.f5762e;
            C3356jq.m32615a(3, str, "Timeout (" + (currentTimeMillis - j) + "MS) for url: " + jzVar.f5766g);
            jzVar.f5776q = 629;
            jzVar.f5779t = true;
            jzVar.m32577e();
            jzVar.m32576f();
        }
    }

    public C3366jy(C3368jz jzVar) {
        this.f5760d = jzVar;
    }

    /* renamed from: a */
    public final void m32587a() {
        synchronized (this) {
            if (this.f5758b != null) {
                this.f5758b.cancel();
                this.f5758b = null;
                C3356jq.m32615a(3, f5757a, "HttpRequestTimeoutTimer stopped.");
            }
            this.f5759c = null;
        }
    }

    /* renamed from: a */
    public final void m32586a(long j) {
        synchronized (this) {
            if (this.f5758b != null) {
                m32587a();
            }
            this.f5758b = new Timer("HttpRequestTimeoutTimer");
            this.f5759c = new C3367a(this, (byte) 0);
            this.f5758b.schedule(this.f5759c, j);
            String str = f5757a;
            C3356jq.m32615a(3, str, "HttpRequestTimeoutTimer started: " + j + "MS");
        }
    }
}
