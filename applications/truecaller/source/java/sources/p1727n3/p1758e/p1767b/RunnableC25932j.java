package p1727n3.p1758e.p1767b;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Objects;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.C25713a1;
import p1727n3.p1758e.p1767b.C26083p0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26010s1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26051x;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26056y;
import p1727n3.p1758e.p1767b.p1768j1.C25953f0;
import p1727n3.p1758e.p1767b.p1768j1.C25987m;
import p1727n3.p1758e.p1767b.p1772k1.p1773j.p1774a.C26071a;
import p1727n3.p1758e.p1767b.p1772k1.p1773j.p1774a.C26073c;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.j */
/* loaded from: classes-dex2jar.jar:n3/e/b/j.class */
public final /* synthetic */ class RunnableC25932j implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C26083p0 f72522a;

    /* renamed from: b */
    public final /* synthetic */ Context f72523b;

    /* renamed from: c */
    public final /* synthetic */ Executor f72524c;

    /* renamed from: d */
    public final /* synthetic */ C26247b f72525d;

    /* renamed from: e */
    public final /* synthetic */ long f72526e;

    public /* synthetic */ RunnableC25932j(C26083p0 c26083p0, Context context, Executor executor, C26247b c26247b, long j) {
        this.f72522a = c26083p0;
        this.f72523b = context;
        this.f72524c = executor;
        this.f72525d = c26247b;
        this.f72526e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final C26083p0 c26083p0 = this.f72522a;
        Context context = this.f72523b;
        final Executor executor = this.f72524c;
        final C26247b c26247b = this.f72525d;
        final long j = this.f72526e;
        Objects.requireNonNull(c26083p0);
        try {
            Application m2735a = C26083p0.m2735a(context);
            c26083p0.f72778j = m2735a;
            if (m2735a == null) {
                c26083p0.f72778j = context.getApplicationContext();
            }
            AbstractC26056y.AbstractC26057a abstractC26057a = (AbstractC26056y.AbstractC26057a) c26083p0.f72771c.q.mo2850b(q0.r, null);
            if (abstractC26057a == null) {
                throw new C26101x0(new IllegalArgumentException("Invalid app configuration provided. Missing CameraFactory."));
            }
            C25987m c25987m = new C25987m(c26083p0.f72772d, c26083p0.f72773e);
            C26077m0 c26077m0 = (C26077m0) c26083p0.f72771c.q.mo2850b(q0.x, null);
            c26083p0.f72775g = abstractC26057a.mo2769a(c26083p0.f72778j, c25987m, c26077m0);
            AbstractC26051x.AbstractC26052a abstractC26052a = (AbstractC26051x.AbstractC26052a) c26083p0.f72771c.q.mo2850b(q0.s, null);
            if (abstractC26052a == null) {
                throw new C26101x0(new IllegalArgumentException("Invalid app configuration provided. Missing CameraDeviceSurfaceManager."));
            }
            Context context2 = c26083p0.f72778j;
            AbstractC26056y abstractC26056y = c26083p0.f72775g;
            c26083p0.f72776h = abstractC26052a.mo2771a(context2, ((C25713a1) abstractC26056y).f72004c, ((C25713a1) abstractC26056y).m3037a());
            AbstractC26010s1.AbstractC26012b abstractC26012b = (AbstractC26010s1.AbstractC26012b) c26083p0.f72771c.q.mo2850b(q0.t, null);
            if (abstractC26012b == null) {
                throw new C26101x0(new IllegalArgumentException("Invalid app configuration provided. Missing UseCaseConfigFactory."));
            }
            c26083p0.f72777i = abstractC26012b.mo2790b(c26083p0.f72778j);
            if (executor instanceof ExecutorC25933j0) {
                ((ExecutorC25933j0) executor).m2881b(c26083p0.f72775g);
            }
            c26083p0.f72769a.m2872b(c26083p0.f72775g);
            if (C26071a.f72748a.m2863a(C26073c.class) != null) {
                MediaSessionCompat.m43290K1(c26083p0.f72778j, c26083p0.f72769a, c26077m0);
            }
            c26083p0.m2731e();
            c26247b.m2258a(null);
        } catch (RuntimeException | C25953f0 | C26101x0 e) {
            if (SystemClock.elapsedRealtime() - j < 2500) {
                StringBuilder m8712G = C22128a.m8712G("Retry init. Start time ", j, " current time ");
                m8712G.append(SystemClock.elapsedRealtime());
                C26103y0.m2720e("CameraX", m8712G.toString(), e);
                Handler handler = c26083p0.f72773e;
                Runnable runnable = new Runnable() { // from class: n3.e.b.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        C26083p0 c26083p02 = C26083p0.this;
                        Executor executor2 = executor;
                        long j2 = j;
                        executor2.execute(new RunnableC25932j(c26083p02, c26083p02.f72778j, executor2, c26247b, j2));
                    }
                };
                if (Build.VERSION.SDK_INT >= 28) {
                    handler.postDelayed(runnable, "retry_token", 500L);
                    return;
                }
                Message obtain = Message.obtain(handler, runnable);
                obtain.obj = "retry_token";
                handler.sendMessageDelayed(obtain, 500L);
                return;
            }
            synchronized (c26083p0.f72770b) {
                c26083p0.f72779k = C26083p0.EnumC26084a.INITIALIZED;
            }
            if (e instanceof C25953f0) {
                C26103y0.m2723b("CameraX", "The device might underreport the amount of the cameras. Finish the initialize task since we are already reaching the maximum number of retries.", null);
                c26247b.m2258a(null);
            } else if (e instanceof C26101x0) {
                c26247b.m2256c(e);
            } else {
                c26247b.m2256c(new C26101x0(e));
            }
        }
    }
}
