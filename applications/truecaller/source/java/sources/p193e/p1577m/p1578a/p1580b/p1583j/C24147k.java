package p193e.p1577m.p1578a.p1580b.p1583j;

import android.content.Context;
import java.util.Objects;
import java.util.concurrent.Executor;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.p1583j.C24153o;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.C24045c;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.C24046d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.C24048f;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.C24049g;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24078x;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24074t;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24075u;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24076v;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24077w;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24084c0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24087d0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24089e0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24092f0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24103i0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24108k0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.C24131b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.C24133c;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24177j;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24180l;
import p193e.p1577m.p1578a.p1580b.p1583j.p1594z.p1595b.C24183a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1594z.p1595b.C24184b;
/* renamed from: e.m.a.b.j.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/k.class */
public final class C24147k extends AbstractC24164w {

    /* renamed from: a */
    public Provider<Executor> f66866a;

    /* renamed from: b */
    public Provider<Context> f66867b;

    /* renamed from: c */
    public Provider f66868c;

    /* renamed from: d */
    public Provider f66869d;

    /* renamed from: e */
    public Provider f66870e;

    /* renamed from: f */
    public Provider<String> f66871f;

    /* renamed from: g */
    public Provider<C24097h0> f66872g;

    /* renamed from: h */
    public Provider<AbstractC24070s> f66873h;

    /* renamed from: i */
    public Provider<AbstractC24078x> f66874i;

    /* renamed from: j */
    public Provider<C24045c> f66875j;

    /* renamed from: k */
    public Provider<C24074t> f66876k;

    /* renamed from: l */
    public Provider<C24076v> f66877l;

    /* renamed from: m */
    public Provider<C24163v> f66878m;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [e.m.a.b.j.z.b.a] */
    public C24147k(Context context, C24148a c24148a) {
        Provider<Executor> provider = C24153o.C24154a.f66881a;
        Object obj = C24183a.f66929c;
        this.f66866a = !(provider instanceof C24183a) ? new C24183a<>(provider) : provider;
        Objects.requireNonNull(context, "instance cannot be null");
        C24184b c24184b = new C24184b(context);
        this.f66867b = c24184b;
        C24131b c24131b = C24131b.C24132a.f66836a;
        C24133c c24133c = C24133c.C24134a.f66837a;
        C24177j c24177j = new C24177j(c24184b, c24131b, c24133c);
        this.f66868c = c24177j;
        Provider c24180l = new C24180l(c24184b, c24177j);
        this.f66869d = !(c24180l instanceof C24183a) ? new C24183a(c24180l) : c24180l;
        Provider<Context> provider2 = this.f66867b;
        C24108k0 c24108k0 = new C24108k0(provider2, C24084c0.C24085a.f66762a, C24089e0.C24090a.f66767a);
        this.f66870e = c24108k0;
        C24087d0 c24087d0 = new C24087d0(provider2);
        this.f66871f = c24087d0;
        C24103i0 c24103i0 = new C24103i0(c24131b, c24133c, C24092f0.C24093a.f66770a, c24108k0, c24087d0);
        c24103i0 = !(c24103i0 instanceof C24183a) ? new C24183a(c24103i0) : c24103i0;
        this.f66872g = c24103i0;
        C24048f c24048f = new C24048f(c24131b);
        this.f66873h = c24048f;
        Provider<Context> provider3 = this.f66867b;
        C24049g c24049g = new C24049g(provider3, c24103i0, c24048f, c24133c);
        this.f66874i = c24049g;
        Provider<Executor> provider4 = this.f66866a;
        Provider provider5 = this.f66869d;
        C24046d c24046d = new C24046d(provider4, provider5, c24049g, c24103i0, c24103i0);
        this.f66875j = c24046d;
        C24075u c24075u = new C24075u(provider3, provider5, c24103i0, c24049g, provider4, c24103i0, c24131b, c24133c, c24103i0);
        this.f66876k = c24075u;
        C24077w c24077w = new C24077w(provider4, c24103i0, c24049g, c24103i0);
        this.f66877l = c24077w;
        Provider<C24163v> c24165x = new C24165x(c24131b, c24133c, c24046d, c24075u, c24077w);
        this.f66878m = !(c24165x instanceof C24183a) ? new C24183a<>(c24165x) : c24165x;
    }
}
