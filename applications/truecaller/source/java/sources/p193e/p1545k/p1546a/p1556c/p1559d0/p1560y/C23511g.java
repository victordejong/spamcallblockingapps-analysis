package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23620f;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23893a0;
/* renamed from: e.k.a.c.d0.y.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/g.class */
public class C23511g {

    /* renamed from: a */
    public final AbstractC23698i f65244a;

    /* renamed from: b */
    public final C23513b[] f65245b;

    /* renamed from: c */
    public final Map<String, Object> f65246c;

    /* renamed from: d */
    public final String[] f65247d;

    /* renamed from: e */
    public final C23893a0[] f65248e;

    /* renamed from: e.k.a.c.d0.y.g$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/g$a.class */
    public static class C23512a {

        /* renamed from: a */
        public final AbstractC23698i f65249a;

        /* renamed from: b */
        public final List<C23513b> f65250b = new ArrayList();

        /* renamed from: c */
        public final Map<String, Object> f65251c = new HashMap();

        public C23512a(AbstractC23698i abstractC23698i) {
            this.f65249a = abstractC23698i;
        }

        /* renamed from: a */
        public final void m6699a(String str, Integer num) {
            Object obj = this.f65251c.get(str);
            if (obj == null) {
                this.f65251c.put(str, num);
            } else if (obj instanceof List) {
                ((List) obj).add(num);
            } else {
                LinkedList linkedList = new LinkedList();
                linkedList.add(obj);
                linkedList.add(num);
                this.f65251c.put(str, linkedList);
            }
        }
    }

    /* renamed from: e.k.a.c.d0.y.g$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/g$b.class */
    public static final class C23513b {

        /* renamed from: a */
        public final AbstractC23488u f65252a;

        /* renamed from: b */
        public final AbstractC23709e f65253b;

        /* renamed from: c */
        public final String f65254c;

        /* renamed from: d */
        public AbstractC23488u f65255d;

        public C23513b(AbstractC23488u abstractC23488u, AbstractC23709e abstractC23709e) {
            this.f65252a = abstractC23488u;
            this.f65253b = abstractC23709e;
            this.f65254c = abstractC23709e.mo6179h();
        }

        /* renamed from: a */
        public String m6698a() {
            Class<?> mo6180g = this.f65253b.mo6180g();
            if (mo6180g == null) {
                return null;
            }
            return this.f65253b.mo6178i().mo6167e(null, mo6180g);
        }
    }

    public C23511g(C23511g c23511g) {
        this.f65244a = c23511g.f65244a;
        C23513b[] c23513bArr = c23511g.f65245b;
        this.f65245b = c23513bArr;
        this.f65246c = c23511g.f65246c;
        int length = c23513bArr.length;
        this.f65247d = new String[length];
        this.f65248e = new C23893a0[length];
    }

    public C23511g(AbstractC23698i abstractC23698i, C23513b[] c23513bArr, Map<String, Object> map, String[] strArr, C23893a0[] c23893a0Arr) {
        this.f65244a = abstractC23698i;
        this.f65245b = c23513bArr;
        this.f65246c = map;
        this.f65247d = null;
        this.f65248e = null;
    }

    /* renamed from: a */
    public final void m6705a(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj, int i, String str) throws IOException {
        if (str == null) {
            abstractC23632g.m6480Z(this.f65244a, "Internal error in external Type Id handling: `null` type id passed", new Object[0]);
            throw null;
        }
        AbstractC23376j m5834y2 = this.f65248e[i].m5834y2(abstractC23376j);
        if (m5834y2.mo5811i2() == EnumC23381m.VALUE_NULL) {
            this.f65245b[i].f65252a.mo6680z(obj, null);
            return;
        }
        C23893a0 c23893a0 = new C23893a0(abstractC23376j, abstractC23632g);
        c23893a0.mo5884F1();
        c23893a0.mo5868T1(str);
        c23893a0.m5890A2(m5834y2);
        c23893a0.mo5848p0();
        AbstractC23376j m5834y22 = c23893a0.m5834y2(abstractC23376j);
        m5834y22.mo5811i2();
        this.f65245b[i].f65252a.mo6682i(m5834y22, abstractC23632g, obj);
    }

    /* renamed from: b */
    public final boolean m6704b(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, String str, Object obj, String str2, int i) throws IOException {
        if (!str.equals(this.f65245b[i].f65254c)) {
            return false;
        }
        boolean z = false;
        if (obj != null) {
            z = false;
            if (this.f65248e[i] != null) {
                z = true;
            }
        }
        if (!z) {
            this.f65247d[i] = str2;
            return true;
        }
        m6705a(abstractC23376j, abstractC23632g, obj, i, str2);
        this.f65248e[i] = null;
        return true;
    }

    /* renamed from: c */
    public Object m6703c(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, C23500b0 c23500b0, C23535y c23535y) throws IOException {
        String str;
        int length = this.f65245b.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            String str2 = this.f65247d[i];
            C23513b c23513b = this.f65245b[i];
            boolean z = true;
            Object obj = null;
            if (str2 == null) {
                C23893a0 c23893a0 = this.f65248e[i];
                if (c23893a0 != null && c23893a0.f66110k.m5788k(0) != EnumC23381m.VALUE_NULL) {
                    if (!c23513b.f65253b.mo6177k()) {
                        abstractC23632g.m6477c0(this.f65244a, c23513b.f65252a.f65171c.f66304a, "Missing external type id property '%s'", c23513b.f65254c);
                        throw null;
                    }
                    str = c23513b.m6698a();
                }
            } else {
                str = str2;
                if (this.f65248e[i] == null) {
                    AbstractC23488u abstractC23488u = c23513b.f65252a;
                    if (abstractC23488u.m6331a() || abstractC23632g.m6488R(EnumC23694h.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY)) {
                        AbstractC23698i abstractC23698i = this.f65244a;
                        String str3 = abstractC23488u.f65171c.f66304a;
                        abstractC23632g.m6477c0(abstractC23698i, str3, "Missing property '%s' for external type id '%s'", str3, this.f65245b[i].f65254c);
                        throw null;
                    }
                    str = str2;
                }
            }
            C23893a0[] c23893a0Arr = this.f65248e;
            if (c23893a0Arr[i] != null) {
                AbstractC23376j m5834y2 = c23893a0Arr[i].m5834y2(abstractC23376j);
                if (m5834y2.mo5811i2() != EnumC23381m.VALUE_NULL) {
                    C23893a0 c23893a02 = new C23893a0(abstractC23376j, abstractC23632g);
                    c23893a02.mo5884F1();
                    c23893a02.mo5868T1(str);
                    c23893a02.m5890A2(m5834y2);
                    c23893a02.mo5848p0();
                    AbstractC23376j m5834y22 = c23893a02.m5834y2(abstractC23376j);
                    m5834y22.mo5811i2();
                    obj = this.f65245b[i].f65252a.m6762h(m5834y22, abstractC23632g);
                }
                objArr[i] = obj;
            }
            AbstractC23488u abstractC23488u2 = c23513b.f65252a;
            if (abstractC23488u2.mo6687m() >= 0) {
                c23500b0.m6733b(abstractC23488u2, objArr[i]);
                AbstractC23488u abstractC23488u3 = c23513b.f65255d;
                if (abstractC23488u3 != null && abstractC23488u3.mo6687m() >= 0) {
                    if (abstractC23488u3.f65172d.f65728a != String.class) {
                        z = false;
                    }
                    String str4 = str;
                    if (!z) {
                        C23893a0 c23893a03 = new C23893a0(abstractC23376j, abstractC23632g);
                        c23893a03.mo5868T1(str);
                        str4 = abstractC23488u3.mo6751r().mo6232d(c23893a03.m5831z2(), abstractC23632g);
                    }
                    c23500b0.m6733b(abstractC23488u3, str4);
                }
            }
        }
        Object m6679a = c23535y.m6679a(abstractC23632g, c23500b0);
        for (int i2 = 0; i2 < length; i2++) {
            AbstractC23488u abstractC23488u4 = this.f65245b[i2].f65252a;
            if (abstractC23488u4.mo6687m() < 0) {
                abstractC23488u4.mo6680z(m6679a, objArr[i2]);
            }
        }
        return m6679a;
    }

    /* renamed from: d */
    public Object m6702d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        int length = this.f65245b.length;
        for (int i = 0; i < length; i++) {
            String str = this.f65247d[i];
            C23513b c23513b = this.f65245b[i];
            if (str == null) {
                C23893a0 c23893a0 = this.f65248e[i];
                if (c23893a0 != null) {
                    if (c23893a0.f66110k.m5788k(0).f64711h) {
                        AbstractC23376j m5834y2 = c23893a0.m5834y2(abstractC23376j);
                        m5834y2.mo5811i2();
                        AbstractC23488u abstractC23488u = c23513b.f65252a;
                        Object m6217a = AbstractC23709e.m6217a(m5834y2, abstractC23632g, abstractC23488u.f65172d);
                        if (m6217a != null) {
                            abstractC23488u.mo6680z(obj, m6217a);
                        }
                    }
                    if (!c23513b.f65253b.mo6177k()) {
                        abstractC23632g.m6477c0(this.f65244a, c23513b.f65252a.f65171c.f66304a, "Missing external type id property '%s' (and no 'defaultImpl' specified)", c23513b.f65254c);
                        throw null;
                    }
                    str = c23513b.m6698a();
                    if (str == null) {
                        abstractC23632g.m6477c0(this.f65244a, c23513b.f65252a.f65171c.f66304a, "Invalid default type id for property '%s': `null` returned by TypeIdResolver", c23513b.f65254c);
                        throw null;
                    }
                } else {
                    continue;
                }
            } else if (this.f65248e[i] == null) {
                AbstractC23488u abstractC23488u2 = c23513b.f65252a;
                if (!abstractC23488u2.m6331a() && !abstractC23632g.m6488R(EnumC23694h.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY)) {
                    return obj;
                }
                Class<?> cls = obj.getClass();
                String str2 = abstractC23488u2.f65171c.f66304a;
                C23620f c23620f = new C23620f(abstractC23632g.f65505g, abstractC23632g.m6529b("Missing property '%s' for external type id '%s'", str2, c23513b.f65254c), cls);
                if (str2 != null) {
                    c23620f.m6160g(cls, str2);
                }
                throw c23620f;
            }
            m6705a(abstractC23376j, abstractC23632g, obj, i, str);
        }
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00fa, code lost:
        if (r7.f65248e[r0] != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x012b, code lost:
        if (r7.f65247d[r0] != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x012e, code lost:
        r15 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m6701e(p193e.p1545k.p1546a.p1548b.AbstractC23376j r8, p193e.p1545k.p1546a.p1556c.AbstractC23632g r9, java.lang.String r10, java.lang.Object r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23511g.m6701e(e.k.a.b.j, e.k.a.c.g, java.lang.String, java.lang.Object):boolean");
    }

    /* renamed from: f */
    public boolean m6700f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, String str, Object obj) throws IOException {
        Object obj2 = this.f65246c.get(str);
        boolean z = false;
        if (obj2 == null) {
            return false;
        }
        String mo5817U0 = abstractC23376j.mo5817U0();
        if (!(obj2 instanceof List)) {
            return m6704b(abstractC23376j, abstractC23632g, str, obj, mo5817U0, ((Integer) obj2).intValue());
        }
        for (Integer num : (List) obj2) {
            if (m6704b(abstractC23376j, abstractC23632g, str, obj, mo5817U0, num.intValue())) {
                z = true;
            }
        }
        return z;
    }
}
