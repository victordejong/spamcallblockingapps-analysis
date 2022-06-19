package p193e.p1545k.p1546a.p1548b;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23357i;
/* renamed from: e.k.a.b.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/g.class */
public abstract class AbstractC23372g implements Closeable, Flushable {

    /* renamed from: b */
    public static final C23357i<EnumC23386r> f64638b;

    /* renamed from: c */
    public static final C23357i<EnumC23386r> f64639c;

    /* renamed from: a */
    public AbstractC23383o f64640a;

    /* renamed from: e.k.a.b.g$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/g$a.class */
    public enum EnumC23373a {
        AUTO_CLOSE_TARGET(true),
        AUTO_CLOSE_JSON_CONTENT(true),
        FLUSH_PASSED_TO_STREAM(true),
        QUOTE_FIELD_NAMES(true),
        QUOTE_NON_NUMERIC_NUMBERS(true),
        ESCAPE_NON_ASCII(false),
        WRITE_NUMBERS_AS_STRINGS(false),
        WRITE_BIGDECIMAL_AS_PLAIN(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNKNOWN(false);
        

        /* renamed from: a */
        public final boolean f64652a;

        /* renamed from: b */
        public final int f64653b = 1 << ordinal();

        EnumC23373a(boolean z) {
            this.f64652a = z;
        }

        /* renamed from: a */
        public static int m7208a() {
            EnumC23373a[] values = values();
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i < 10) {
                    EnumC23373a enumC23373a = values[i];
                    int i4 = i3;
                    if (enumC23373a.f64652a) {
                        i4 = i3 | enumC23373a.f64653b;
                    }
                    i++;
                    i2 = i4;
                } else {
                    return i3;
                }
            }
        }

        /* renamed from: c */
        public boolean m7207c(int i) {
            return (i & this.f64653b) != 0;
        }
    }

    static {
        C23357i<EnumC23386r> m7243a = C23357i.m7243a(EnumC23386r.values());
        f64638b = m7243a;
        f64639c = m7243a.m7242b(EnumC23386r.CAN_WRITE_FORMATTED_NUMBERS);
        m7243a.m7242b(EnumC23386r.CAN_WRITE_BINARY_NATIVELY);
    }

    /* renamed from: B0 */
    public abstract void mo5889B0(String str) throws IOException;

    /* renamed from: B1 */
    public void mo7020B1(AbstractC23384p abstractC23384p) throws IOException {
        mo5886E1(abstractC23384p.getValue());
    }

    /* renamed from: D0 */
    public abstract void mo5888D0() throws IOException;

    /* renamed from: E */
    public abstract boolean mo5887E(EnumC23373a enumC23373a);

    /* renamed from: E1 */
    public abstract void mo5886E1(String str) throws IOException;

    /* renamed from: F0 */
    public abstract void mo5885F0(double d) throws IOException;

    /* renamed from: F1 */
    public abstract void mo5884F1() throws IOException;

    /* renamed from: G0 */
    public abstract void mo5883G0(float f) throws IOException;

    /* renamed from: I */
    public AbstractC23372g mo5882I(int i, int i2) {
        return mo5879K((i & i2) | (mo5846q() & (i2 ^ (-1))));
    }

    /* renamed from: I1 */
    public void mo5881I1(Object obj) throws IOException {
        mo5884F1();
        mo7191J(obj);
    }

    /* renamed from: J */
    public void mo7191J(Object obj) {
        AbstractC23380l mo5843s = mo5843s();
        if (mo5843s != null) {
            mo5843s.mo5783g(obj);
        }
    }

    /* renamed from: J0 */
    public abstract void mo5880J0(int i) throws IOException;

    @Deprecated
    /* renamed from: K */
    public abstract AbstractC23372g mo5879K(int i);

    /* renamed from: K0 */
    public abstract void mo5878K0(long j) throws IOException;

    /* renamed from: L0 */
    public abstract void mo5877L0(String str) throws IOException;

    /* renamed from: L1 */
    public void mo5876L1(Object obj, int i) throws IOException {
        mo5884F1();
        mo7191J(obj);
    }

    /* renamed from: M1 */
    public abstract void mo5875M1() throws IOException;

    /* renamed from: O1 */
    public void mo5874O1(Object obj) throws IOException {
        mo5875M1();
        mo7191J(obj);
    }

    /* renamed from: P */
    public abstract AbstractC23372g mo7081P(int i);

    /* renamed from: Q */
    public abstract int mo5873Q(C23344a c23344a, InputStream inputStream, int i) throws IOException;

    /* renamed from: Q0 */
    public abstract void mo5872Q0(BigDecimal bigDecimal) throws IOException;

    /* renamed from: R1 */
    public void mo5871R1(Object obj, int i) throws IOException {
        mo5875M1();
        mo7191J(obj);
    }

    /* renamed from: S */
    public abstract void mo5870S(C23344a c23344a, byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: S1 */
    public abstract void mo5869S1(AbstractC23384p abstractC23384p) throws IOException;

    /* renamed from: T1 */
    public abstract void mo5868T1(String str) throws IOException;

    /* renamed from: U0 */
    public abstract void mo5867U0(BigInteger bigInteger) throws IOException;

    /* renamed from: V1 */
    public abstract void mo5866V1(char[] cArr, int i, int i2) throws IOException;

    /* renamed from: W */
    public void m7210W(byte[] bArr) throws IOException {
        mo5870S(C23366b.f64606b, bArr, 0, bArr.length);
    }

    /* renamed from: W0 */
    public void mo5865W0(short s) throws IOException {
        mo5880J0(s);
    }

    /* renamed from: Y1 */
    public abstract void mo5864Y1(AbstractC23388t abstractC23388t) throws IOException;

    /* renamed from: Z1 */
    public void mo5863Z1(Object obj) throws IOException {
        throw new C23371f("No native support for writing Type Ids", this);
    }

    /* renamed from: b */
    public final void m7209b(int i, int i2, int i3) {
        if (i2 < 0 || i2 + i3 > i) {
            throw new IllegalArgumentException(String.format("invalid argument(s) (offset=%d, length=%d) for input array of %d element", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i)));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    /* renamed from: d */
    public boolean mo5861d() {
        return false;
    }

    @Override // java.io.Flushable
    public abstract void flush() throws IOException;

    /* renamed from: j */
    public boolean mo5858j() {
        return false;
    }

    /* renamed from: j1 */
    public abstract void mo5857j1(Object obj) throws IOException;

    /* renamed from: k */
    public boolean mo5856k() {
        return false;
    }

    /* renamed from: k0 */
    public abstract void mo5855k0(boolean z) throws IOException;

    /* renamed from: l */
    public abstract AbstractC23372g mo5854l(EnumC23373a enumC23373a);

    /* renamed from: l1 */
    public void mo5853l1(Object obj) throws IOException {
        throw new C23371f("No native support for writing Object Ids", this);
    }

    /* renamed from: m1 */
    public abstract void mo5852m1(char c) throws IOException;

    /* renamed from: n0 */
    public void mo5851n0(Object obj) throws IOException {
        if (obj == null) {
            mo5888D0();
        } else if (obj instanceof byte[]) {
            m7210W((byte[]) obj);
        } else {
            StringBuilder m8728C = C22128a.m8728C("No native support for writing embedded objects of type ");
            m8728C.append(obj.getClass().getName());
            throw new C23371f(m8728C.toString(), this);
        }
    }

    /* renamed from: n1 */
    public void mo5850n1(AbstractC23384p abstractC23384p) throws IOException {
        mo5842s1(abstractC23384p.getValue());
    }

    /* renamed from: p0 */
    public abstract void mo5848p0() throws IOException;

    /* renamed from: q */
    public abstract int mo5846q();

    /* renamed from: s */
    public abstract AbstractC23380l mo5843s();

    /* renamed from: s1 */
    public abstract void mo5842s1(String str) throws IOException;

    /* renamed from: t0 */
    public abstract void mo5840t0() throws IOException;

    /* renamed from: z0 */
    public abstract void mo5833z0(AbstractC23384p abstractC23384p) throws IOException;

    /* renamed from: z1 */
    public abstract void mo5832z1(char[] cArr, int i, int i2) throws IOException;
}
