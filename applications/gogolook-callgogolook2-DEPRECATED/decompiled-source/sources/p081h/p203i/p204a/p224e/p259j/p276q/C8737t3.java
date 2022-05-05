package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8755v3;
/* renamed from: h.i.a.e.j.q.t3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/t3.class */
public final class C8737t3<FieldDescriptorType extends AbstractC8755v3<FieldDescriptorType>> {

    /* renamed from: d */
    public static final C8737t3 f19987d = new C8737t3(true);

    /* renamed from: b */
    public boolean f19989b;

    /* renamed from: c */
    public boolean f19990c = false;

    /* renamed from: a */
    public final C8575c6<FieldDescriptorType, Object> f19988a = C8575c6.m17743c(16);

    public C8737t3() {
    }

    public C8737t3(boolean z) {
        m17151f();
    }

    /* renamed from: a */
    public static int m17166a(EnumC8612g7 g7Var, int i, Object obj) {
        int e = AbstractC8632i3.m17512e(i);
        int i2 = e;
        if (g7Var == EnumC8612g7.GROUP) {
            C8591e4.m17689a((AbstractC8648j5) obj);
            i2 = e << 1;
        }
        return i2 + m17158b(g7Var, obj);
    }

    /* renamed from: a */
    public static Object m17161a(Object obj) {
        if (obj instanceof AbstractC8703p5) {
            return ((AbstractC8703p5) obj).m17244H();
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
        if ((r5 instanceof p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8600f4) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
        if ((r5 instanceof byte[]) == false) goto L_0x00ad;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0056, code lost:
        if ((r5 instanceof p081h.p203i.p204a.p224e.p259j.p276q.C8674m4) == false) goto L_0x00ad;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m17165a(p081h.p203i.p204a.p224e.p259j.p276q.EnumC8612g7 r4, java.lang.Object r5) {
        /*
            r0 = r5
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p259j.p276q.C8591e4.m17688a(r0)
            int[] r0 = p081h.p203i.p204a.p224e.p259j.p276q.C8746u3.f20006a
            r1 = r4
            h.i.a.e.j.q.l7 r1 = r1.m17622a()
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
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8648j5
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p276q.C8674m4
            if (r0 == 0) goto L_0x00ad
            goto L_0x006a
        L_0x005c:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto L_0x006a
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8600f4
            if (r0 == 0) goto L_0x00ad
        L_0x006a:
            r0 = 1
            r7 = r0
            goto L_0x00ad
        L_0x006f:
            r0 = r5
            boolean r0 = r0 instanceof p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8736t2
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8737t3.m17165a(h.i.a.e.j.q.g7, java.lang.Object):void");
    }

    /* renamed from: b */
    public static int m17158b(EnumC8612g7 g7Var, Object obj) {
        switch (C8746u3.f20007b[g7Var.ordinal()]) {
            case 1:
                return AbstractC8632i3.m17535b(((Double) obj).doubleValue());
            case 2:
                return AbstractC8632i3.m17534b(((Float) obj).floatValue());
            case 3:
                return AbstractC8632i3.m17513d(((Long) obj).longValue());
            case 4:
                return AbstractC8632i3.m17510e(((Long) obj).longValue());
            case 5:
                return AbstractC8632i3.m17509f(((Integer) obj).intValue());
            case 6:
                return AbstractC8632i3.m17502g(((Long) obj).longValue());
            case 7:
                return AbstractC8632i3.m17497i(((Integer) obj).intValue());
            case 8:
                return AbstractC8632i3.m17524b(((Boolean) obj).booleanValue());
            case 9:
                return AbstractC8632i3.m17525b((AbstractC8648j5) obj);
            case 10:
                return obj instanceof C8674m4 ? AbstractC8632i3.m17542a((C8674m4) obj) : AbstractC8632i3.m17544a((AbstractC8648j5) obj);
            case 11:
                return obj instanceof AbstractC8736t2 ? AbstractC8632i3.m17541a((AbstractC8736t2) obj) : AbstractC8632i3.m17540a((String) obj);
            case 12:
                return obj instanceof AbstractC8736t2 ? AbstractC8632i3.m17541a((AbstractC8736t2) obj) : AbstractC8632i3.m17523b((byte[]) obj);
            case 13:
                return AbstractC8632i3.m17505g(((Integer) obj).intValue());
            case 14:
                return AbstractC8632i3.m17494j(((Integer) obj).intValue());
            case 15:
                return AbstractC8632i3.m17498h(((Long) obj).longValue());
            case 16:
                return AbstractC8632i3.m17501h(((Integer) obj).intValue());
            case 17:
                return AbstractC8632i3.m17506f(((Long) obj).longValue());
            case 18:
                return obj instanceof AbstractC8600f4 ? AbstractC8632i3.m17492k(((AbstractC8600f4) obj).mo17553C()) : AbstractC8632i3.m17492k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: b */
    public static int m17157b(AbstractC8755v3<?> v3Var, Object obj) {
        EnumC8612g7 W = v3Var.m17102W();
        int C = v3Var.m17105C();
        if (!v3Var.m17103V()) {
            return m17166a(W, C, obj);
        }
        int i = 0;
        int i2 = 0;
        if (v3Var.m17106B()) {
            for (Object obj2 : (List) obj) {
                i2 += m17158b(W, obj2);
            }
            return AbstractC8632i3.m17512e(C) + i2 + AbstractC8632i3.m17489m(i2);
        }
        for (Object obj3 : (List) obj) {
            i += m17166a(W, C, obj3);
        }
        return i;
    }

    /* renamed from: b */
    public static boolean m17156b(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.m17104U() != EnumC8668l7.MESSAGE) {
            return true;
        }
        if (key.m17103V()) {
            for (AbstractC8648j5 j5Var : (List) entry.getValue()) {
                if (!j5Var.isInitialized()) {
                    return false;
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (value instanceof AbstractC8648j5) {
            return ((AbstractC8648j5) value).isInitialized();
        }
        if (value instanceof C8674m4) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: c */
    public static int m17154c(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.m17104U() != EnumC8668l7.MESSAGE || key.m17103V() || key.m17106B()) ? m17157b((AbstractC8755v3<?>) key, value) : value instanceof C8674m4 ? AbstractC8632i3.m17529b(entry.getKey().m17105C(), (C8674m4) value) : AbstractC8632i3.m17515d(entry.getKey().m17105C(), (AbstractC8648j5) value);
    }

    /* renamed from: i */
    public static <T extends AbstractC8755v3<T>> C8737t3<T> m17148i() {
        return f19987d;
    }

    /* renamed from: a */
    public final Object m17163a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f19988a.get(fielddescriptortype);
        if (!(obj instanceof C8674m4)) {
            return obj;
        }
        C8674m4.m17391c();
        throw null;
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m17167a() {
        return this.f19990c ? new C8702p4(this.f19988a.m17739e().iterator()) : this.f19988a.m17739e().iterator();
    }

    /* renamed from: a */
    public final void m17164a(C8737t3<FieldDescriptorType> t3Var) {
        for (int i = 0; i < t3Var.f19988a.m17744c(); i++) {
            m17160a((Map.Entry) t3Var.f19988a.m17751a(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : t3Var.f19988a.m17741d()) {
            m17160a((Map.Entry) entry);
        }
    }

    /* renamed from: a */
    public final void m17162a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.m17103V()) {
            m17165a(fielddescriptortype.m17102W(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                m17165a(fielddescriptortype.m17102W(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof C8674m4) {
            this.f19990c = true;
        }
        this.f19988a.m17747a((C8575c6<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* renamed from: a */
    public final void m17160a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof C8674m4) {
            C8674m4.m17391c();
            throw null;
        } else if (key.m17103V()) {
            Object a = m17163a((C8737t3<FieldDescriptorType>) key);
            Object obj = a;
            if (a == null) {
                obj = new ArrayList();
            }
            for (Object obj2 : (List) value) {
                ((List) obj).add(m17161a(obj2));
            }
            this.f19988a.m17747a((C8575c6<FieldDescriptorType, Object>) key, (FieldDescriptorType) obj);
        } else if (key.m17104U() == EnumC8668l7.MESSAGE) {
            Object a2 = m17163a((C8737t3<FieldDescriptorType>) key);
            if (a2 == null) {
                this.f19988a.m17747a((C8575c6<FieldDescriptorType, Object>) key, (FieldDescriptorType) m17161a(value));
            } else {
                this.f19988a.m17747a((C8575c6<FieldDescriptorType, Object>) key, (FieldDescriptorType) (a2 instanceof AbstractC8703p5 ? key.m17100a((AbstractC8703p5) a2, (AbstractC8703p5) value) : key.m17101a(((AbstractC8648j5) a2).mo17432e(), (AbstractC8648j5) value).mo17429D()));
            }
        } else {
            this.f19988a.m17747a((C8575c6<FieldDescriptorType, Object>) key, (FieldDescriptorType) m17161a(value));
        }
    }

    /* renamed from: b */
    public final boolean m17159b() {
        return this.f19988a.isEmpty();
    }

    /* renamed from: c */
    public final boolean m17155c() {
        return this.f19989b;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        C8737t3 t3Var = new C8737t3();
        for (int i = 0; i < this.f19988a.m17744c(); i++) {
            Map.Entry<FieldDescriptorType, Object> a = this.f19988a.m17751a(i);
            t3Var.m17162a((C8737t3) a.getKey(), a.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f19988a.m17741d()) {
            t3Var.m17162a((C8737t3) entry.getKey(), entry.getValue());
        }
        t3Var.f19990c = this.f19990c;
        return t3Var;
    }

    /* renamed from: d */
    public final boolean m17153d() {
        for (int i = 0; i < this.f19988a.m17744c(); i++) {
            if (!m17156b(this.f19988a.m17751a(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f19988a.m17741d()) {
            if (!m17156b(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> m17152e() {
        return this.f19990c ? new C8702p4(this.f19988a.entrySet().iterator()) : this.f19988a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8737t3)) {
            return false;
        }
        return this.f19988a.equals(((C8737t3) obj).f19988a);
    }

    /* renamed from: f */
    public final void m17151f() {
        if (!this.f19989b) {
            this.f19988a.mo17699b();
            this.f19989b = true;
        }
    }

    /* renamed from: g */
    public final int m17150g() {
        int i = 0;
        for (int i2 = 0; i2 < this.f19988a.m17744c(); i2++) {
            Map.Entry<FieldDescriptorType, Object> a = this.f19988a.m17751a(i2);
            i += m17157b((AbstractC8755v3<?>) a.getKey(), a.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f19988a.m17741d()) {
            i += m17157b((AbstractC8755v3<?>) entry.getKey(), entry.getValue());
        }
        return i;
    }

    /* renamed from: h */
    public final int m17149h() {
        int i = 0;
        for (int i2 = 0; i2 < this.f19988a.m17744c(); i2++) {
            i += m17154c(this.f19988a.m17751a(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.f19988a.m17741d()) {
            i += m17154c(entry);
        }
        return i;
    }

    public final int hashCode() {
        return this.f19988a.hashCode();
    }
}
