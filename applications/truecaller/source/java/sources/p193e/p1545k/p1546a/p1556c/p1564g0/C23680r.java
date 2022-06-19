package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23757l;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23459l;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23682t;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23686w;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23882l;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.r */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/r.class */
public class C23680r extends AbstractC23682t implements Serializable {

    /* renamed from: b */
    public static final C23679q f65658b;

    /* renamed from: c */
    public static final C23679q f65659c;

    /* renamed from: d */
    public static final C23679q f65660d;

    /* renamed from: e */
    public static final C23679q f65661e;

    /* renamed from: a */
    public static final Class<?> f65657a = AbstractC23757l.class;

    /* renamed from: f */
    public static final C23679q f65662f = C23679q.m6351i(null, C23882l.m5939U(Object.class), new C23638c(Object.class));

    static {
        C23882l m5939U = C23882l.m5939U(String.class);
        Class<?> cls = C23648d.f65577i;
        f65658b = C23679q.m6351i(null, m5939U, new C23638c(String.class));
        Class cls2 = Boolean.TYPE;
        f65659c = C23679q.m6351i(null, C23882l.m5939U(cls2), new C23638c(cls2));
        Class cls3 = Integer.TYPE;
        f65660d = C23679q.m6351i(null, C23882l.m5939U(cls3), new C23638c(cls3));
        Class cls4 = Long.TYPE;
        f65661e = C23679q.m6351i(null, C23882l.m5939U(cls4), new C23638c(cls4));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004a A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.p1564g0.C23679q m6348a(p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k<?> r8, p193e.p1545k.p1546a.p1556c.AbstractC23698i r9) {
        /*
            r7 = this;
            r0 = r9
            boolean r0 = r0.mo5931z()
            if (r0 == 0) goto L35
            r0 = r9
            boolean r0 = r0.mo5985w()
            if (r0 == 0) goto L11
            goto L35
        L11:
            r0 = r9
            java.lang.Class<?> r0 = r0.f65728a
            r10 = r0
            r0 = r10
            boolean r0 = p193e.p1545k.p1546a.p1556c.p1574n0.C23914g.m5743x(r0)
            if (r0 == 0) goto L35
            java.lang.Class<java.util.Collection> r0 = java.util.Collection.class
            r1 = r10
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 != 0) goto L2f
            java.lang.Class<java.util.Map> r0 = java.util.Map.class
            r1 = r10
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L35
        L2f:
            r0 = 1
            r11 = r0
            goto L38
        L35:
            r0 = 0
            r11 = r0
        L38:
            r0 = r11
            if (r0 == 0) goto L4a
            r0 = r8
            r1 = r9
            r2 = r7
            r3 = r8
            r4 = r9
            r5 = r8
            e.k.a.c.g0.c r2 = r2.m6346c(r3, r4, r5)
            e.k.a.c.g0.q r0 = p193e.p1545k.p1546a.p1556c.p1564g0.C23679q.m6351i(r0, r1, r2)
            return r0
        L4a:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1564g0.C23680r.m6348a(e.k.a.c.c0.k, e.k.a.c.i):e.k.a.c.g0.q");
    }

    /* renamed from: b */
    public C23679q m6347b(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i) {
        Class<?> cls = abstractC23698i.f65728a;
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return f65660d;
            }
            if (cls == Long.TYPE) {
                return f65661e;
            }
            if (cls != Boolean.TYPE) {
                return null;
            }
            return f65659c;
        } else if (!C23914g.m5743x(cls)) {
            if (!f65657a.isAssignableFrom(cls)) {
                return null;
            }
            Class<?> cls2 = C23648d.f65577i;
            return C23679q.m6351i(abstractC23458k, abstractC23698i, new C23638c(cls));
        } else if (cls == Object.class) {
            return f65662f;
        } else {
            if (cls == String.class) {
                return f65658b;
            }
            if (cls == Integer.class) {
                return f65660d;
            }
            if (cls == Long.class) {
                return f65661e;
            }
            if (cls != Boolean.class) {
                return null;
            }
            return f65659c;
        }
    }

    /* renamed from: c */
    public C23638c m6346c(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, AbstractC23682t.AbstractC23683a abstractC23683a) {
        C23638c c23638c;
        Class<?> cls = C23648d.f65577i;
        if (abstractC23698i.mo5985w()) {
            if (abstractC23458k == null || ((AbstractC23459l) abstractC23458k).mo6337a(abstractC23698i.f65728a) == null) {
                c23638c = new C23638c(abstractC23698i.f65728a);
                return c23638c;
            }
        }
        C23648d c23648d = new C23648d(abstractC23458k, abstractC23698i, abstractC23683a);
        ArrayList arrayList = new ArrayList(8);
        AbstractC23698i abstractC23698i2 = c23648d.f65583e;
        if (!(abstractC23698i2.f65728a == Object.class)) {
            if (abstractC23698i2.m6241D()) {
                C23648d.m6410d(c23648d.f65583e, arrayList, false);
            } else {
                C23648d.m6409e(c23648d.f65583e, arrayList, false);
            }
        }
        c23638c = new C23638c(c23648d.f65583e, c23648d.f65584f, arrayList, c23648d.f65585g, c23648d.m6407g(arrayList), c23648d.f65582d, c23648d.f65580b, c23648d.f65581c, c23648d.f65579a.f65071b.f65022a, c23648d.f65586h);
        return c23638c;
    }

    /* renamed from: d */
    public C23637b0 m6345d(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, AbstractC23682t.AbstractC23683a abstractC23683a, boolean z) {
        C23686w.C23689c c23689c;
        C23638c m6346c = m6346c(abstractC23458k, abstractC23698i, abstractC23683a);
        if (abstractC23698i.m6238H()) {
            Objects.requireNonNull((C23686w.C23688b) abstractC23458k.f65071b.f65026e);
            c23689c = new C23686w.C23689c(abstractC23458k, m6346c);
        } else {
            Objects.requireNonNull((C23686w.C23688b) abstractC23458k.f65071b.f65026e);
            c23689c = new C23686w(abstractC23458k, m6346c, "set", "get", "is", null);
        }
        return new C23637b0(abstractC23458k, z, abstractC23698i, m6346c, c23689c);
    }
}
