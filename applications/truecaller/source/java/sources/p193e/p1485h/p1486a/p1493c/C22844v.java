package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.Objects;
import java.util.concurrent.Callable;
import p193e.p1485h.p1486a.p1493c.p1496l0.AbstractC22745a;
import p193e.p1485h.p1486a.p1493c.p1497m0.C22752a;
import p193e.p1485h.p1486a.p1493c.p1499o0.C22770b;
import p193e.p1485h.p1486a.p1493c.p1501q0.C22787b0;
import p193e.p1485h.p1486a.p1493c.p1502r0.C22820h;
import p193e.p1485h.p1486a.p1493c.p1506v0.C22847b;
import p193e.p1485h.p1486a.p1493c.p1507w0.C22867i;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22882a;
import p193e.p1485h.p1486a.p1493c.p1510y0.C22895k;
import p193e.p1485h.p1486a.p1493c.p1510y0.RunnableC22894j;
/* renamed from: e.h.a.c.v */
/* loaded from: classes-dex2jar.jar:e/h/a/c/v.class */
public class C22844v {

    /* renamed from: a */
    public C22723d0 f63406a;

    /* renamed from: b */
    public final AbstractC22745a f63407b;

    /* renamed from: c */
    public C22752a f63408c;

    /* renamed from: d */
    public C22770b f63409d;

    /* renamed from: e */
    public C22820h f63410e;

    /* renamed from: f */
    public final C22751m f63411f;

    /* renamed from: g */
    public C22847b f63412g;

    /* renamed from: h */
    public final AbstractC22742k f63413h;

    /* renamed from: i */
    public final CleverTapInstanceConfig f63414i;

    /* renamed from: j */
    public final Context f63415j;

    /* renamed from: k */
    public final C22718b0 f63416k;

    /* renamed from: l */
    public C22787b0 f63417l;

    /* renamed from: m */
    public C22867i f63418m;

    /* renamed from: e.h.a.c.v$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/v$a.class */
    public class CallableC22845a implements Callable<Void> {
        public CallableC22845a() {
            C22844v.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C22844v c22844v = C22844v.this;
            synchronized (c22844v.f63411f.f63016a) {
                if (c22844v.f63410e != null) {
                    Objects.requireNonNull((C22768o) c22844v.f63413h);
                    return null;
                }
                if (c22844v.f63416k.m7910j() != null) {
                    c22844v.f63410e = new C22820h(c22844v.f63414i, c22844v.f63416k.m7910j(), c22844v.f63407b.mo7819b(c22844v.f63415j), c22844v.f63411f, c22844v.f63413h, C22741j0.f62977a);
                    Objects.requireNonNull((C22768o) c22844v.f63413h);
                } else {
                    int i = c22844v.f63414i.m42081b().f62950a;
                }
                return null;
            }
        }
    }

    public C22844v(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22751m c22751m, AbstractC22742k abstractC22742k, C22718b0 c22718b0, AbstractC22745a abstractC22745a) {
        this.f63414i = cleverTapInstanceConfig;
        this.f63411f = c22751m;
        this.f63413h = abstractC22742k;
        this.f63416k = c22718b0;
        this.f63415j = context;
        this.f63407b = abstractC22745a;
    }

    /* renamed from: a */
    public void m7695a() {
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63414i;
        if (cleverTapInstanceConfig.f2244e) {
            cleverTapInstanceConfig.m42081b().m7856a(this.f63414i.f2240a, "Instance is analytics only, not initializing Notification Inbox");
            return;
        }
        C22895k m7641c = C22882a.m7644a(cleverTapInstanceConfig).m7641c();
        m7641c.f63554c.execute(new RunnableC22894j(m7641c, "initializeInbox", new CallableC22845a()));
    }
}
