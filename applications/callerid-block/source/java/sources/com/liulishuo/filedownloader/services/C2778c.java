package com.liulishuo.filedownloader.services;

import com.liulishuo.filedownloader.services.C2786i;
import p092e.p096e.p097a.p098d0.C3019a;
import p092e.p096e.p097a.p098d0.C3021c;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p099e0.C3031c;
import p092e.p096e.p097a.p101g0.C3048b;
import p092e.p096e.p097a.p102h0.C3056c;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3063e;
/* renamed from: com.liulishuo.filedownloader.services.c */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/c.class */
public class C2778c {

    /* renamed from: a */
    private final C2779a f11533a;

    /* renamed from: com.liulishuo.filedownloader.services.c$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/c$a.class */
    public static class C2779a {

        /* renamed from: a */
        C3056c.AbstractC3059c f11534a;

        /* renamed from: b */
        Integer f11535b;

        /* renamed from: c */
        C3056c.AbstractC3061e f11536c;

        /* renamed from: d */
        C3056c.AbstractC3058b f11537d;

        /* renamed from: e */
        C3056c.AbstractC3057a f11538e;

        /* renamed from: f */
        C3056c.AbstractC3060d f11539f;

        /* renamed from: g */
        C2786i f11540g;
    }

    /* renamed from: d */
    private C3056c.AbstractC3057a m1767d() {
        return new C3019a();
    }

    /* renamed from: e */
    private C3056c.AbstractC3058b m1766e() {
        return new C3021c.C3023b();
    }

    /* renamed from: f */
    private AbstractC3026a m1765f() {
        return new C3031c();
    }

    /* renamed from: g */
    private C2786i m1764g() {
        C2786i.C2788b c2788b = new C2786i.C2788b();
        c2788b.m1722b(true);
        return c2788b.m1723a();
    }

    /* renamed from: h */
    private C3056c.AbstractC3060d m1763h() {
        return new C2777b();
    }

    /* renamed from: i */
    private C3056c.AbstractC3061e m1762i() {
        return new C3048b.C3049a();
    }

    /* renamed from: m */
    private int m1758m() {
        return C3063e.m405a().f12687e;
    }

    /* renamed from: a */
    public C3056c.AbstractC3057a m1770a() {
        C3056c.AbstractC3057a abstractC3057a;
        C2779a c2779a = this.f11533a;
        if (c2779a != null && (abstractC3057a = c2779a.f11538e) != null) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "initial FileDownloader manager with the customize connection count adapter: %s", abstractC3057a);
            }
            return abstractC3057a;
        }
        return m1767d();
    }

    /* renamed from: b */
    public C3056c.AbstractC3058b m1769b() {
        C3056c.AbstractC3058b abstractC3058b;
        C2779a c2779a = this.f11533a;
        if (c2779a != null && (abstractC3058b = c2779a.f11537d) != null) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "initial FileDownloader manager with the customize connection creator: %s", abstractC3058b);
            }
            return abstractC3058b;
        }
        return m1766e();
    }

    /* renamed from: c */
    public AbstractC3026a m1768c() {
        C3056c.AbstractC3059c abstractC3059c;
        C2779a c2779a = this.f11533a;
        if (c2779a == null || (abstractC3059c = c2779a.f11534a) == null) {
            return m1765f();
        }
        AbstractC3026a m419a = abstractC3059c.m419a();
        if (m419a == null) {
            return m1765f();
        }
        if (C3062d.f12682a) {
            C3062d.m414a(this, "initial FileDownloader manager with the customize database: %s", m419a);
        }
        return m419a;
    }

    /* renamed from: j */
    public C2786i m1761j() {
        C2786i c2786i;
        C2779a c2779a = this.f11533a;
        if (c2779a != null && (c2786i = c2779a.f11540g) != null) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "initial FileDownloader manager with the customize foreground service config: %s", c2786i);
            }
            return c2786i;
        }
        return m1764g();
    }

    /* renamed from: k */
    public C3056c.AbstractC3060d m1760k() {
        C3056c.AbstractC3060d abstractC3060d;
        C2779a c2779a = this.f11533a;
        if (c2779a != null && (abstractC3060d = c2779a.f11539f) != null) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "initial FileDownloader manager with the customize id generator: %s", abstractC3060d);
            }
            return abstractC3060d;
        }
        return m1763h();
    }

    /* renamed from: l */
    public C3056c.AbstractC3061e m1759l() {
        C3056c.AbstractC3061e abstractC3061e;
        C2779a c2779a = this.f11533a;
        if (c2779a != null && (abstractC3061e = c2779a.f11536c) != null) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "initial FileDownloader manager with the customize output stream: %s", abstractC3061e);
            }
            return abstractC3061e;
        }
        return m1762i();
    }

    /* renamed from: n */
    public int m1757n() {
        Integer num;
        C2779a c2779a = this.f11533a;
        if (c2779a != null && (num = c2779a.f11535b) != null) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d", num);
            }
            return C3063e.m404b(num.intValue());
        }
        return m1758m();
    }
}
