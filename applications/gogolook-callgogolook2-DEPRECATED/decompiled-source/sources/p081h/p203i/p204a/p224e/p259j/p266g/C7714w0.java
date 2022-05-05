package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7735z0;
/* renamed from: h.i.a.e.j.g.w0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/w0.class */
public final class C7714w0<FieldDescriptorType extends AbstractC7735z0<FieldDescriptorType>> {

    /* renamed from: d */
    public static final C7714w0 f18064d = new C7714w0(true);

    /* renamed from: b */
    public boolean f18066b;

    /* renamed from: c */
    public boolean f18067c = false;

    /* renamed from: a */
    public final C7578e3<FieldDescriptorType, Object> f18065a = C7578e3.m20197c(16);

    public C7714w0() {
    }

    public C7714w0(boolean z) {
        m19703h();
    }

    /* renamed from: a */
    public static int m19720a(EnumC7615i4 i4Var, int i, Object obj) {
        int e = AbstractC7639m0.m20032e(i);
        int i2 = e;
        if (i4Var == EnumC7615i4.GROUP) {
            C7602h1.m20133a((AbstractC7627k2) obj);
            i2 = e << 1;
        }
        return i2 + m19712b(i4Var, obj);
    }

    /* renamed from: a */
    public static Object m19715a(Object obj) {
        if (obj instanceof AbstractC7674q2) {
            return ((AbstractC7674q2) obj).m19823J();
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
        if ((r5 instanceof p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7612i1) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
        if ((r5 instanceof byte[]) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0056, code lost:
        if ((r5 instanceof p081h.p203i.p204a.p224e.p259j.p266g.C7659o1) == false) goto L_0x00ad;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m19719a(p081h.p203i.p204a.p224e.p259j.p266g.EnumC7615i4 r4, java.lang.Object r5) {
        /*
            r0 = r5
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7602h1.m20132a(r0)
            int[] r0 = p081h.p203i.p204a.p224e.p259j.p266g.C7721x0.f18075a
            r1 = r4
            h.i.a.e.j.g.n4 r1 = r1.m20097a()
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
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7627k2
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p266g.C7659o1
            if (r0 == 0) goto L_0x00ad
            goto L_0x006a
        L_0x005c:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7612i1
            if (r0 == 0) goto L_0x00ad
        L_0x006a:
            r0 = 1
            r7 = r0
            goto L_0x00ad
        L_0x006f:
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7539a0
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7714w0.m19719a(h.i.a.e.j.g.i4, java.lang.Object):void");
    }

    /* renamed from: b */
    public static int m19712b(EnumC7615i4 i4Var, Object obj) {
        switch (C7721x0.f18076b[i4Var.ordinal()]) {
            case 1:
                return AbstractC7639m0.m20055b(((Double) obj).doubleValue());
            case 2:
                return AbstractC7639m0.m20054b(((Float) obj).floatValue());
            case 3:
                return AbstractC7639m0.m20033d(((Long) obj).longValue());
            case 4:
                return AbstractC7639m0.m20030e(((Long) obj).longValue());
            case 5:
                return AbstractC7639m0.m20029f(((Integer) obj).intValue());
            case 6:
                return AbstractC7639m0.m20022g(((Long) obj).longValue());
            case 7:
                return AbstractC7639m0.m20017i(((Integer) obj).intValue());
            case 8:
                return AbstractC7639m0.m20044b(((Boolean) obj).booleanValue());
            case 9:
                return AbstractC7639m0.m20045b((AbstractC7627k2) obj);
            case 10:
                return obj instanceof C7659o1 ? AbstractC7639m0.m20061a((C7659o1) obj) : AbstractC7639m0.m20063a((AbstractC7627k2) obj);
            case 11:
                return obj instanceof AbstractC7539a0 ? AbstractC7639m0.m20064a((AbstractC7539a0) obj) : AbstractC7639m0.m20060a((String) obj);
            case 12:
                return obj instanceof AbstractC7539a0 ? AbstractC7639m0.m20064a((AbstractC7539a0) obj) : AbstractC7639m0.m20043b((byte[]) obj);
            case 13:
                return AbstractC7639m0.m20025g(((Integer) obj).intValue());
            case 14:
                return AbstractC7639m0.m20014j(((Integer) obj).intValue());
            case 15:
                return AbstractC7639m0.m20018h(((Long) obj).longValue());
            case 16:
                return AbstractC7639m0.m20021h(((Integer) obj).intValue());
            case 17:
                return AbstractC7639m0.m20026f(((Long) obj).longValue());
            case 18:
                return obj instanceof AbstractC7612i1 ? AbstractC7639m0.m20012k(((AbstractC7612i1) obj).mo20100C()) : AbstractC7639m0.m20012k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    public static int m19711b(AbstractC7735z0<?> z0Var, Object obj) {
        EnumC7615i4 T = z0Var.mo19636T();
        int C = z0Var.mo19640C();
        if (!z0Var.mo19637Q()) {
            return m19720a(T, C, obj);
        }
        int i = 0;
        int i2 = 0;
        List<Object> list = (List) obj;
        if (z0Var.mo19639G()) {
            for (Object obj2 : list) {
                i2 += m19712b(T, obj2);
            }
            return AbstractC7639m0.m20032e(C) + i2 + AbstractC7639m0.m20009m(i2);
        }
        for (Object obj3 : list) {
            i += m19720a(T, C, obj3);
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m19710b(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.mo19638P() != EnumC7655n4.MESSAGE) {
            return true;
        }
        boolean Q = key.mo19637Q();
        Object value = entry.getValue();
        if (Q) {
            for (AbstractC7627k2 k2Var : (List) value) {
                if (!k2Var.isInitialized()) {
                    return false;
                }
            }
            return true;
        } else if (value instanceof AbstractC7627k2) {
            return ((AbstractC7627k2) value).isInitialized();
        } else {
            if (value instanceof C7659o1) {
                return true;
            }
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    /* renamed from: c */
    public static int m19708c(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.mo19638P() != EnumC7655n4.MESSAGE || key.mo19637Q() || key.mo19639G()) {
            return m19711b((AbstractC7735z0<?>) key, value);
        }
        boolean z = value instanceof C7659o1;
        int C = entry.getKey().mo19640C();
        return z ? AbstractC7639m0.m20049b(C, (C7659o1) value) : AbstractC7639m0.m20034d(C, (AbstractC7627k2) value);
    }

    /* renamed from: i */
    public static <T extends AbstractC7735z0<T>> C7714w0<T> m19702i() {
        return f18064d;
    }

    /* renamed from: a */
    public final Object m19717a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f18065a.get(fielddescriptortype);
        if (!(obj instanceof C7659o1)) {
            return obj;
        }
        C7659o1.m19960c();
        throw null;
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m19721a() {
        return this.f18067c ? new C7680r1(this.f18065a.m20195d().iterator()) : this.f18065a.m20195d().iterator();
    }

    /* renamed from: a */
    public final void m19718a(C7714w0<FieldDescriptorType> w0Var) {
        for (int i = 0; i < w0Var.f18065a.m20201b(); i++) {
            m19714a((Map.Entry) w0Var.f18065a.m20206a(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : w0Var.f18065a.m20198c()) {
            m19714a((Map.Entry) entry);
        }
    }

    /* renamed from: a */
    public final void m19716a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.mo19637Q()) {
            m19719a(fielddescriptortype.mo19636T(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                m19719a(fielddescriptortype.mo19636T(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof C7659o1) {
            this.f18067c = true;
        }
        this.f18065a.m20202a((C7578e3<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* renamed from: a */
    public final void m19714a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof C7659o1) {
            C7659o1.m19960c();
            throw null;
        } else if (key.mo19637Q()) {
            Object a = m19717a((C7714w0<FieldDescriptorType>) key);
            Object obj = a;
            if (a == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                ((List) obj).add(m19715a(obj2));
            }
            this.f18065a.m20202a((C7578e3<FieldDescriptorType, Object>) key, (FieldDescriptorType) obj);
        } else if (key.mo19638P() == EnumC7655n4.MESSAGE) {
            Object a2 = m19717a((C7714w0<FieldDescriptorType>) key);
            if (a2 == null) {
                this.f18065a.m20202a((C7578e3<FieldDescriptorType, Object>) key, (FieldDescriptorType) m19715a(value));
            } else if (!(a2 instanceof AbstractC7674q2)) {
                this.f18065a.m20202a((C7578e3<FieldDescriptorType, Object>) key, (FieldDescriptorType) key.mo19635a(((AbstractC7627k2) a2).mo20087d(), (AbstractC7627k2) value).mo20073b());
            } else {
                key.mo19634a((AbstractC7674q2) a2, (AbstractC7674q2) value);
                throw null;
            }
        } else {
            this.f18065a.m20202a((C7578e3<FieldDescriptorType, Object>) key, (FieldDescriptorType) m19715a(value));
        }
    }

    /* renamed from: b */
    public final boolean m19713b() {
        return this.f18065a.isEmpty();
    }

    /* renamed from: c */
    public final boolean m19709c() {
        return this.f18066b;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        C7714w0 w0Var = new C7714w0();
        for (int i = 0; i < this.f18065a.m20201b(); i++) {
            Map.Entry<FieldDescriptorType, Object> a = this.f18065a.m20206a(i);
            w0Var.m19716a((C7714w0) a.getKey(), a.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f18065a.m20198c()) {
            w0Var.m19716a((C7714w0) entry.getKey(), entry.getValue());
        }
        w0Var.f18067c = this.f18067c;
        return w0Var;
    }

    /* renamed from: d */
    public final boolean m19707d() {
        for (int i = 0; i < this.f18065a.m20201b(); i++) {
            if (!m19710b(this.f18065a.m20206a(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f18065a.m20198c()) {
            if (!m19710b(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m19706e() {
        return this.f18067c ? new C7680r1(this.f18065a.entrySet().iterator()) : this.f18065a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7714w0)) {
            return false;
        }
        return this.f18065a.equals(((C7714w0) obj).f18065a);
    }

    /* renamed from: f */
    public final int m19705f() {
        int i = 0;
        for (int i2 = 0; i2 < this.f18065a.m20201b(); i2++) {
            Map.Entry<FieldDescriptorType, Object> a = this.f18065a.m20206a(i2);
            i += m19711b((AbstractC7735z0<?>) a.getKey(), a.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f18065a.m20198c()) {
            i += m19711b((AbstractC7735z0<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    /* renamed from: g */
    public final int m19704g() {
        int i = 0;
        for (int i2 = 0; i2 < this.f18065a.m20201b(); i2++) {
            i += m19708c(this.f18065a.m20206a(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f18065a.m20198c()) {
            i += m19708c(entry);
        }
        return i;
    }

    /* renamed from: h */
    public final void m19703h() {
        if (!this.f18066b) {
            this.f18065a.mo20161g();
            this.f18066b = true;
        }
    }

    public final int hashCode() {
        return this.f18065a.hashCode();
    }
}
