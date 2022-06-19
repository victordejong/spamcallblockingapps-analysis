package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23304h;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23918i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.q */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/q.class */
public class C23679q extends AbstractC23444c {

    /* renamed from: j */
    public static final Class<?>[] f65648j = new Class[0];

    /* renamed from: b */
    public final C23637b0 f65649b;

    /* renamed from: c */
    public final AbstractC23458k<?> f65650c;

    /* renamed from: d */
    public final AbstractC23426b f65651d;

    /* renamed from: e */
    public final C23638c f65652e;

    /* renamed from: f */
    public Class<?>[] f65653f;

    /* renamed from: g */
    public boolean f65654g;

    /* renamed from: h */
    public List<AbstractC23681s> f65655h;

    /* renamed from: i */
    public C23635a0 f65656i;

    public C23679q(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, C23638c c23638c, List<AbstractC23681s> list) {
        super(abstractC23698i);
        this.f65649b = null;
        this.f65650c = abstractC23458k;
        if (abstractC23458k == null) {
            this.f65651d = null;
        } else {
            this.f65651d = abstractC23458k.m6864e();
        }
        this.f65652e = c23638c;
        this.f65655h = list;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C23679q(p193e.p1545k.p1546a.p1556c.p1564g0.C23637b0 r5) {
        /*
            r4 = this;
            r0 = r5
            e.k.a.c.i r0 = r0.f65519d
            r6 = r0
            r0 = r5
            e.k.a.c.g0.c r0 = r0.f65520e
            r7 = r0
            r0 = r4
            r1 = r6
            r0.<init>(r1)
            r0 = r4
            r1 = r5
            r0.f65649b = r1
            r0 = r5
            e.k.a.c.c0.k<?> r0 = r0.f65516a
            r6 = r0
            r0 = r4
            r1 = r6
            r0.f65650c = r1
            r0 = r6
            if (r0 != 0) goto L2a
            r0 = r4
            r1 = 0
            r0.f65651d = r1
            goto L32
        L2a:
            r0 = r4
            r1 = r6
            e.k.a.c.b r1 = r1.m6864e()
            r0.f65651d = r1
        L32:
            r0 = r4
            r1 = r7
            r0.f65652e = r1
            r0 = r5
            e.k.a.c.b r0 = r0.f65522g
            r1 = r5
            e.k.a.c.g0.c r1 = r1.f65520e
            e.k.a.c.g0.a0 r0 = r0.mo6249y(r1)
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L56
            r0 = r5
            e.k.a.c.b r0 = r0.f65522g
            r1 = r5
            e.k.a.c.g0.c r1 = r1.f65520e
            r2 = r6
            e.k.a.c.g0.a0 r0 = r0.mo6247z(r1, r2)
            r7 = r0
        L56:
            r0 = r4
            r1 = r7
            r0.f65656i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1564g0.C23679q.<init>(e.k.a.c.g0.b0):void");
    }

    /* renamed from: i */
    public static C23679q m6351i(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, C23638c c23638c) {
        return new C23679q(abstractC23458k, abstractC23698i, c23638c, Collections.emptyList());
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23444c
    /* renamed from: a */
    public Class<?>[] mo6359a() {
        if (!this.f65654g) {
            this.f65654g = true;
            AbstractC23426b abstractC23426b = this.f65651d;
            Class<?>[] mo6291c0 = abstractC23426b == null ? null : abstractC23426b.mo6291c0(this.f65652e);
            Class<?>[] clsArr = mo6291c0;
            if (mo6291c0 == null) {
                clsArr = mo6291c0;
                if (!this.f65650c.m6859o(EnumC23942p.DEFAULT_VIEW_INCLUSION)) {
                    clsArr = f65648j;
                }
            }
            this.f65653f = clsArr;
        }
        return this.f65653f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (r5 != null) goto L7;
     */
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23444c
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1547a.AbstractC23311k.C23315d mo6358b(p193e.p1545k.p1546a.p1547a.AbstractC23311k.C23315d r4) {
        /*
            r3 = this;
            r0 = r3
            e.k.a.c.b r0 = r0.f65651d
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L19
            r0 = r4
            r1 = r3
            e.k.a.c.g0.c r1 = r1.f65652e
            e.k.a.a.k$d r0 = r0.mo6271n(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L19
            goto L1b
        L19:
            r0 = 0
            r5 = r0
        L1b:
            r0 = r3
            e.k.a.c.c0.k<?> r0 = r0.f65650c
            r1 = r3
            e.k.a.c.g0.c r1 = r1.f65652e
            java.lang.Class<?> r1 = r1.f65538b
            e.k.a.a.k$d r0 = r0.mo6856h(r1)
            r6 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L3f
            r0 = r5
            if (r0 != 0) goto L39
            r0 = r6
            r4 = r0
            goto L3f
        L39:
            r0 = r5
            r1 = r6
            e.k.a.a.k$d r0 = r0.m7282f(r1)
            r4 = r0
        L3f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1564g0.C23679q.mo6358b(e.k.a.a.k$d):e.k.a.a.k$d");
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23444c
    /* renamed from: c */
    public AbstractC23663i mo6357c() {
        C23637b0 c23637b0 = this.f65649b;
        AbstractC23663i abstractC23663i = null;
        if (c23637b0 != null) {
            if (!c23637b0.f65524i) {
                c23637b0.m6446h();
            }
            LinkedList<AbstractC23663i> linkedList = c23637b0.f65533r;
            if (linkedList != null) {
                if (linkedList.size() > 1) {
                    c23637b0.m6445i("Multiple 'as-value' properties defined (%s vs %s)", c23637b0.f65533r.get(0), c23637b0.f65533r.get(1));
                    throw null;
                }
                abstractC23663i = c23637b0.f65533r.get(0);
            }
        }
        return abstractC23663i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23444c
    /* renamed from: d */
    public C23664j mo6356d(String str, Class<?>[] clsArr) {
        Map<C23691y, C23664j> map = this.f65652e.m6443g().f65630a;
        return map == null ? null : map.get(new C23691y(str, clsArr));
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23444c
    /* renamed from: e */
    public AbstractC23331r.C23333b mo6355e(AbstractC23331r.C23333b c23333b) {
        AbstractC23331r.C23333b mo6313J;
        AbstractC23426b abstractC23426b = this.f65651d;
        if (abstractC23426b == null || (mo6313J = abstractC23426b.mo6313J(this.f65652e)) == null) {
            return c23333b;
        }
        return c23333b == null ? mo6313J : c23333b.m7270a(mo6313J);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23444c
    /* renamed from: f */
    public List<C23664j> mo6354f() {
        List<C23664j> m6440j = this.f65652e.m6440j();
        if (m6440j.isEmpty()) {
            return m6440j;
        }
        ArrayList arrayList = null;
        for (C23664j c23664j : m6440j) {
            if (m6349k(c23664j)) {
                ArrayList arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(c23664j);
                arrayList = arrayList2;
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    /* renamed from: g */
    public AbstractC23918i<Object, Object> m6353g(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof AbstractC23918i) {
            return (AbstractC23918i) obj;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException(C22128a.m8631d2(obj, C22128a.m8728C("AnnotationIntrospector returned Converter definition of type "), "; expected type Converter or Class<Converter> instead"));
        }
        Class cls = (Class) obj;
        if (cls == AbstractC23918i.AbstractC23919a.class || C23914g.m5745v(cls)) {
            return null;
        }
        if (!AbstractC23918i.class.isAssignableFrom(cls)) {
            throw new IllegalStateException(C22128a.m8639b2(cls, C22128a.m8728C("AnnotationIntrospector returned Class "), "; expected Class<Converter>"));
        }
        Objects.requireNonNull(this.f65650c.f65071b);
        return (AbstractC23918i) C23914g.m5758i(cls, this.f65650c.m6867b());
    }

    /* renamed from: h */
    public List<AbstractC23681s> m6352h() {
        if (this.f65655h == null) {
            C23637b0 c23637b0 = this.f65649b;
            if (!c23637b0.f65524i) {
                c23637b0.m6446h();
            }
            this.f65655h = new ArrayList(c23637b0.f65525j.values());
        }
        return this.f65655h;
    }

    /* renamed from: j */
    public boolean m6350j(C23951v c23951v) {
        AbstractC23681s abstractC23681s;
        Iterator<AbstractC23681s> it = m6352h().iterator();
        while (true) {
            if (!it.hasNext()) {
                abstractC23681s = null;
                break;
            }
            AbstractC23681s next = it.next();
            if (next.mo5695z(c23951v)) {
                abstractC23681s = next;
                break;
            }
        }
        return abstractC23681s != null;
    }

    /* renamed from: k */
    public boolean m6349k(C23664j c23664j) {
        if (!this.f65020a.f65728a.isAssignableFrom(c23664j.m6383t())) {
            return false;
        }
        AbstractC23304h.EnumC23305a mo6289e = this.f65651d.mo6289e(this.f65650c, c23664j);
        if (mo6289e != null && mo6289e != AbstractC23304h.EnumC23305a.DISABLED) {
            return true;
        }
        String name = c23664j.getName();
        if ("valueOf".equals(name) && c23664j.mo6368q() == 1) {
            return true;
        }
        if (!"fromString".equals(name) || c23664j.mo6368q() != 1) {
            return false;
        }
        Class<?> mo6366s = c23664j.mo6366s(0);
        return mo6366s == String.class || CharSequence.class.isAssignableFrom(mo6366s);
    }
}
