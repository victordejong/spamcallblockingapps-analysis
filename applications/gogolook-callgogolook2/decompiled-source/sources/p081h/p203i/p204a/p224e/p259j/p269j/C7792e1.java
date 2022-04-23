package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7809g1;
/* renamed from: h.i.a.e.j.j.e1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/e1.class */
public final class C7792e1<FieldDescriptorType extends AbstractC7809g1<FieldDescriptorType>> {

    /* renamed from: d */
    public static final C7792e1 f18223d = new C7792e1(true);

    /* renamed from: b */
    public boolean f18225b;

    /* renamed from: c */
    public boolean f18226c = false;

    /* renamed from: a */
    public final C7876n3<FieldDescriptorType, Object> f18224a = C7876n3.m19134c(16);

    public C7792e1() {
    }

    public C7792e1(boolean z) {
        m19452f();
    }

    /* renamed from: a */
    public static int m19464a(EnumC7915s4 s4Var, int i, Object obj) {
        int m = AbstractC7918t0.m18931m(i);
        int i2 = m;
        if (s4Var == EnumC7915s4.GROUP) {
            C7891p1.m19106a((AbstractC7925t2) obj);
            i2 = m << 1;
        }
        return i2 + m19458b(s4Var, obj);
    }

    /* renamed from: a */
    public static Object m19462a(Object obj) {
        if (obj instanceof AbstractC7968z2) {
            return ((AbstractC7968z2) obj).m18737I();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0067, code lost:
        if ((r5 instanceof p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7898q1) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
        if ((r5 instanceof byte[]) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0056, code lost:
        if ((r5 instanceof p081h.p203i.p204a.p224e.p259j.p269j.C7945w1) == false) goto L_0x00ad;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m19463a(p081h.p203i.p204a.p224e.p259j.p269j.EnumC7915s4 r4, java.lang.Object r5) {
        /*
            r0 = r5
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p259j.p269j.C7891p1.m19105a(r0)
            int[] r0 = p081h.p203i.p204a.p224e.p259j.p269j.C7801f1.f18247a
            r1 = r4
            h.i.a.e.j.j.x4 r1 = r1.m18994a()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            switch(r0) {
                case 1: goto L_0x00a8;
                case 2: goto L_0x00a0;
                case 3: goto L_0x0098;
                case 4: goto L_0x0090;
                case 5: goto L_0x0088;
                case 6: goto L_0x0080;
                case 7: goto L_0x006f;
                case 8: goto L_0x005c;
                case 9: goto L_0x004b;
                default: goto L_0x0048;
            }
        L_0x0048:
            goto L_0x00ad
        L_0x004b:
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7925t2
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p269j.C7945w1
            if (r0 == 0) goto L_0x00ad
            goto L_0x006a
        L_0x005c:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7898q1
            if (r0 == 0) goto L_0x00ad
        L_0x006a:
            r0 = 1
            r7 = r0
            goto L_0x00ad
        L_0x006f:
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7791e0
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x00ad
            goto L_0x006a
        L_0x0080:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.String
            r7 = r0
            goto L_0x00ad
        L_0x0088:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Boolean
            r7 = r0
            goto L_0x00ad
        L_0x0090:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Double
            r7 = r0
            goto L_0x00ad
        L_0x0098:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Float
            r7 = r0
            goto L_0x00ad
        L_0x00a0:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Long
            r7 = r0
            goto L_0x00ad
        L_0x00a8:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Integer
            r7 = r0
        L_0x00ad:
            r0 = r7
            if (r0 == 0) goto L_0x00b2
            return
        L_0x00b2:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Wrong object type used with protocol message reflection."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7792e1.m19463a(h.i.a.e.j.j.s4, java.lang.Object):void");
    }

    /* renamed from: b */
    public static int m19459b(AbstractC7809g1<?> g1Var, Object obj) {
        EnumC7915s4 b0 = g1Var.m19386b0();
        int F = g1Var.m19391F();
        if (!g1Var.m19390Z()) {
            return m19464a(b0, F, obj);
        }
        int i = 0;
        int i2 = 0;
        if (g1Var.m19387a0()) {
            for (Object obj2 : (List) obj) {
                i2 += m19458b(b0, obj2);
            }
            return AbstractC7918t0.m18931m(F) + i2 + AbstractC7918t0.m18932l(i2);
        }
        for (Object obj3 : (List) obj) {
            i += m19464a(b0, F, obj3);
        }
        return i;
    }

    /* renamed from: b */
    public static int m19458b(EnumC7915s4 s4Var, Object obj) {
        switch (C7801f1.f18248b[s4Var.ordinal()]) {
            case 1:
                return AbstractC7918t0.m18977b(((Double) obj).doubleValue());
            case 2:
                return AbstractC7918t0.m18976b(((Float) obj).floatValue());
            case 3:
                return AbstractC7918t0.m18955d(((Long) obj).longValue());
            case 4:
                return AbstractC7918t0.m18952e(((Long) obj).longValue());
            case 5:
                return AbstractC7918t0.m18954e(((Integer) obj).intValue());
            case 6:
                return AbstractC7918t0.m18944g(((Long) obj).longValue());
            case 7:
                return AbstractC7918t0.m18943h(((Integer) obj).intValue());
            case 8:
                return AbstractC7918t0.m18966b(((Boolean) obj).booleanValue());
            case 9:
                return AbstractC7918t0.m18967b((AbstractC7925t2) obj);
            case 10:
                return obj instanceof C7945w1 ? AbstractC7918t0.m18986a((C7945w1) obj) : AbstractC7918t0.m18984a((AbstractC7925t2) obj);
            case 11:
                return obj instanceof AbstractC7791e0 ? AbstractC7918t0.m18985a((AbstractC7791e0) obj) : AbstractC7918t0.m18982a((String) obj);
            case 12:
                return obj instanceof AbstractC7791e0 ? AbstractC7918t0.m18985a((AbstractC7791e0) obj) : AbstractC7918t0.m18965b((byte[]) obj);
            case 13:
                return AbstractC7918t0.m18951f(((Integer) obj).intValue());
            case 14:
                return AbstractC7918t0.m18939i(((Integer) obj).intValue());
            case 15:
                return AbstractC7918t0.m18940h(((Long) obj).longValue());
            case 16:
                return AbstractC7918t0.m18947g(((Integer) obj).intValue());
            case 17:
                return AbstractC7918t0.m18948f(((Long) obj).longValue());
            case 18:
                return obj instanceof AbstractC7898q1 ? AbstractC7918t0.m18936j(((AbstractC7898q1) obj).mo19088F()) : AbstractC7918t0.m18936j(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    public static boolean m19457b(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.m19385e0() != EnumC7955x4.MESSAGE) {
            return true;
        }
        if (key.m19390Z()) {
            for (AbstractC7925t2 t2Var : (List) entry.getValue()) {
                if (!t2Var.isInitialized()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof AbstractC7925t2) {
            return ((AbstractC7925t2) value).isInitialized();
        }
        if (value instanceof C7945w1) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: c */
    public static int m19455c(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.m19385e0() != EnumC7955x4.MESSAGE || key.m19390Z() || key.m19387a0()) ? m19459b((AbstractC7809g1<?>) key, value) : value instanceof C7945w1 ? AbstractC7918t0.m18972b(entry.getKey().m19391F(), (C7945w1) value) : AbstractC7918t0.m18956d(entry.getKey().m19391F(), (AbstractC7925t2) value);
    }

    /* renamed from: i */
    public static <T extends AbstractC7809g1<T>> C7792e1<T> m19449i() {
        return f18223d;
    }

    /* renamed from: a */
    public final Object m19466a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f18224a.get(fielddescriptortype);
        if (!(obj instanceof C7945w1)) {
            return obj;
        }
        C7945w1.m18846c();
        throw null;
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m19468a() {
        return this.f18226c ? new C7967z1(this.f18224a.m19130e().iterator()) : this.f18224a.m19130e().iterator();
    }

    /* renamed from: a */
    public final void m19467a(C7792e1<FieldDescriptorType> e1Var) {
        for (int i = 0; i < e1Var.f18224a.m19135c(); i++) {
            m19461a((Map.Entry) e1Var.f18224a.m19142a(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : e1Var.f18224a.m19132d()) {
            m19461a((Map.Entry) entry);
        }
    }

    /* renamed from: a */
    public final void m19465a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.m19390Z()) {
            m19463a(fielddescriptortype.m19386b0(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                m19463a(fielddescriptortype.m19386b0(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof C7945w1) {
            this.f18226c = true;
        }
        this.f18224a.m19138a((C7876n3<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* renamed from: a */
    public final void m19461a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof C7945w1) {
            C7945w1.m18846c();
            throw null;
        } else if (key.m19390Z()) {
            Object a = m19466a((C7792e1<FieldDescriptorType>) key);
            Object obj = a;
            if (a == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                ((List) obj).add(m19462a(obj2));
            }
            this.f18224a.m19138a((C7876n3<FieldDescriptorType, Object>) key, (FieldDescriptorType) obj);
        } else if (key.m19385e0() == EnumC7955x4.MESSAGE) {
            Object a2 = m19466a((C7792e1<FieldDescriptorType>) key);
            if (a2 == null) {
                this.f18224a.m19138a((C7876n3<FieldDescriptorType, Object>) key, (FieldDescriptorType) m19462a(value));
            } else {
                this.f18224a.m19138a((C7876n3<FieldDescriptorType, Object>) key, (FieldDescriptorType) (a2 instanceof AbstractC7968z2 ? key.m19388a((AbstractC7968z2) a2, (AbstractC7968z2) value) : key.m19389a(((AbstractC7925t2) a2).mo18881f(), (AbstractC7925t2) value).mo18864N()));
            }
        } else {
            this.f18224a.m19138a((C7876n3<FieldDescriptorType, Object>) key, (FieldDescriptorType) m19462a(value));
        }
    }

    /* renamed from: b */
    public final boolean m19460b() {
        return this.f18224a.isEmpty();
    }

    /* renamed from: c */
    public final boolean m19456c() {
        return this.f18225b;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        C7792e1 e1Var = new C7792e1();
        for (int i = 0; i < this.f18224a.m19135c(); i++) {
            Map.Entry<FieldDescriptorType, Object> a = this.f18224a.m19142a(i);
            e1Var.m19465a((C7792e1) a.getKey(), a.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f18224a.m19132d()) {
            e1Var.m19465a((C7792e1) entry.getKey(), entry.getValue());
        }
        e1Var.f18226c = this.f18226c;
        return e1Var;
    }

    /* renamed from: d */
    public final boolean m19454d() {
        for (int i = 0; i < this.f18224a.m19135c(); i++) {
            if (!m19457b(this.f18224a.m19142a(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f18224a.m19132d()) {
            if (!m19457b(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m19453e() {
        return this.f18226c ? new C7967z1(this.f18224a.entrySet().iterator()) : this.f18224a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7792e1)) {
            return false;
        }
        return this.f18224a.equals(((C7792e1) obj).f18224a);
    }

    /* renamed from: f */
    public final void m19452f() {
        if (!this.f18225b) {
            this.f18224a.mo19113b();
            this.f18225b = true;
        }
    }

    /* renamed from: g */
    public final int m19451g() {
        int i = 0;
        for (int i2 = 0; i2 < this.f18224a.m19135c(); i2++) {
            Map.Entry<FieldDescriptorType, Object> a = this.f18224a.m19142a(i2);
            i += m19459b((AbstractC7809g1<?>) a.getKey(), a.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f18224a.m19132d()) {
            i += m19459b((AbstractC7809g1<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    /* renamed from: h */
    public final int m19450h() {
        int i = 0;
        for (int i2 = 0; i2 < this.f18224a.m19135c(); i2++) {
            i += m19455c(this.f18224a.m19142a(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f18224a.m19132d()) {
            i += m19455c(entry);
        }
        return i;
    }

    public final int hashCode() {
        return this.f18224a.hashCode();
    }
}
