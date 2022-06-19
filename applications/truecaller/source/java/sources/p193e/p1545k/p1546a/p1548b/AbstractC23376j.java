package p193e.p1545k.p1546a.p1548b;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23357i;
import p193e.p1545k.p1546a.p1548b.p1551v.C23392a;
/* renamed from: e.k.a.b.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/j.class */
public abstract class AbstractC23376j implements Closeable {

    /* renamed from: b */
    public static final C23357i<EnumC23385q> f64660b = C23357i.m7243a(EnumC23385q.values());

    /* renamed from: a */
    public int f64661a;

    /* renamed from: e.k.a.b.j$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/j$a.class */
    public enum EnumC23377a {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        ALLOW_MISSING_VALUES(false),
        ALLOW_TRAILING_COMMA(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNDEFINED(false),
        INCLUDE_SOURCE_IN_LOCATION(true);
        

        /* renamed from: a */
        public final boolean f64678a;

        /* renamed from: b */
        public final int f64679b = 1 << ordinal();

        EnumC23377a(boolean z) {
            this.f64678a = z;
        }

        /* renamed from: a */
        public boolean m7199a(int i) {
            return (i & this.f64679b) != 0;
        }
    }

    /* renamed from: e.k.a.b.j$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/j$b.class */
    public enum EnumC23378b {
        INT,
        LONG,
        BIG_INTEGER,
        FLOAT,
        DOUBLE,
        BIG_DECIMAL
    }

    public AbstractC23376j() {
    }

    public AbstractC23376j(int i) {
        this.f64661a = i;
    }

    /* renamed from: B0 */
    public abstract long mo5830B0() throws IOException;

    /* renamed from: B1 */
    public long mo7166B1() throws IOException {
        return mo7162E1(0L);
    }

    /* renamed from: D0 */
    public abstract EnumC23378b mo5829D0() throws IOException;

    /* renamed from: E */
    public abstract BigInteger mo5828E() throws IOException;

    /* renamed from: E1 */
    public long mo7162E1(long j) throws IOException {
        return j;
    }

    /* renamed from: F0 */
    public abstract Number mo5827F0() throws IOException;

    /* renamed from: F1 */
    public String mo7001F1() throws IOException {
        return mo6997I1(null);
    }

    /* renamed from: G0 */
    public Number mo7189G0() throws IOException {
        return mo5827F0();
    }

    /* renamed from: I */
    public abstract byte[] mo5826I(C23344a c23344a) throws IOException;

    /* renamed from: I1 */
    public abstract String mo6997I1(String str) throws IOException;

    /* renamed from: J */
    public byte mo7205J() throws IOException {
        int mo5800z0 = mo5800z0();
        if (mo5800z0 < -128 || mo5800z0 > 255) {
            throw new C23392a(this, String.format("Numeric value (%s) out of range of Java byte", mo5817U0()), EnumC23381m.VALUE_NUMBER_INT, Byte.TYPE);
        }
        return (byte) mo5800z0;
    }

    /* renamed from: J0 */
    public Object mo5825J0() throws IOException {
        return null;
    }

    /* renamed from: K */
    public abstract AbstractC23382n mo5824K();

    /* renamed from: K0 */
    public abstract AbstractC23380l mo5823K0();

    /* renamed from: L0 */
    public C23357i<EnumC23385q> mo5822L0() {
        return f64660b;
    }

    /* renamed from: L1 */
    public abstract boolean mo7154L1();

    /* renamed from: M1 */
    public abstract boolean mo5821M1();

    /* renamed from: O1 */
    public abstract boolean mo7150O1(EnumC23381m enumC23381m);

    /* renamed from: P */
    public abstract C23374h mo5819P();

    /* renamed from: Q */
    public abstract String mo5818Q() throws IOException;

    /* renamed from: Q0 */
    public short mo7204Q0() throws IOException {
        int mo5800z0 = mo5800z0();
        if (mo5800z0 < -32768 || mo5800z0 > 32767) {
            throw new C23392a(this, String.format("Numeric value (%s) out of range of Java short", mo5817U0()), EnumC23381m.VALUE_NUMBER_INT, Short.TYPE);
        }
        return (short) mo5800z0;
    }

    /* renamed from: R1 */
    public abstract boolean mo7149R1(int i);

    /* renamed from: S */
    public abstract EnumC23381m mo7148S();

    /* renamed from: S1 */
    public boolean m7203S1(EnumC23377a enumC23377a) {
        return enumC23377a.m7199a(this.f64661a);
    }

    /* renamed from: T1 */
    public boolean mo7147T1() {
        return mo7142l() == EnumC23381m.VALUE_NUMBER_INT;
    }

    /* renamed from: U0 */
    public abstract String mo5817U0() throws IOException;

    /* renamed from: V1 */
    public boolean mo7146V1() {
        return mo7142l() == EnumC23381m.START_ARRAY;
    }

    @Deprecated
    /* renamed from: W */
    public abstract int mo7145W();

    /* renamed from: W0 */
    public abstract char[] mo5816W0() throws IOException;

    /* renamed from: Y1 */
    public boolean mo7144Y1() {
        return mo7142l() == EnumC23381m.START_OBJECT;
    }

    /* renamed from: Z1 */
    public boolean mo5815Z1() throws IOException {
        return false;
    }

    /* renamed from: b */
    public boolean mo5814b() {
        return false;
    }

    /* renamed from: b2 */
    public String mo5813b2() throws IOException {
        return mo5811i2() == EnumC23381m.FIELD_NAME ? mo5818Q() : null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    /* renamed from: d */
    public boolean mo5812d() {
        return false;
    }

    /* renamed from: h2 */
    public String mo6968h2() throws IOException {
        return mo5811i2() == EnumC23381m.VALUE_STRING ? mo5817U0() : null;
    }

    /* renamed from: i2 */
    public abstract EnumC23381m mo5811i2() throws IOException;

    /* renamed from: j */
    public abstract void mo7143j();

    /* renamed from: j1 */
    public abstract int mo5810j1() throws IOException;

    /* renamed from: k */
    public String mo5809k() throws IOException {
        return mo5818Q();
    }

    /* renamed from: k0 */
    public abstract BigDecimal mo5808k0() throws IOException;

    /* renamed from: l */
    public EnumC23381m mo7142l() {
        return mo7148S();
    }

    /* renamed from: l1 */
    public abstract int mo5807l1() throws IOException;

    /* renamed from: m1 */
    public abstract C23374h mo5806m1();

    /* renamed from: n0 */
    public abstract double mo5805n0() throws IOException;

    /* renamed from: n1 */
    public Object mo5804n1() throws IOException {
        return null;
    }

    /* renamed from: o2 */
    public abstract EnumC23381m mo7141o2() throws IOException;

    /* renamed from: p0 */
    public Object mo5803p0() throws IOException {
        return null;
    }

    /* renamed from: p2 */
    public AbstractC23376j mo7202p2(int i, int i2) {
        return this;
    }

    /* renamed from: q */
    public int mo7140q() {
        return mo7145W();
    }

    /* renamed from: q2 */
    public AbstractC23376j mo7171q2(int i, int i2) {
        return mo7168u2((i & i2) | (this.f64661a & (i2 ^ (-1))));
    }

    /* renamed from: r2 */
    public int mo5802r2(C23344a c23344a, OutputStream outputStream) throws IOException {
        StringBuilder m8728C = C22128a.m8728C("Operation not supported by parser of type ");
        m8728C.append(getClass().getName());
        throw new UnsupportedOperationException(m8728C.toString());
    }

    /* renamed from: s */
    public AbstractC23376j mo7170s(EnumC23377a enumC23377a) {
        this.f64661a = (enumC23377a.f64679b ^ (-1)) & this.f64661a;
        return this;
    }

    /* renamed from: s1 */
    public int mo6946s1() throws IOException {
        return mo6936z1(0);
    }

    /* renamed from: s2 */
    public boolean mo7201s2() {
        return false;
    }

    /* renamed from: t0 */
    public abstract float mo5801t0() throws IOException;

    /* renamed from: t2 */
    public void mo7169t2(Object obj) {
        AbstractC23380l mo5823K0 = mo5823K0();
        if (mo5823K0 != null) {
            mo5823K0.mo5783g(obj);
        }
    }

    @Deprecated
    /* renamed from: u2 */
    public AbstractC23376j mo7168u2(int i) {
        this.f64661a = i;
        return this;
    }

    /* renamed from: v2 */
    public void mo7200v2(AbstractC23367c abstractC23367c) {
        StringBuilder m8728C = C22128a.m8728C("Parser of type ");
        m8728C.append(getClass().getName());
        m8728C.append(" does not support schema of type '");
        m8728C.append(abstractC23367c.m7219a());
        m8728C.append("'");
        throw new UnsupportedOperationException(m8728C.toString());
    }

    /* renamed from: w2 */
    public abstract AbstractC23376j mo7139w2() throws IOException;

    /* renamed from: z0 */
    public abstract int mo5800z0() throws IOException;

    /* renamed from: z1 */
    public int mo6936z1(int i) throws IOException {
        return i;
    }
}
