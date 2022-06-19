package p193e.p1485h.p1486a.p1493c;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.android.installreferrer.api.InstallReferrerClient;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.Objects;
import java.util.concurrent.Callable;
import n3.r.a.l;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1498n0.AbstractC22755a;
import p193e.p1485h.p1486a.p1493c.p1501q0.C22787b0;
import p193e.p1485h.p1486a.p1493c.p1507w0.C22867i;
import p193e.p1485h.p1486a.p1493c.p1507w0.CallableC22873l;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.HandlerC22886e;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/a.class */
public class C22709a {

    /* renamed from: a */
    public final C22727f f62830a;

    /* renamed from: b */
    public final AbstractC22755a f62831b;

    /* renamed from: c */
    public final AbstractC22742k f62832c;

    /* renamed from: d */
    public final CleverTapInstanceConfig f62833d;

    /* renamed from: e */
    public final Context f62834e;

    /* renamed from: f */
    public final C22858w f62835f;

    /* renamed from: g */
    public final C22787b0 f62836g;

    /* renamed from: h */
    public final C22867i f62837h;

    /* renamed from: i */
    public final C22739i0 f62838i;

    /* renamed from: e.h.a.c.a$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/a$a.class */
    public class CallableC22710a implements Callable<Void> {
        public CallableC22710a() {
            C22709a.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22709a c22709a = C22709a.this;
            C22858w c22858w = c22709a.f62835f;
            if (c22858w.f63459i || !c22858w.f63457g) {
                return null;
            }
            C22709a.m7930a(c22709a);
            return null;
        }
    }

    public C22709a(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22727f c22727f, C22858w c22858w, C22739i0 c22739i0, C22867i c22867i, AbstractC22742k abstractC22742k, C22787b0 c22787b0, AbstractC22755a abstractC22755a) {
        this.f62834e = context;
        this.f62833d = cleverTapInstanceConfig;
        this.f62830a = c22727f;
        this.f62835f = c22858w;
        this.f62838i = c22739i0;
        this.f62837h = c22867i;
        this.f62832c = abstractC22742k;
        this.f62836g = c22787b0;
        this.f62831b = abstractC22755a;
    }

    /* renamed from: a */
    public static void m7930a(C22709a c22709a) {
        c22709a.f62833d.m42081b().m7855b(c22709a.f62833d.f2240a, "Starting to handle install referrer");
        try {
            InstallReferrerClient build = InstallReferrerClient.newBuilder(c22709a.f62834e).build();
            build.startConnection(new C22717b(c22709a, build));
        } catch (Throwable th) {
            C22735g0 m42081b = c22709a.f62833d.m42081b();
            String str = c22709a.f62833d.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Google Play Install Referrer's InstallReferrerClient Class not found - ");
            m8728C.append(th.getLocalizedMessage());
            m8728C.append(" \n Please add implementation 'com.android.installreferrer:installreferrer:2.1' to your build.gradle");
            m42081b.m7855b(str, m8728C.toString());
        }
    }

    /* renamed from: b */
    public void m7929b() {
        C22858w.f63447t = false;
        this.f62838i.f62972a = System.currentTimeMillis();
        this.f62833d.m42081b().m7855b(this.f62833d.f2240a, "App in background");
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (this.f62835f.m7673b()) {
            try {
                C26232y.m2470E1(this.f62834e, C26232y.m2398W1(this.f62833d, "sexe"), currentTimeMillis);
                C22735g0 m42081b = this.f62833d.m42081b();
                String str = this.f62833d.f2240a;
                m42081b.m7855b(str, "Updated session time: " + currentTimeMillis);
            } catch (Throwable th) {
                C22735g0 m42081b2 = this.f62833d.m42081b();
                String str2 = this.f62833d.f2240a;
                StringBuilder m8728C = C22128a.m8728C("Failed to update session time time: ");
                m8728C.append(th.getMessage());
                m42081b2.m7855b(str2, m8728C.toString());
            }
        }
    }

    /* renamed from: c */
    public void m7928c(Activity activity) {
        this.f62833d.m42081b().m7855b(this.f62833d.f2240a, "App in foreground");
        C22739i0 c22739i0 = this.f62838i;
        if (c22739i0.f62972a > 0 && System.currentTimeMillis() - c22739i0.f62972a > 1200000) {
            c22739i0.f62974c.m42081b().m7855b(c22739i0.f62974c.f2240a, "Session Timed Out");
            c22739i0.m7852a();
            C22858w.m7670e(null);
        }
        if (!this.f62835f.m7672c()) {
            this.f62830a.m7883h();
            this.f62830a.mo7850a();
            C22867i c22867i = this.f62837h;
            C22895k m7643a = C22882a.m7644a(c22867i.f63492f).m7643a();
            m7643a.f63554c.execute(new RunnableC22894j(m7643a, "PushProviders#refreshAllTokens", new CallableC22873l(c22867i)));
            C22895k m7641c = C22882a.m7644a(this.f62833d).m7641c();
            m7641c.f63554c.execute(new RunnableC22894j(m7641c, "HandlingInstallReferrer", new CallableC22710a()));
            try {
                Objects.requireNonNull(this.f62832c);
            } catch (IllegalStateException e) {
                this.f62833d.m42081b().m7855b(this.f62833d.f2240a, e.getLocalizedMessage());
            } catch (Exception e2) {
                this.f62833d.m42081b().m7855b(this.f62833d.f2240a, "Failed to trigger location");
            }
        }
        this.f62831b.mo7813c();
        C22787b0 c22787b0 = this.f62836g;
        if (c22787b0.m7762c() && C22787b0.f63158k != null && System.currentTimeMillis() / 1000 < C22787b0.f63158k.f2319E) {
            l lVar = (l) activity;
            Fragment m42939N = lVar.getSupportFragmentManager().m42939N(new Bundle(), C22787b0.f63158k.f2324N);
            if (C22858w.m7674a() != null && m42939N != null) {
                C26907a c26907a = new C26907a(lVar.getSupportFragmentManager());
                Bundle bundle = new Bundle();
                bundle.putParcelable("inApp", C22787b0.f63158k);
                bundle.putParcelable(DTBMetricsConfiguration.CONFIG_DIR, c22787b0.f63162c);
                m42939N.setArguments(bundle);
                c26907a.m1119n(17498112, 17498113);
                c26907a.mo1122k(16908290, m42939N, C22787b0.f63158k.f2324N, 1);
                String str = c22787b0.f63162c.f2240a;
                String str2 = C22787b0.f63158k.f2334g;
                c26907a.mo1127f();
            }
        }
        C22787b0 c22787b02 = this.f62836g;
        if (!c22787b02.m7762c()) {
            if (activity == null) {
                return;
            }
            activity.getLocalClassName();
        } else if (c22787b02.f63169j.f63538a == null) {
            c22787b02.m7756i(c22787b02.f63163d);
        } else {
            c22787b02.f63168i.m7855b(c22787b02.f63162c.f2240a, "Found a pending inapp runnable. Scheduling it");
            HandlerC22886e handlerC22886e = c22787b02.f63169j;
            handlerC22886e.postDelayed(handlerC22886e.f63538a, 200L);
            c22787b02.f63169j.f63538a = null;
        }
    }
}
