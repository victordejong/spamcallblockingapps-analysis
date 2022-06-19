package kotlin.p075c;

import java.io.Serializable;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.b */
/* loaded from: classes-dex2jar.jar:kotlin/c/b.class */
public final class C1627b implements Serializable, AbstractC1646f {

    /* renamed from: a */
    private final AbstractC1646f f4352a;

    /* renamed from: b */
    private final AbstractC1646f.AbstractC1649b f4353b;

    /* renamed from: kotlin.c.b$a */
    /* loaded from: classes-dex2jar.jar:kotlin/c/b$a.class */
    static final class C1628a extends AbstractC1695i implements AbstractC1674m<String, AbstractC1646f.AbstractC1649b, String> {

        /* renamed from: a */
        public static final C1628a f4354a = new C1628a();

        C1628a() {
            super(2);
        }

        /* renamed from: a */
        public final String mo44a(String str, AbstractC1646f.AbstractC1649b abstractC1649b) {
            String str2;
            C1694h.m3117b(str, "acc");
            C1694h.m3117b(abstractC1649b, "element");
            if (str.length() == 0) {
                str2 = abstractC1649b.toString();
            } else {
                str2 = str + ", " + abstractC1649b;
            }
            return str2;
        }
    }

    public C1627b(AbstractC1646f abstractC1646f, AbstractC1646f.AbstractC1649b abstractC1649b) {
        C1694h.m3117b(abstractC1646f, "left");
        C1694h.m3117b(abstractC1649b, "element");
        this.f4352a = abstractC1646f;
        this.f4353b = abstractC1649b;
    }

    /* renamed from: a */
    private final int m3173a() {
        C1627b c1627b = this;
        int i = 2;
        while (true) {
            Object obj = c1627b.f4352a;
            Object obj2 = obj;
            if (!(obj instanceof C1627b)) {
                obj2 = null;
            }
            c1627b = (C1627b) obj2;
            if (c1627b != null) {
                i++;
            } else {
                return i;
            }
        }
    }

    /* renamed from: a */
    private final boolean m3172a(C1627b c1627b) {
        while (m3171a(c1627b.f4353b)) {
            AbstractC1646f abstractC1646f = c1627b.f4352a;
            if (!(abstractC1646f instanceof C1627b)) {
                if (abstractC1646f == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                }
                return m3171a((AbstractC1646f.AbstractC1649b) abstractC1646f);
            }
            c1627b = (C1627b) abstractC1646f;
        }
        return false;
    }

    /* renamed from: a */
    private final boolean m3171a(AbstractC1646f.AbstractC1649b abstractC1649b) {
        return C1694h.m3123a(get(abstractC1649b.getKey()), abstractC1649b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
        if (r0.m3172a(r3) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r3
            kotlin.c.b r0 = (kotlin.p075c.C1627b) r0
            r1 = r4
            if (r0 == r1) goto L2f
            r0 = r4
            boolean r0 = r0 instanceof kotlin.p075c.C1627b
            if (r0 == 0) goto L2a
            r0 = r4
            kotlin.c.b r0 = (kotlin.p075c.C1627b) r0
            r4 = r0
            r0 = r4
            int r0 = r0.m3173a()
            r1 = r3
            int r1 = r1.m3173a()
            if (r0 != r1) goto L2a
            r0 = r4
            r1 = r3
            boolean r0 = r0.m3172a(r1)
            if (r0 == 0) goto L2a
            goto L2f
        L2a:
            r0 = 0
            r5 = r0
            goto L31
        L2f:
            r0 = 1
            r5 = r0
        L31:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p075c.C1627b.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.p075c.AbstractC1646f
    public <R> R fold(R r, AbstractC1674m<? super R, ? super AbstractC1646f.AbstractC1649b, ? extends R> abstractC1674m) {
        C1694h.m3117b(abstractC1674m, "operation");
        return abstractC1674m.mo44a((Object) this.f4352a.fold(r, abstractC1674m), this.f4353b);
    }

    @Override // kotlin.p075c.AbstractC1646f
    public <E extends AbstractC1646f.AbstractC1649b> E get(AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        AbstractC1646f abstractC1646f = this;
        while (true) {
            C1627b c1627b = (C1627b) abstractC1646f;
            E e = (E) c1627b.f4353b.get(abstractC1651c);
            if (e != null) {
                return e;
            }
            AbstractC1646f abstractC1646f2 = c1627b.f4352a;
            if (!(abstractC1646f2 instanceof C1627b)) {
                return (E) abstractC1646f2.get(abstractC1651c);
            }
            abstractC1646f = abstractC1646f2;
        }
    }

    public int hashCode() {
        return this.f4352a.hashCode() + this.f4353b.hashCode();
    }

    @Override // kotlin.p075c.AbstractC1646f
    public AbstractC1646f minusKey(AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        if (this.f4353b.get(abstractC1651c) != null) {
            return this.f4352a;
        }
        AbstractC1646f minusKey = this.f4352a.minusKey(abstractC1651c);
        return minusKey == this.f4352a ? this : minusKey == C1652g.f4369a ? this.f4353b : new C1627b(minusKey, this.f4353b);
    }

    @Override // kotlin.p075c.AbstractC1646f
    public AbstractC1646f plus(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        return AbstractC1646f.C1647a.m3145a(this, abstractC1646f);
    }

    public String toString() {
        return "[" + ((String) fold("", C1628a.f4354a)) + "]";
    }
}
