package com.google.protobuf;

import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.AbstractC1916u;
import com.google.protobuf.C1886h.AbstractC1887a;
import com.google.protobuf.C1895k;
import com.google.protobuf.C1900l;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;
import p287x6.AbstractC4890c;
import p287x6.EnumC4898c0;
import p287x6.EnumC4904d0;
/* renamed from: com.google.protobuf.h */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/h.class */
public final class C1886h<T extends AbstractC1887a<T>> {

    /* renamed from: d */
    public static final C1886h f7073d = new C1886h(true);

    /* renamed from: a */
    public final C1865c0<T, Object> f7074a = new C1863b0(16);

    /* renamed from: b */
    public boolean f7075b;

    /* renamed from: c */
    public boolean f7076c;

    /* renamed from: com.google.protobuf.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/h$a.class */
    public interface AbstractC1887a<T extends AbstractC1887a<T>> extends Comparable<T> {
        /* renamed from: A */
        EnumC4898c0 mo4279A();

        /* renamed from: C */
        AbstractC1916u.AbstractC1917a mo4278C(AbstractC1916u.AbstractC1917a abstractC1917a, AbstractC1916u abstractC1916u);

        /* renamed from: E */
        EnumC4904d0 mo4277E();

        /* renamed from: F */
        boolean mo4276F();

        /* renamed from: y */
        int mo4275y();

        /* renamed from: z */
        boolean mo4274z();
    }

    public C1886h() {
        int i = C1865c0.f7040g;
    }

    public C1886h(boolean z) {
        int i = C1865c0.f7040g;
        m4298l();
        m4298l();
    }

    /* renamed from: b */
    public static Object m4308b(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    /* renamed from: c */
    public static int m4307c(EnumC4898c0 enumC4898c0, int i, Object obj) {
        int m4429i0 = CodedOutputStream.m4429i0(i);
        int i2 = m4429i0;
        if (enumC4898c0 == EnumC4898c0.GROUP) {
            i2 = m4429i0 * 2;
        }
        return m4306d(enumC4898c0, obj) + i2;
    }

    /* renamed from: d */
    public static int m4306d(EnumC4898c0 enumC4898c0, Object obj) {
        switch (enumC4898c0.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                Logger logger = CodedOutputStream.f7029b;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                Logger logger2 = CodedOutputStream.f7029b;
                return 4;
            case 2:
                return CodedOutputStream.m4425m0(((Long) obj).longValue());
            case 3:
                return CodedOutputStream.m4425m0(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.m4441W(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                Logger logger3 = CodedOutputStream.f7029b;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                Logger logger4 = CodedOutputStream.f7029b;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                Logger logger5 = CodedOutputStream.f7029b;
                return 1;
            case 8:
                return obj instanceof AbstractC4890c ? CodedOutputStream.m4449O((AbstractC4890c) obj) : CodedOutputStream.m4430h0((String) obj);
            case 9:
                Logger logger6 = CodedOutputStream.f7029b;
                return ((AbstractC1916u) obj).mo4241b();
            case 10:
                if (obj instanceof C1900l) {
                    return CodedOutputStream.m4439Y((C1900l) obj);
                }
                Logger logger7 = CodedOutputStream.f7029b;
                return CodedOutputStream.m4438Z(((AbstractC1916u) obj).mo4241b());
            case 11:
                if (obj instanceof AbstractC4890c) {
                    return CodedOutputStream.m4449O((AbstractC4890c) obj);
                }
                Logger logger8 = CodedOutputStream.f7029b;
                return CodedOutputStream.m4438Z(((byte[]) obj).length);
            case 12:
                return CodedOutputStream.m4427k0(((Integer) obj).intValue());
            case 13:
                return obj instanceof C1895k.AbstractC1896a ? CodedOutputStream.m4441W(((C1895k.AbstractC1896a) obj).mo1622y()) : CodedOutputStream.m4441W(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger9 = CodedOutputStream.f7029b;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger10 = CodedOutputStream.f7029b;
                return 8;
            case 16:
                return CodedOutputStream.m4434d0(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.m4432f0(((Long) obj).longValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: e */
    public static int m4305e(AbstractC1887a<?> abstractC1887a, Object obj) {
        EnumC4898c0 mo4279A = abstractC1887a.mo4279A();
        int mo4275y = abstractC1887a.mo4275y();
        if (abstractC1887a.mo4274z()) {
            int i = 0;
            if (abstractC1887a.mo4276F()) {
                for (Object obj2 : (List) obj) {
                    i += m4306d(mo4279A, obj2);
                }
                return CodedOutputStream.m4429i0(mo4275y) + i + CodedOutputStream.m4427k0(i);
            }
            Iterator it2 = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it2.hasNext()) {
                    return i3;
                }
                i2 = i3 + m4307c(mo4279A, mo4275y, it2.next());
            }
        } else {
            return m4307c(mo4279A, mo4275y, obj);
        }
    }

    /* renamed from: j */
    public static <T extends AbstractC1887a<T>> boolean m4300j(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.mo4277E() == EnumC4904d0.MESSAGE) {
            if (key.mo4274z()) {
                for (AbstractC1916u abstractC1916u : (List) entry.getValue()) {
                    if (!abstractC1916u.isInitialized()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof AbstractC1916u) {
                return ((AbstractC1916u) value).isInitialized();
            } else if (value instanceof C1900l) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    /* renamed from: p */
    public static void m4294p(CodedOutputStream codedOutputStream, EnumC4898c0 enumC4898c0, int i, Object obj) throws IOException {
        if (enumC4898c0 == EnumC4898c0.GROUP) {
            codedOutputStream.mo4416G0(i, 3);
            ((AbstractC1916u) obj).mo4239f(codedOutputStream);
            codedOutputStream.mo4416G0(i, 4);
            return;
        }
        codedOutputStream.mo4416G0(i, enumC4898c0.f14987b);
        switch (enumC4898c0.ordinal()) {
            case 0:
                codedOutputStream.mo4401x0(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                return;
            case 1:
                codedOutputStream.mo4403v0(Float.floatToRawIntBits(((Float) obj).floatValue()));
                return;
            case 2:
                codedOutputStream.mo4412K0(((Long) obj).longValue());
                return;
            case 3:
                codedOutputStream.mo4412K0(((Long) obj).longValue());
                return;
            case 4:
                codedOutputStream.mo4399z0(((Integer) obj).intValue());
                return;
            case 5:
                codedOutputStream.mo4401x0(((Long) obj).longValue());
                return;
            case 6:
                codedOutputStream.mo4403v0(((Integer) obj).intValue());
                return;
            case 7:
                codedOutputStream.mo4409p0(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case 8:
                if (obj instanceof AbstractC4890c) {
                    codedOutputStream.mo4405t0((AbstractC4890c) obj);
                    return;
                } else {
                    codedOutputStream.mo4417F0((String) obj);
                    return;
                }
            case 9:
                ((AbstractC1916u) obj).mo4239f(codedOutputStream);
                return;
            case 10:
                codedOutputStream.mo4421B0((AbstractC1916u) obj);
                return;
            case 11:
                if (obj instanceof AbstractC4890c) {
                    codedOutputStream.mo4405t0((AbstractC4890c) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                codedOutputStream.mo4407r0(bArr, 0, bArr.length);
                return;
            case 12:
                codedOutputStream.mo4414I0(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof C1895k.AbstractC1896a) {
                    codedOutputStream.mo4399z0(((C1895k.AbstractC1896a) obj).mo1622y());
                    return;
                } else {
                    codedOutputStream.mo4399z0(((Integer) obj).intValue());
                    return;
                }
            case 14:
                codedOutputStream.mo4403v0(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.mo4401x0(((Long) obj).longValue());
                return;
            case 16:
                codedOutputStream.mo4414I0(CodedOutputStream.m4424n0(((Integer) obj).intValue()));
                return;
            case 17:
                codedOutputStream.mo4412K0(CodedOutputStream.m4423o0(((Long) obj).longValue()));
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public C1886h<T> clone() {
        C1886h<T> c1886h = new C1886h<>();
        for (int i = 0; i < this.f7074a.m4343d(); i++) {
            Map.Entry<T, Object> m4344c = this.f7074a.m4344c(i);
            c1886h.m4296n(m4344c.getKey(), m4344c.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f7074a.m4342e()) {
            c1886h.m4296n(entry.getKey(), entry.getValue());
        }
        c1886h.f7076c = this.f7076c;
        return c1886h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1886h) {
            return this.f7074a.equals(((C1886h) obj).f7074a);
        }
        return false;
    }

    /* renamed from: f */
    public Object m4304f(T t) {
        Object obj = this.f7074a.get(t);
        AbstractC1916u abstractC1916u = obj;
        if (obj instanceof C1900l) {
            abstractC1916u = ((C1900l) obj).m4263c();
        }
        return abstractC1916u;
    }

    /* renamed from: g */
    public final int m4303g(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.mo4277E() != EnumC4904d0.MESSAGE || key.mo4274z() || key.mo4276F()) {
            return m4305e(key, value);
        }
        if (value instanceof C1900l) {
            int mo4275y = entry.getKey().mo4275y();
            C1900l c1900l = (C1900l) value;
            int m4429i0 = CodedOutputStream.m4429i0(1);
            int m4428j0 = CodedOutputStream.m4428j0(2, mo4275y);
            return CodedOutputStream.m4439Y(c1900l) + CodedOutputStream.m4429i0(3) + m4428j0 + (m4429i0 * 2);
        }
        int mo4275y2 = entry.getKey().mo4275y();
        AbstractC1916u abstractC1916u = (AbstractC1916u) value;
        int m4429i02 = CodedOutputStream.m4429i0(1);
        int m4428j02 = CodedOutputStream.m4428j0(2, mo4275y2);
        return CodedOutputStream.m4438Z(abstractC1916u.mo4241b()) + CodedOutputStream.m4429i0(3) + m4428j02 + (m4429i02 * 2);
    }

    /* renamed from: h */
    public boolean m4302h() {
        return this.f7074a.isEmpty();
    }

    public int hashCode() {
        return this.f7074a.hashCode();
    }

    /* renamed from: i */
    public boolean m4301i() {
        for (int i = 0; i < this.f7074a.m4343d(); i++) {
            if (!m4300j(this.f7074a.m4344c(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f7074a.m4342e()) {
            if (!m4300j(entry)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: k */
    public Iterator<Map.Entry<T, Object>> m4299k() {
        return this.f7076c ? new C1900l.C1903c(this.f7074a.entrySet().iterator()) : this.f7074a.entrySet().iterator();
    }

    /* renamed from: l */
    public void m4298l() {
        if (this.f7075b) {
            return;
        }
        this.f7074a.mo4340g();
        this.f7075b = true;
    }

    /* renamed from: m */
    public final void m4297m(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        AbstractC1916u abstractC1916u = value;
        if (value instanceof C1900l) {
            abstractC1916u = ((C1900l) value).m4263c();
        }
        if (key.mo4274z()) {
            Object m4304f = m4304f(key);
            ArrayList arrayList = m4304f;
            if (m4304f == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) abstractC1916u) {
                ((List) arrayList).add(m4308b(obj));
            }
            this.f7074a.put(key, arrayList);
        } else if (key.mo4277E() != EnumC4904d0.MESSAGE) {
            this.f7074a.put(key, m4308b(abstractC1916u));
        } else {
            Object m4304f2 = m4304f(key);
            if (m4304f2 == null) {
                this.f7074a.put(key, m4308b(abstractC1916u));
                return;
            }
            this.f7074a.put(key, ((AbstractC1888i.AbstractC1889a) key.mo4278C(((AbstractC1916u) m4304f2).mo4240d(), (AbstractC1916u) abstractC1916u)).m4284l());
        }
    }

    /* renamed from: n */
    public void m4296n(T t, Object obj) {
        if (!t.mo4274z()) {
            m4295o(t.mo4279A(), obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                m4295o(t.mo4279A(), it2.next());
            }
            obj = arrayList;
        }
        if (obj instanceof C1900l) {
            this.f7076c = true;
        }
        this.f7074a.put(t, obj);
    }

    /* renamed from: o */
    public final void m4295o(EnumC4898c0 enumC4898c0, Object obj) {
        Charset charset = C1895k.f7092a;
        Objects.requireNonNull(obj);
        boolean z = false;
        switch (enumC4898c0.f14986a.ordinal()) {
            case 0:
                z = obj instanceof Integer;
                break;
            case 1:
                z = obj instanceof Long;
                break;
            case 2:
                z = obj instanceof Float;
                break;
            case 3:
                z = obj instanceof Double;
                break;
            case 4:
                z = obj instanceof Boolean;
                break;
            case 5:
                z = obj instanceof String;
                break;
            case 6:
                z = true;
                if (!(obj instanceof AbstractC4890c)) {
                    if (obj instanceof byte[]) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 7:
                z = true;
                if (!(obj instanceof Integer)) {
                    if (obj instanceof C1895k.AbstractC1896a) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
            case 8:
                z = true;
                if (!(obj instanceof AbstractC1916u)) {
                    if (obj instanceof C1900l) {
                        z = true;
                        break;
                    }
                    z = false;
                    break;
                }
                break;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }
}
