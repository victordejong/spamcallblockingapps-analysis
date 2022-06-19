package com.applovin.impl.sdk;

import com.applovin.impl.sdk.p053ad.AppLovinAdImpl;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p053ad.C1292f;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/c.class */
public class C1312c {

    /* renamed from: a */
    private final C1408l f4661a;

    /* renamed from: b */
    private final C1479t f4662b;

    /* renamed from: d */
    private final Map<C1285d, C1543v> f4664d = new HashMap();

    /* renamed from: e */
    private final Map<C1285d, C1543v> f4665e = new HashMap();

    /* renamed from: c */
    private final Object f4663c = new Object();

    public C1312c(C1408l c1408l) {
        this.f4661a = c1408l;
        this.f4662b = c1408l.m5542A();
        for (C1285d c1285d : C1285d.m5999f()) {
            this.f4664d.put(c1285d, new C1543v());
            this.f4665e.put(c1285d, new C1543v());
        }
    }

    /* renamed from: d */
    private C1543v m5835d(C1285d c1285d) {
        C1543v c1543v;
        synchronized (this.f4663c) {
            C1543v c1543v2 = this.f4664d.get(c1285d);
            c1543v = c1543v2;
            if (c1543v2 == null) {
                c1543v = new C1543v();
                this.f4664d.put(c1285d, c1543v);
            }
        }
        return c1543v;
    }

    /* renamed from: e */
    private C1543v m5834e(C1285d c1285d) {
        C1543v c1543v;
        synchronized (this.f4663c) {
            C1543v c1543v2 = this.f4665e.get(c1285d);
            c1543v = c1543v2;
            if (c1543v2 == null) {
                c1543v = new C1543v();
                this.f4665e.put(c1285d, c1543v);
            }
        }
        return c1543v;
    }

    /* renamed from: f */
    private C1543v m5833f(C1285d c1285d) {
        synchronized (this.f4663c) {
            C1543v m5834e = m5834e(c1285d);
            if (m5834e.m4923a() > 0) {
                return m5834e;
            }
            return m5835d(c1285d);
        }
    }

    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.applovin.impl.sdk.t, java.lang.StringBuilder] */
    /* renamed from: a */
    public AppLovinAdImpl m5838a(C1285d c1285d) {
        C1292f c1292f;
        C1543v c1543v;
        String str;
        ?? r0;
        synchronized (this.f4663c) {
            if (m5835d(c1285d).m4923a() > 0) {
                c1543v = m5834e(c1285d);
                c1543v.m4922a(c1543v.m4920c());
                c1292f = new C1292f(c1285d, this.f4661a);
            } else {
                c1543v = null;
                c1292f = null;
            }
            C1479t c1479t = this.f4662b;
            if (c1292f != null) {
                new StringBuilder();
                String str2 = "Retrieved ad of zone ";
                str = str2;
                r0 = str2;
            } else {
                new StringBuilder();
                String str3 = "Unable to retrieve ad of zone ";
                str = str3;
                r0 = str3;
            }
            r0.append(str);
            r0.append(c1285d);
            r0.append("...");
            r0.m5116b("AdPreloadManager", r0.toString());
            return c1292f;
        }
    }

    /* renamed from: a */
    public void m5839a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.f4663c) {
            m5835d(appLovinAdImpl.getAdZone()).m4922a(appLovinAdImpl);
            C1479t c1479t = this.f4662b;
            c1479t.m5116b("AdPreloadManager", "Ad enqueued: " + appLovinAdImpl);
        }
    }

    /* renamed from: b */
    public AppLovinAdImpl m5837b(C1285d c1285d) {
        AppLovinAdImpl m4920c;
        synchronized (this.f4663c) {
            m4920c = m5833f(c1285d).m4920c();
        }
        return m4920c;
    }

    /* renamed from: c */
    public AppLovinAdBase m5836c(C1285d c1285d) {
        AppLovinAdImpl m4919d;
        synchronized (this.f4663c) {
            m4919d = m5833f(c1285d).m4919d();
        }
        return m4919d;
    }
}
