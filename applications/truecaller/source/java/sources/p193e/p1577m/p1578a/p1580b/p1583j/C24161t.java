package p193e.p1577m.p1578a.p1580b.p1583j;

import java.util.Objects;
import p193e.p1577m.p1578a.p1580b.AbstractC23988c;
import p193e.p1577m.p1578a.p1580b.AbstractC23990e;
import p193e.p1577m.p1578a.p1580b.AbstractC23991f;
import p193e.p1577m.p1578a.p1580b.AbstractC23993h;
import p193e.p1577m.p1578a.p1580b.C23987b;
import p193e.p1577m.p1578a.p1580b.EnumC23989d;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.C24141i;
import p193e.p1577m.p1578a.p1580b.p1583j.C24144j;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.AbstractC24047e;
/* renamed from: e.m.a.b.j.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/t.class */
public final class C24161t<T> implements AbstractC23991f<T> {

    /* renamed from: a */
    public final AbstractC24158r f66888a;

    /* renamed from: b */
    public final String f66889b;

    /* renamed from: c */
    public final C23987b f66890c;

    /* renamed from: d */
    public final AbstractC23990e<T, byte[]> f66891d;

    /* renamed from: e */
    public final AbstractC24162u f66892e;

    public C24161t(AbstractC24158r abstractC24158r, String str, C23987b c23987b, AbstractC23990e<T, byte[]> abstractC23990e, AbstractC24162u abstractC24162u) {
        this.f66888a = abstractC24158r;
        this.f66889b = str;
        this.f66890c = c23987b;
        this.f66891d = abstractC23990e;
        this.f66892e = abstractC24162u;
    }

    /* renamed from: a */
    public void m5519a(AbstractC23988c<T> abstractC23988c, AbstractC23993h abstractC23993h) {
        AbstractC24162u abstractC24162u = this.f66892e;
        AbstractC24158r abstractC24158r = this.f66888a;
        Objects.requireNonNull(abstractC24158r, "Null transportContext");
        Objects.requireNonNull(abstractC23988c, "Null event");
        String str = this.f66889b;
        Objects.requireNonNull(str, "Null transportName");
        AbstractC23990e<T, byte[]> abstractC23990e = this.f66891d;
        Objects.requireNonNull(abstractC23990e, "Null transformer");
        C23987b c23987b = this.f66890c;
        Objects.requireNonNull(c23987b, "Null encoding");
        C24163v c24163v = (C24163v) abstractC24162u;
        AbstractC24047e abstractC24047e = c24163v.f66896c;
        EnumC23989d mo5632c = abstractC23988c.mo5632c();
        AbstractC24158r.AbstractC24159a m5527a = AbstractC24158r.m5527a();
        m5527a.mo5522b(abstractC24158r.mo5526b());
        m5527a.mo5521c(mo5632c);
        byte[] mo5525c = abstractC24158r.mo5525c();
        C24144j.C24146b c24146b = (C24144j.C24146b) m5527a;
        c24146b.f66864b = mo5525c;
        AbstractC24158r mo5523a = c24146b.mo5523a();
        AbstractC24151n.AbstractC24152a m5545a = AbstractC24151n.m5545a();
        m5545a.mo5531e(c24163v.f66894a.mo5549a());
        m5545a.mo5529g(c24163v.f66895b.mo5549a());
        m5545a.mo5530f(str);
        m5545a.mo5532d(new C24150m(c23987b, abstractC23990e.apply(abstractC23988c.mo5633b())));
        C24141i.C24143b c24143b = (C24141i.C24143b) m5545a;
        c24143b.f66855b = abstractC23988c.mo5634a();
        abstractC24047e.mo5593a(mo5523a, c24143b.mo5534b(), abstractC23993h);
    }
}
