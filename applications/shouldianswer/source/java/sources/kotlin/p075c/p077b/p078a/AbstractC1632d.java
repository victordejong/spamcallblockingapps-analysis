package kotlin.p075c.p077b.p078a;

import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1642d;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.b.a.d */
/* loaded from: classes-dex2jar.jar:kotlin/c/b/a/d.class */
public abstract class AbstractC1632d extends AbstractC1629a {

    /* renamed from: a */
    private transient AbstractC1641c<Object> f4357a;

    /* renamed from: b */
    private final AbstractC1646f f4358b;

    public AbstractC1632d(AbstractC1641c<Object> abstractC1641c) {
        this(abstractC1641c, abstractC1641c != null ? abstractC1641c.mo2555a() : null);
    }

    public AbstractC1632d(AbstractC1641c<Object> abstractC1641c, AbstractC1646f abstractC1646f) {
        super(abstractC1641c);
        this.f4358b = abstractC1646f;
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public AbstractC1646f mo2555a() {
        AbstractC1646f abstractC1646f = this.f4358b;
        if (abstractC1646f == null) {
            C1694h.m3124a();
        }
        return abstractC1646f;
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
    /* renamed from: b */
    protected void mo3165b() {
        AbstractC1641c<?> abstractC1641c = this.f4357a;
        if (abstractC1641c != null && abstractC1641c != this) {
            AbstractC1646f.AbstractC1649b abstractC1649b = mo2555a().get(AbstractC1642d.f4366a);
            if (abstractC1649b == null) {
                C1694h.m3124a();
            }
            ((AbstractC1642d) abstractC1649b).mo2511b(abstractC1641c);
        }
        this.f4357a = C1631c.f4356a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002f, code lost:
        if (r4 != null) goto L9;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.p075c.AbstractC1641c<java.lang.Object> m3164f() {
        /*
            r3 = this;
            r0 = r3
            kotlin.c.c<java.lang.Object> r0 = r0.f4357a
            r4 = r0
            r0 = r4
            if (r0 == 0) goto Lc
            goto L3f
        Lc:
            r0 = r3
            kotlin.c.f r0 = r0.mo2555a()
            kotlin.c.d$b r1 = kotlin.p075c.AbstractC1642d.f4366a
            kotlin.c.f$c r1 = (kotlin.p075c.AbstractC1646f.AbstractC1651c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlin.c.d r0 = (kotlin.p075c.AbstractC1642d) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L35
            r0 = r4
            r1 = r3
            kotlin.c.c r1 = (kotlin.p075c.AbstractC1641c) r1
            kotlin.c.c r0 = r0.mo2514a(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L35
            goto L3a
        L35:
            r0 = r3
            kotlin.c.c r0 = (kotlin.p075c.AbstractC1641c) r0
            r4 = r0
        L3a:
            r0 = r3
            r1 = r4
            r0.f4357a = r1
        L3f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p075c.p077b.p078a.AbstractC1632d.m3164f():kotlin.c.c");
    }
}
