package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Objects;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1547a.EnumC23310j0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23366b;
import p193e.p1545k.p1546a.p1548b.C23375i;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23529t;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23530u;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23898c;
import p193e.p1545k.p1546a.p1556c.p1574n0.EnumC23892a;
/* renamed from: e.k.a.c.d0.z.x */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x.class */
public abstract class AbstractC23603x<T> extends AbstractC23541b0<T> implements AbstractC23474i {

    /* renamed from: g */
    public static final /* synthetic */ int f65463g = 0;

    /* renamed from: d */
    public final Boolean f65464d;

    /* renamed from: e */
    public transient Object f65465e;

    /* renamed from: f */
    public final AbstractC23484r f65466f;

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.x$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x$a.class */
    public static final class C23604a extends AbstractC23603x<boolean[]> {
        public C23604a() {
            super(boolean[].class);
        }

        public C23604a(C23604a c23604a, AbstractC23484r abstractC23484r, Boolean bool) {
            super(c23604a, abstractC23484r, bool);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [boolean[]] */
        /* JADX WARN: Type inference failed for: r0v26 */
        /* JADX WARN: Type inference failed for: r0v32, types: [boolean[]] */
        /* JADX WARN: Type inference failed for: r1v4 */
        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            boolean[] zArr;
            boolean z;
            if (!abstractC23376j.mo7146V1()) {
                zArr = m6539o0(abstractC23376j, abstractC23632g);
            } else {
                C23898c m6454z = abstractC23632g.m6454z();
                if (m6454z.f66135a == null) {
                    m6454z.f66135a = new C23898c.C23900b();
                }
                C23898c.C23900b c23900b = m6454z.f66135a;
                T m5716d = c23900b.m5716d();
                int i = 0;
                while (true) {
                    try {
                        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                        if (mo5811i2 == EnumC23381m.END_ARRAY) {
                            break;
                        }
                        if (mo5811i2 == EnumC23381m.VALUE_TRUE) {
                            z = true;
                        } else {
                            if (mo5811i2 != EnumC23381m.VALUE_FALSE) {
                                if (mo5811i2 == EnumC23381m.VALUE_NULL) {
                                    AbstractC23484r abstractC23484r = this.f65466f;
                                    if (abstractC23484r != null) {
                                        abstractC23484r.mo6233c(abstractC23632g);
                                    } else {
                                        m6648d0(abstractC23632g);
                                    }
                                } else {
                                    z = m6662O(abstractC23376j, abstractC23632g);
                                }
                            }
                            z = false;
                        }
                        T t = m5716d;
                        int i2 = i;
                        if (i >= m5716d.length) {
                            t = c23900b.m5718b(m5716d, i);
                            i2 = 0;
                        }
                        t[i2] = z;
                        i = i2 + 1;
                        m5716d = t;
                    } catch (Exception e) {
                        throw C23733k.m6158i(e, m5716d, c23900b.f66198d + i);
                    }
                }
                zArr = c23900b.m5717c(m5716d, i);
            }
            return zArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: m0 */
        public boolean[] mo6538m0(boolean[] zArr, boolean[] zArr2) {
            boolean[] zArr3 = zArr;
            boolean[] zArr4 = zArr2;
            int length = zArr3.length;
            int length2 = zArr4.length;
            boolean[] copyOf = Arrays.copyOf(zArr3, length + length2);
            System.arraycopy(zArr4, 0, copyOf, length, length2);
            return copyOf;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: n0 */
        public boolean[] mo6537n0() {
            return new boolean[0];
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: p0 */
        public boolean[] mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            return new boolean[]{m6662O(abstractC23376j, abstractC23632g)};
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: q0 */
        public AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool) {
            return new C23604a(this, abstractC23484r, bool);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.x$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x$b.class */
    public static final class C23605b extends AbstractC23603x<byte[]> {
        public C23605b() {
            super(byte[].class);
        }

        public C23605b(C23605b c23605b, AbstractC23484r abstractC23484r, Boolean bool) {
            super(c23605b, abstractC23484r, bool);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v27, types: [byte[]] */
        /* JADX WARN: Type inference failed for: r0v43 */
        /* JADX WARN: Type inference failed for: r0v49, types: [byte[]] */
        /* JADX WARN: Type inference failed for: r1v10 */
        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            byte[] mo5826I;
            byte mo7205J;
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            if (mo7142l == EnumC23381m.VALUE_STRING) {
                try {
                    mo5826I = abstractC23376j.mo5826I(abstractC23632g.m6505A());
                } catch (C23375i e) {
                    String m7198b = e.m7198b();
                    if (m7198b.contains("base64")) {
                        abstractC23632g.m6492N(byte[].class, abstractC23376j.mo5817U0(), m7198b, new Object[0]);
                        throw null;
                    }
                }
                return mo5826I;
            }
            if (mo7142l == EnumC23381m.VALUE_EMBEDDED_OBJECT) {
                Object mo5803p0 = abstractC23376j.mo5803p0();
                if (mo5803p0 == null) {
                    mo5826I = null;
                } else if (mo5803p0 instanceof byte[]) {
                    mo5826I = (byte[]) mo5803p0;
                }
                return mo5826I;
            }
            if (!abstractC23376j.mo7146V1()) {
                mo5826I = m6539o0(abstractC23376j, abstractC23632g);
            } else {
                C23898c m6454z = abstractC23632g.m6454z();
                if (m6454z.f66136b == null) {
                    m6454z.f66136b = new C23898c.C23901c();
                }
                C23898c.C23901c c23901c = m6454z.f66136b;
                T m5716d = c23901c.m5716d();
                int i = 0;
                while (true) {
                    try {
                        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                        if (mo5811i2 == EnumC23381m.END_ARRAY) {
                            break;
                        }
                        if (mo5811i2 == EnumC23381m.VALUE_NUMBER_INT) {
                            mo7205J = abstractC23376j.mo7205J();
                        } else if (mo5811i2 == EnumC23381m.VALUE_NULL) {
                            AbstractC23484r abstractC23484r = this.f65466f;
                            if (abstractC23484r != null) {
                                abstractC23484r.mo6233c(abstractC23632g);
                            } else {
                                m6648d0(abstractC23632g);
                                mo7205J = 0;
                            }
                        } else {
                            mo7205J = m6661P(abstractC23376j, abstractC23632g);
                        }
                        T t = m5716d;
                        int i2 = i;
                        if (i >= m5716d.length) {
                            t = c23901c.m5718b(m5716d, i);
                            i2 = 0;
                        }
                        t[i2] = mo7205J;
                        i = i2 + 1;
                        m5716d = t;
                    } catch (Exception e2) {
                        throw C23733k.m6158i(e2, m5716d, c23901c.f66198d + i);
                    }
                }
                mo5826I = c23901c.m5717c(m5716d, i);
            }
            return mo5826I;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: m0 */
        public byte[] mo6538m0(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            int length = bArr3.length;
            int length2 = bArr4.length;
            byte[] copyOf = Arrays.copyOf(bArr3, length + length2);
            System.arraycopy(bArr4, 0, copyOf, length, length2);
            return copyOf;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: n0 */
        public byte[] mo6537n0() {
            return new byte[0];
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: o */
        public EnumC23876f mo6221o() {
            return EnumC23876f.Binary;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: p0 */
        public byte[] mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            byte[] bArr;
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            if (mo7142l == EnumC23381m.VALUE_NUMBER_INT) {
                bArr = new byte[]{abstractC23376j.mo7205J()};
            } else if (mo7142l != EnumC23381m.VALUE_NULL) {
                abstractC23632g.m6496J(this.f65309a.getComponentType(), abstractC23376j);
                throw null;
            } else {
                AbstractC23484r abstractC23484r = this.f65466f;
                if (abstractC23484r != null) {
                    abstractC23484r.mo6233c(abstractC23632g);
                    Object obj = this.f65465e;
                    Object obj2 = obj;
                    if (obj == null) {
                        obj2 = new byte[0];
                        this.f65465e = obj2;
                    }
                    bArr = (byte[]) obj2;
                } else {
                    m6648d0(abstractC23632g);
                    bArr = null;
                }
            }
            return bArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: q0 */
        public AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool) {
            return new C23605b(this, abstractC23484r, bool);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.x$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x$c.class */
    public static final class C23606c extends AbstractC23603x<char[]> {
        public C23606c() {
            super(char[].class);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            char[] cArr;
            String mo5817U0;
            if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
                char[] mo5816W0 = abstractC23376j.mo5816W0();
                int mo5807l1 = abstractC23376j.mo5807l1();
                int mo5810j1 = abstractC23376j.mo5810j1();
                cArr = new char[mo5810j1];
                System.arraycopy(mo5816W0, mo5807l1, cArr, 0, mo5810j1);
            } else if (!abstractC23376j.mo7146V1()) {
                if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_EMBEDDED_OBJECT)) {
                    Object mo5803p0 = abstractC23376j.mo5803p0();
                    if (mo5803p0 == null) {
                        cArr = null;
                    } else if (mo5803p0 instanceof char[]) {
                        cArr = (char[]) mo5803p0;
                    } else if (mo5803p0 instanceof String) {
                        cArr = ((String) mo5803p0).toCharArray();
                    } else if (mo5803p0 instanceof byte[]) {
                        cArr = C23366b.f64606b.m7262g((byte[]) mo5803p0, false).toCharArray();
                    }
                }
                abstractC23632g.m6496J(this.f65309a, abstractC23376j);
                throw null;
            } else {
                StringBuilder sb = new StringBuilder(64);
                while (true) {
                    EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                    if (mo5811i2 == EnumC23381m.END_ARRAY) {
                        cArr = sb.toString().toCharArray();
                        break;
                    }
                    if (mo5811i2 == EnumC23381m.VALUE_STRING) {
                        mo5817U0 = abstractC23376j.mo5817U0();
                    } else if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                        abstractC23632g.m6496J(Character.TYPE, abstractC23376j);
                        throw null;
                    } else {
                        AbstractC23484r abstractC23484r = this.f65466f;
                        if (abstractC23484r != null) {
                            abstractC23484r.mo6233c(abstractC23632g);
                        } else {
                            m6648d0(abstractC23632g);
                            mo5817U0 = "��";
                        }
                    }
                    if (mo5817U0.length() != 1) {
                        abstractC23632g.m6479a0(this, "Cannot convert a JSON String of length %d into a char element of char array", Integer.valueOf(mo5817U0.length()));
                        throw null;
                    }
                    sb.append(mo5817U0.charAt(0));
                }
            }
            return cArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: m0 */
        public char[] mo6538m0(char[] cArr, char[] cArr2) {
            char[] cArr3 = cArr;
            char[] cArr4 = cArr2;
            int length = cArr3.length;
            int length2 = cArr4.length;
            char[] copyOf = Arrays.copyOf(cArr3, length + length2);
            System.arraycopy(cArr4, 0, copyOf, length, length2);
            return copyOf;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: n0 */
        public char[] mo6537n0() {
            return new char[0];
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: p0 */
        public char[] mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            abstractC23632g.m6496J(this.f65309a, abstractC23376j);
            throw null;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: q0 */
        public AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool) {
            return this;
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.x$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x$d.class */
    public static final class C23607d extends AbstractC23603x<double[]> {
        public C23607d() {
            super(double[].class);
        }

        public C23607d(C23607d c23607d, AbstractC23484r abstractC23484r, Boolean bool) {
            super(c23607d, abstractC23484r, bool);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [double[]] */
        /* JADX WARN: Type inference failed for: r0v27 */
        /* JADX WARN: Type inference failed for: r0v33, types: [double[]] */
        /* JADX WARN: Type inference failed for: r1v5 */
        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            double[] dArr;
            AbstractC23484r abstractC23484r;
            if (!abstractC23376j.mo7146V1()) {
                dArr = m6539o0(abstractC23376j, abstractC23632g);
            } else {
                C23898c m6454z = abstractC23632g.m6454z();
                if (m6454z.f66141g == null) {
                    m6454z.f66141g = new C23898c.C23902d();
                }
                C23898c.C23902d c23902d = m6454z.f66141g;
                T m5716d = c23902d.m5716d();
                int i = 0;
                while (true) {
                    try {
                        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                        if (mo5811i2 == EnumC23381m.END_ARRAY) {
                            break;
                        } else if (mo5811i2 != EnumC23381m.VALUE_NULL || (abstractC23484r = this.f65466f) == null) {
                            double m6660R = m6660R(abstractC23376j, abstractC23632g);
                            T t = m5716d;
                            int i2 = i;
                            if (i >= m5716d.length) {
                                t = c23902d.m5718b(m5716d, i);
                                i2 = 0;
                            }
                            t[i2] = m6660R;
                            i = i2 + 1;
                            m5716d = t;
                        } else {
                            abstractC23484r.mo6233c(abstractC23632g);
                        }
                    } catch (Exception e) {
                        throw C23733k.m6158i(e, m5716d, c23902d.f66198d + i);
                    }
                }
                dArr = c23902d.m5717c(m5716d, i);
            }
            return dArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: m0 */
        public double[] mo6538m0(double[] dArr, double[] dArr2) {
            double[] dArr3 = dArr;
            double[] dArr4 = dArr2;
            int length = dArr3.length;
            int length2 = dArr4.length;
            double[] copyOf = Arrays.copyOf(dArr3, length + length2);
            System.arraycopy(dArr4, 0, copyOf, length, length2);
            return copyOf;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: n0 */
        public double[] mo6537n0() {
            return new double[0];
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: p0 */
        public double[] mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            return new double[]{m6660R(abstractC23376j, abstractC23632g)};
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: q0 */
        public AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool) {
            return new C23607d(this, abstractC23484r, bool);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.x$e */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x$e.class */
    public static final class C23608e extends AbstractC23603x<float[]> {
        public C23608e() {
            super(float[].class);
        }

        public C23608e(C23608e c23608e, AbstractC23484r abstractC23484r, Boolean bool) {
            super(c23608e, abstractC23484r, bool);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [float[]] */
        /* JADX WARN: Type inference failed for: r0v27 */
        /* JADX WARN: Type inference failed for: r0v33, types: [float[]] */
        /* JADX WARN: Type inference failed for: r1v5 */
        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            float[] fArr;
            AbstractC23484r abstractC23484r;
            if (!abstractC23376j.mo7146V1()) {
                fArr = m6539o0(abstractC23376j, abstractC23632g);
            } else {
                C23898c m6454z = abstractC23632g.m6454z();
                if (m6454z.f66140f == null) {
                    m6454z.f66140f = new C23898c.C23903e();
                }
                C23898c.C23903e c23903e = m6454z.f66140f;
                T m5716d = c23903e.m5716d();
                int i = 0;
                while (true) {
                    try {
                        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                        if (mo5811i2 == EnumC23381m.END_ARRAY) {
                            break;
                        } else if (mo5811i2 != EnumC23381m.VALUE_NULL || (abstractC23484r = this.f65466f) == null) {
                            float m6659S = m6659S(abstractC23376j, abstractC23632g);
                            T t = m5716d;
                            int i2 = i;
                            if (i >= m5716d.length) {
                                t = c23903e.m5718b(m5716d, i);
                                i2 = 0;
                            }
                            t[i2] = m6659S;
                            i = i2 + 1;
                            m5716d = t;
                        } else {
                            abstractC23484r.mo6233c(abstractC23632g);
                        }
                    } catch (Exception e) {
                        throw C23733k.m6158i(e, m5716d, c23903e.f66198d + i);
                    }
                }
                fArr = c23903e.m5717c(m5716d, i);
            }
            return fArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: m0 */
        public float[] mo6538m0(float[] fArr, float[] fArr2) {
            float[] fArr3 = fArr;
            float[] fArr4 = fArr2;
            int length = fArr3.length;
            int length2 = fArr4.length;
            float[] copyOf = Arrays.copyOf(fArr3, length + length2);
            System.arraycopy(fArr4, 0, copyOf, length, length2);
            return copyOf;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: n0 */
        public float[] mo6537n0() {
            return new float[0];
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: p0 */
        public float[] mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            return new float[]{m6659S(abstractC23376j, abstractC23632g)};
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: q0 */
        public AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool) {
            return new C23608e(this, abstractC23484r, bool);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.x$f */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x$f.class */
    public static final class C23609f extends AbstractC23603x<int[]> {

        /* renamed from: h */
        public static final C23609f f65467h = new C23609f();

        public C23609f() {
            super(int[].class);
        }

        public C23609f(C23609f c23609f, AbstractC23484r abstractC23484r, Boolean bool) {
            super(c23609f, abstractC23484r, bool);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [int[]] */
        /* JADX WARN: Type inference failed for: r0v27 */
        /* JADX WARN: Type inference failed for: r0v33, types: [int[]] */
        /* JADX WARN: Type inference failed for: r1v4 */
        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            int[] iArr;
            int mo5800z0;
            if (!abstractC23376j.mo7146V1()) {
                iArr = m6539o0(abstractC23376j, abstractC23632g);
            } else {
                C23898c m6454z = abstractC23632g.m6454z();
                if (m6454z.f66138d == null) {
                    m6454z.f66138d = new C23898c.C23904f();
                }
                C23898c.C23904f c23904f = m6454z.f66138d;
                T m5716d = c23904f.m5716d();
                int i = 0;
                while (true) {
                    try {
                        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                        if (mo5811i2 == EnumC23381m.END_ARRAY) {
                            break;
                        }
                        if (mo5811i2 == EnumC23381m.VALUE_NUMBER_INT) {
                            mo5800z0 = abstractC23376j.mo5800z0();
                        } else if (mo5811i2 == EnumC23381m.VALUE_NULL) {
                            AbstractC23484r abstractC23484r = this.f65466f;
                            if (abstractC23484r != null) {
                                abstractC23484r.mo6233c(abstractC23632g);
                            } else {
                                m6648d0(abstractC23632g);
                                mo5800z0 = 0;
                            }
                        } else {
                            mo5800z0 = m6658T(abstractC23376j, abstractC23632g);
                        }
                        T t = m5716d;
                        int i2 = i;
                        if (i >= m5716d.length) {
                            t = c23904f.m5718b(m5716d, i);
                            i2 = 0;
                        }
                        t[i2] = mo5800z0;
                        i = i2 + 1;
                        m5716d = t;
                    } catch (Exception e) {
                        throw C23733k.m6158i(e, m5716d, c23904f.f66198d + i);
                    }
                }
                iArr = c23904f.m5717c(m5716d, i);
            }
            return iArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: m0 */
        public int[] mo6538m0(int[] iArr, int[] iArr2) {
            int[] iArr3 = iArr;
            int[] iArr4 = iArr2;
            int length = iArr3.length;
            int length2 = iArr4.length;
            int[] copyOf = Arrays.copyOf(iArr3, length + length2);
            System.arraycopy(iArr4, 0, copyOf, length, length2);
            return copyOf;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: n0 */
        public int[] mo6537n0() {
            return new int[0];
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: p0 */
        public int[] mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            return new int[]{m6658T(abstractC23376j, abstractC23632g)};
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: q0 */
        public AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool) {
            return new C23609f(this, abstractC23484r, bool);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.x$g */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x$g.class */
    public static final class C23610g extends AbstractC23603x<long[]> {

        /* renamed from: h */
        public static final C23610g f65468h = new C23610g();

        public C23610g() {
            super(long[].class);
        }

        public C23610g(C23610g c23610g, AbstractC23484r abstractC23484r, Boolean bool) {
            super(c23610g, abstractC23484r, bool);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [long[]] */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r0v27 */
        /* JADX WARN: Type inference failed for: r0v33, types: [long[]] */
        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v6 */
        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            long[] jArr;
            ?? mo5830B0;
            if (!abstractC23376j.mo7146V1()) {
                jArr = m6539o0(abstractC23376j, abstractC23632g);
            } else {
                C23898c m6454z = abstractC23632g.m6454z();
                if (m6454z.f66139e == null) {
                    m6454z.f66139e = new C23898c.C23905g();
                }
                C23898c.C23905g c23905g = m6454z.f66139e;
                T m5716d = c23905g.m5716d();
                int i = 0;
                while (true) {
                    try {
                        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                        if (mo5811i2 == EnumC23381m.END_ARRAY) {
                            break;
                        }
                        if (mo5811i2 == EnumC23381m.VALUE_NUMBER_INT) {
                            mo5830B0 = abstractC23376j.mo5830B0();
                        } else if (mo5811i2 == EnumC23381m.VALUE_NULL) {
                            AbstractC23484r abstractC23484r = this.f65466f;
                            if (abstractC23484r != null) {
                                abstractC23484r.mo6233c(abstractC23632g);
                            } else {
                                m6648d0(abstractC23632g);
                                mo5830B0 = false;
                            }
                        } else {
                            mo5830B0 = m6654X(abstractC23376j, abstractC23632g);
                        }
                        T t = m5716d;
                        int i2 = i;
                        if (i >= m5716d.length) {
                            t = c23905g.m5718b(m5716d, i);
                            i2 = 0;
                        }
                        t[i2] = mo5830B0 == true ? 1 : 0;
                        i = i2 + 1;
                        m5716d = t;
                    } catch (Exception e) {
                        throw C23733k.m6158i(e, m5716d, c23905g.f66198d + i);
                    }
                }
                jArr = c23905g.m5717c(m5716d, i);
            }
            return jArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: m0 */
        public long[] mo6538m0(long[] jArr, long[] jArr2) {
            long[] jArr3 = jArr;
            long[] jArr4 = jArr2;
            int length = jArr3.length;
            int length2 = jArr4.length;
            long[] copyOf = Arrays.copyOf(jArr3, length + length2);
            System.arraycopy(jArr4, 0, copyOf, length, length2);
            return copyOf;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: n0 */
        public long[] mo6537n0() {
            return new long[0];
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: p0 */
        public long[] mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            return new long[]{m6654X(abstractC23376j, abstractC23632g)};
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: q0 */
        public AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool) {
            return new C23610g(this, abstractC23484r, bool);
        }
    }

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.x$h */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/x$h.class */
    public static final class C23611h extends AbstractC23603x<short[]> {
        public C23611h() {
            super(short[].class);
        }

        public C23611h(C23611h c23611h, AbstractC23484r abstractC23484r, Boolean bool) {
            super(c23611h, abstractC23484r, bool);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
            short[] sArr;
            short m6652Z;
            if (!abstractC23376j.mo7146V1()) {
                sArr = m6539o0(abstractC23376j, abstractC23632g);
            } else {
                C23898c m6454z = abstractC23632g.m6454z();
                if (m6454z.f66137c == null) {
                    m6454z.f66137c = new C23898c.C23906h();
                }
                C23898c.C23906h c23906h = m6454z.f66137c;
                short[] m5716d = c23906h.m5716d();
                int i = 0;
                while (true) {
                    try {
                        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                        if (mo5811i2 == EnumC23381m.END_ARRAY) {
                            break;
                        }
                        if (mo5811i2 == EnumC23381m.VALUE_NULL) {
                            AbstractC23484r abstractC23484r = this.f65466f;
                            if (abstractC23484r != null) {
                                abstractC23484r.mo6233c(abstractC23632g);
                            } else {
                                m6648d0(abstractC23632g);
                                m6652Z = 0;
                            }
                        } else {
                            m6652Z = m6652Z(abstractC23376j, abstractC23632g);
                        }
                        short[] sArr2 = m5716d;
                        int i2 = i;
                        if (i >= m5716d.length) {
                            sArr2 = c23906h.m5718b(m5716d, i);
                            i2 = 0;
                        }
                        sArr2[i2] = m6652Z;
                        i = i2 + 1;
                        m5716d = sArr2;
                    } catch (Exception e) {
                        throw C23733k.m6158i(e, m5716d, c23906h.f66198d + i);
                    }
                }
                sArr = c23906h.m5717c(m5716d, i);
            }
            return sArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: m0 */
        public short[] mo6538m0(short[] sArr, short[] sArr2) {
            short[] sArr3 = sArr;
            short[] sArr4 = sArr2;
            int length = sArr3.length;
            int length2 = sArr4.length;
            short[] copyOf = Arrays.copyOf(sArr3, length + length2);
            System.arraycopy(sArr4, 0, copyOf, length, length2);
            return copyOf;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: n0 */
        public short[] mo6537n0() {
            return new short[0];
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: p0 */
        public short[] mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            return new short[]{m6652Z(abstractC23376j, abstractC23632g)};
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23603x
        /* renamed from: q0 */
        public AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool) {
            return new C23611h(this, abstractC23484r, bool);
        }
    }

    public AbstractC23603x(AbstractC23603x<?> abstractC23603x, AbstractC23484r abstractC23484r, Boolean bool) {
        super(abstractC23603x.f65309a);
        this.f65464d = bool;
        this.f65466f = abstractC23484r;
    }

    public AbstractC23603x(Class<T> cls) {
        super((Class<?>) cls);
        this.f65464d = null;
        this.f65466f = null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        Class<?> cls = this.f65309a;
        AbstractC23311k.EnumC23312a enumC23312a = AbstractC23311k.EnumC23312a.ACCEPT_SINGLE_VALUE_AS_ARRAY;
        AbstractC23311k.C23315d m6644h0 = m6644h0(abstractC23632g, abstractC23462d, cls);
        C23529t c23529t = null;
        Boolean m7286b = m6644h0 != null ? m6644h0.m7286b(enumC23312a) : null;
        EnumC23310j0 enumC23310j0 = abstractC23462d != null ? abstractC23462d.getMetadata().f66299g : null;
        if (enumC23310j0 == EnumC23310j0.SKIP) {
            C23529t c23529t2 = C23529t.f65285b;
            c23529t = C23529t.f65285b;
        } else if (enumC23310j0 == EnumC23310j0.FAIL) {
            c23529t = abstractC23462d == null ? C23530u.m6692a(abstractC23632g.m6465o(this.f65309a.getComponentType())) : new C23530u(abstractC23462d.mo6107d(), abstractC23462d.getType().mo5948k());
        }
        return (!Objects.equals(m7286b, this.f65464d) || c23529t != this.f65466f) ? mo6535q0(c23529t, m7286b) : this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public T mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, T t) throws IOException {
        T mo6232d = mo6232d(abstractC23376j, abstractC23632g);
        if (t != null && Array.getLength(t) != 0) {
            return mo6538m0(t, mo6232d);
        }
        return mo6232d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6207c(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: i */
    public EnumC23892a mo6227i() {
        return EnumC23892a.CONSTANT;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: j */
    public Object mo6226j(AbstractC23632g abstractC23632g) throws C23733k {
        Object obj = this.f65465e;
        Object obj2 = obj;
        if (obj == null) {
            obj2 = mo6537n0();
            this.f65465e = obj2;
        }
        return obj2;
    }

    /* renamed from: m0 */
    public abstract T mo6538m0(T t, T t2);

    /* renamed from: n0 */
    public abstract T mo6537n0();

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Array;
    }

    /* renamed from: o0 */
    public T m6539o0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        if (abstractC23376j.mo7150O1(EnumC23381m.VALUE_STRING)) {
            return m6674C(abstractC23376j, abstractC23632g);
        }
        Boolean bool = this.f65464d;
        if (bool == Boolean.TRUE || (bool == null && abstractC23632g.m6488R(EnumC23694h.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            return mo6536p0(abstractC23376j, abstractC23632g);
        }
        abstractC23632g.m6496J(this.f65309a, abstractC23376j);
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return Boolean.TRUE;
    }

    /* renamed from: p0 */
    public abstract T mo6536p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException;

    /* renamed from: q0 */
    public abstract AbstractC23603x<?> mo6535q0(AbstractC23484r abstractC23484r, Boolean bool);
}
