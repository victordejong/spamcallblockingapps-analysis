package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.File;
import java.util.concurrent.Callable;
import p081h.p203i.p204a.p224e.p259j.p271l.C8017b2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8094f2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8434x1;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9141g;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10010a;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10016d;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10021f0;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10023g0;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10028k;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10036s;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10038u;
import p081h.p203i.p325c.p373y.p374a.p375b.p376a.EnumC10040w;
import p081h.p203i.p325c.p373y.p374a.p377c.C10047c;
import p081h.p203i.p325c.p373y.p378b.C10055a;
/* renamed from: h.i.a.e.j.l.k7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k7.class */
public class C8208k7 implements AbstractC10010a<C10055a> {

    /* renamed from: a */
    public final C8386u6 f19015a;

    /* renamed from: b */
    public final C8404v6 f19016b;

    public C8208k7(C8386u6 u6Var, C8404v6 v6Var) {
        this.f19015a = u6Var;
        this.f19016b = v6Var;
    }

    @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10010a
    /* renamed from: a */
    public /* synthetic */ AbstractC9143h mo13634a(C10055a aVar) {
        final C10055a aVar2 = aVar;
        AbstractC9143h a = C8299p6.m18209c().m18214a(new Callable(this, aVar2) { // from class: h.i.a.e.j.l.m7

            /* renamed from: a */
            public final C8208k7 f19086a;

            /* renamed from: b */
            public final C10055a f19087b;

            {
                this.f19086a = this;
                this.f19087b = aVar2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f19086a.m18382b(this.f19087b);
            }
        });
        a.mo16025a(new AbstractC9132c(this) { // from class: h.i.a.e.j.l.o7

            /* renamed from: a */
            public final C8208k7 f19106a;

            {
                this.f19106a = this;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
            /* renamed from: a */
            public final void mo3743a(AbstractC9143h hVar) {
                this.f19106a.m18384a(hVar);
            }
        });
        return a;
    }

    @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10010a
    /* renamed from: a */
    public /* synthetic */ AbstractC9143h mo13633a(C10055a aVar, C10047c cVar) {
        C10055a aVar2 = aVar;
        C8386u6 u6Var = this.f19015a;
        final C10021f0 a = C10021f0.m13606a(u6Var, aVar2, new C10036s(u6Var), new C10023g0(this.f19015a, aVar2));
        a.m13602a(cVar);
        return C9148k.m15999a((Object) null).mo16015a(C8299p6.m18211b(), new AbstractC9141g(a) { // from class: h.i.a.e.j.l.l7

            /* renamed from: a */
            public final C10021f0 f19061a;

            {
                this.f19061a = a;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9141g
            /* renamed from: a */
            public final AbstractC9143h mo13756a(Object obj) {
                return this.f19061a.m13585h();
            }
        });
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final /* synthetic */ File m18383a(C10055a aVar) throws Exception {
        C8166i7 i7Var = new C8166i7();
        C8386u6 u6Var = this.f19015a;
        C10028k.m13570a(u6Var, aVar, i7Var, new C8185j7(u6Var.m18152a()), EnumC10040w.CUSTOM).m13571a();
        C8386u6 u6Var2 = this.f19015a;
        String a = new C10016d(u6Var2, aVar, i7Var, EnumC10040w.CUSTOM, new C10038u(u6Var2)).m13622a();
        if (a == null) {
            return null;
        }
        return new File(a);
    }

    /* renamed from: a */
    public final /* synthetic */ void m18384a(AbstractC9143h hVar) {
        boolean booleanValue = ((Boolean) hVar.mo16014b()).booleanValue();
        C8404v6 v6Var = this.f19016b;
        C8434x1.C8435a m = C8434x1.m18091m();
        C8017b2.C8018a k = C8017b2.m18684k();
        k.m18682a(C8094f2.EnumC8095a.CUSTOM);
        k.m18681a(booleanValue);
        m.m18089a((C8017b2) k.m18346h());
        v6Var.m18124a(m, EnumC8297p4.REMOTE_MODEL_IS_DOWNLOADED);
    }

    @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10010a
    /* renamed from: b */
    public /* synthetic */ AbstractC9143h mo13632b(C10055a aVar) {
        final C10055a aVar2 = aVar;
        return C8299p6.m18209c().m18214a(new Callable(this, aVar2) { // from class: h.i.a.e.j.l.n7

            /* renamed from: a */
            public final C8208k7 f19095a;

            /* renamed from: b */
            public final C10055a f19096b;

            {
                this.f19095a = this;
                this.f19096b = aVar2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f19095a.m18383a(this.f19096b);
            }
        });
    }

    /* renamed from: b  reason: avoid collision after fix types in other method */
    public final /* synthetic */ Boolean m18382b(C10055a aVar) throws Exception {
        C8386u6 u6Var = this.f19015a;
        return Boolean.valueOf(C10021f0.m13606a(u6Var, aVar, new C10036s(u6Var), new C10023g0(this.f19015a, aVar)).m13586g());
    }
}
