package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h;

import android.content.Context;
import e.m.d.r.k.h;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1580b.C23987b;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24155p;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.C24150m;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24032a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24035c;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24095g0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24124z;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24171e;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24173g;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24181m;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24166a;
/* renamed from: e.m.a.b.j.c0.h.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/t.class */
public class C24074t {

    /* renamed from: a */
    public final Context f66732a;

    /* renamed from: b */
    public final AbstractC24171e f66733b;

    /* renamed from: c */
    public final AbstractC24080a0 f66734c;

    /* renamed from: d */
    public final AbstractC24078x f66735d;

    /* renamed from: e */
    public final Executor f66736e;

    /* renamed from: f */
    public final AbstractC24127b f66737f;

    /* renamed from: g */
    public final AbstractC24130a f66738g;

    /* renamed from: h */
    public final AbstractC24130a f66739h;

    /* renamed from: i */
    public final AbstractC24124z f66740i;

    @Inject
    public C24074t(Context context, AbstractC24171e abstractC24171e, AbstractC24080a0 abstractC24080a0, AbstractC24078x abstractC24078x, Executor executor, AbstractC24127b abstractC24127b, AbstractC24130a abstractC24130a, AbstractC24130a abstractC24130a2, AbstractC24124z abstractC24124z) {
        this.f66732a = context;
        this.f66733b = abstractC24171e;
        this.f66734c = abstractC24080a0;
        this.f66735d = abstractC24078x;
        this.f66736e = executor;
        this.f66737f = abstractC24127b;
        this.f66738g = abstractC24130a;
        this.f66739h = abstractC24130a2;
        this.f66740i = abstractC24124z;
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* renamed from: a */
    public void m5582a(final AbstractC24158r abstractC24158r, int i) {
        AbstractC24173g abstractC24173g;
        AbstractC24181m abstractC24181m = this.f66733b.get(abstractC24158r.mo5526b());
        char c = 0;
        while (((Boolean) this.f66737f.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.e
            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
            public final Object execute() {
                C24074t c24074t = C24074t.this;
                return Boolean.valueOf(c24074t.f66734c.mo5567t1(abstractC24158r));
            }
        })).booleanValue()) {
            final Iterable<AbstractC24095g0> iterable = (Iterable) this.f66737f.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.g
                @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                public final Object execute() {
                    C24074t c24074t = C24074t.this;
                    return c24074t.f66734c.mo5575K1(abstractC24158r);
                }
            });
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (abstractC24181m == null) {
                C26232y.m2448K("Uploader", "Unknown backend for %s, deleting event batch for it...", abstractC24158r);
                abstractC24173g = AbstractC24173g.m5512a();
            } else {
                ArrayList arrayList = new ArrayList();
                for (AbstractC24095g0 abstractC24095g0 : iterable) {
                    arrayList.add(abstractC24095g0.mo5556a());
                }
                if (abstractC24158r.mo5525c() != null) {
                    AbstractC24127b abstractC24127b = this.f66737f;
                    final AbstractC24124z abstractC24124z = this.f66740i;
                    Objects.requireNonNull(abstractC24124z);
                    C24032a c24032a = (C24032a) abstractC24127b.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.o
                        @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                        public final Object execute() {
                            return AbstractC24124z.this.mo5552d();
                        }
                    });
                    AbstractC24151n.AbstractC24152a m5545a = AbstractC24151n.m5545a();
                    m5545a.mo5531e(this.f66738g.mo5549a());
                    m5545a.mo5529g(this.f66739h.mo5549a());
                    m5545a.mo5530f("GDT_CLIENT_METRICS");
                    C23987b c23987b = new C23987b("proto");
                    Objects.requireNonNull(c24032a);
                    h hVar = AbstractC24155p.f66882a;
                    Objects.requireNonNull(hVar);
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        hVar.a(c24032a, byteArrayOutputStream);
                    } catch (IOException e) {
                    }
                    m5545a.mo5532d(new C24150m(c23987b, byteArrayOutputStream.toByteArray()));
                    arrayList.add(abstractC24181m.mo5504a(m5545a.mo5534b()));
                }
                abstractC24173g = abstractC24181m.mo5503b(new C24166a(arrayList, abstractC24158r.mo5525c(), null));
            }
            if (abstractC24173g.mo5510c() == AbstractC24173g.EnumC24174a.TRANSIENT_ERROR) {
                final char c2 = c;
                this.f66737f.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.h
                    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                    public final Object execute() {
                        C24074t c24074t = C24074t.this;
                        Iterable<AbstractC24095g0> iterable2 = iterable;
                        AbstractC24158r abstractC24158r2 = abstractC24158r;
                        long j = c2;
                        c24074t.f66734c.mo5565x1(iterable2);
                        c24074t.f66734c.mo5578G(abstractC24158r2, c24074t.f66738g.mo5549a() + j);
                        return null;
                    }
                });
                this.f66735d.mo5581a(abstractC24158r, i + 1, true);
                return;
            }
            this.f66737f.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.j
                @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                public final Object execute() {
                    C24074t c24074t = C24074t.this;
                    c24074t.f66734c.mo5574P0(iterable);
                    return null;
                }
            });
            if (abstractC24173g.mo5510c() == AbstractC24173g.EnumC24174a.OK) {
                ?? max = Math.max((long) c, abstractC24173g.mo5511b());
                boolean z = false;
                if (abstractC24158r.mo5525c() != null) {
                    z = true;
                }
                c = max;
                if (z) {
                    this.f66737f.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.l
                        @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                        public final Object execute() {
                            C24074t.this.f66740i.mo5553b();
                            return null;
                        }
                    });
                    c = max;
                }
            } else if (abstractC24173g.mo5510c() == AbstractC24173g.EnumC24174a.INVALID_PAYLOAD) {
                final HashMap hashMap = new HashMap();
                for (AbstractC24095g0 abstractC24095g02 : iterable) {
                    String mo5538h = abstractC24095g02.mo5556a().mo5538h();
                    if (!hashMap.containsKey(mo5538h)) {
                        hashMap.put(mo5538h, 1);
                    } else {
                        hashMap.put(mo5538h, Integer.valueOf(((Integer) hashMap.get(mo5538h)).intValue() + 1));
                    }
                }
                this.f66737f.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.f
                    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                    public final Object execute() {
                        C24074t c24074t = C24074t.this;
                        Map map = hashMap;
                        Objects.requireNonNull(c24074t);
                        for (Map.Entry entry : map.entrySet()) {
                            c24074t.f66740i.mo5551j(((Integer) entry.getValue()).intValue(), C24035c.EnumC24036a.INVALID_PAYLOD, (String) entry.getKey());
                        }
                        return null;
                    }
                });
            }
        }
        final char c3 = c;
        this.f66737f.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.i
            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
            public final Object execute() {
                C24074t c24074t = C24074t.this;
                c24074t.f66734c.mo5578G(abstractC24158r, c24074t.f66738g.mo5549a() + c3);
                return null;
            }
        });
    }
}
