package p193e.p1545k.p1546a.p1548b.p1550u;

import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23375i;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
import p193e.p1545k.p1546a.p1548b.p1551v.C23392a;
import p193e.p1545k.p1546a.p1548b.p1552w.C23397c;
import p193e.p1545k.p1546a.p1548b.p1552w.C23400f;
/* renamed from: e.k.a.b.u.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/u/c.class */
public abstract class AbstractC23391c extends AbstractC23376j {

    /* renamed from: d */
    public static final byte[] f64756d = new byte[0];

    /* renamed from: e */
    public static final BigInteger f64757e;

    /* renamed from: f */
    public static final BigInteger f64758f;

    /* renamed from: g */
    public static final BigInteger f64759g;

    /* renamed from: h */
    public static final BigInteger f64760h;

    /* renamed from: i */
    public static final BigDecimal f64761i;

    /* renamed from: j */
    public static final BigDecimal f64762j;

    /* renamed from: k */
    public static final BigDecimal f64763k;

    /* renamed from: l */
    public static final BigDecimal f64764l;

    /* renamed from: c */
    public EnumC23381m f64765c;

    static {
        BigInteger valueOf = BigInteger.valueOf(-2147483648L);
        f64757e = valueOf;
        BigInteger valueOf2 = BigInteger.valueOf(2147483647L);
        f64758f = valueOf2;
        BigInteger valueOf3 = BigInteger.valueOf(Long.MIN_VALUE);
        f64759g = valueOf3;
        BigInteger valueOf4 = BigInteger.valueOf(RecyclerView.FOREVER_NS);
        f64760h = valueOf4;
        f64761i = new BigDecimal(valueOf3);
        f64762j = new BigDecimal(valueOf4);
        f64763k = new BigDecimal(valueOf);
        f64764l = new BigDecimal(valueOf2);
    }

    public AbstractC23391c(int i) {
        super(i);
    }

    /* renamed from: y2 */
    public static final String m7137y2(int i) {
        char c = (char) i;
        if (Character.isISOControl(c)) {
            return C22128a.m8599l2("(CTRL-CHAR, code ", i, ")");
        }
        if (i <= 255) {
            return "'" + c + "' (code " + i + ")";
        }
        return "'" + c + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")";
    }

    /* renamed from: A2 */
    public String m7167A2(String str) {
        int length = str.length();
        if (length < 1000) {
            return str;
        }
        int i = length;
        if (str.startsWith(StringConstant.DASH)) {
            i = length - 1;
        }
        return String.format("[Integer with %d digits]", Integer.valueOf(i));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: B1 */
    public long mo7166B1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        return (enumC23381m == EnumC23381m.VALUE_NUMBER_INT || enumC23381m == EnumC23381m.VALUE_NUMBER_FLOAT) ? mo5830B0() : mo7162E1(0L);
    }

    /* renamed from: B2 */
    public String m7165B2(String str) {
        int length = str.length();
        if (length < 1000) {
            return str;
        }
        int i = length;
        if (str.startsWith(StringConstant.DASH)) {
            i = length - 1;
        }
        return String.format("[number with %d characters]", Integer.valueOf(i));
    }

    /* renamed from: C2 */
    public final void m7164C2(String str, Object obj) throws C23375i {
        throw new C23375i(this, String.format(str, obj));
    }

    /* renamed from: D2 */
    public final void m7163D2(String str, Object obj, Object obj2) throws C23375i {
        throw new C23375i(this, String.format(str, obj, obj2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: E1 */
    public long mo7162E1(long j) throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.VALUE_NUMBER_INT || enumC23381m == EnumC23381m.VALUE_NUMBER_FLOAT) {
            return mo5830B0();
        }
        char c = j;
        if (enumC23381m != null) {
            int i = enumC23381m.f64707d;
            if (i != 6) {
                switch (i) {
                    case 9:
                        return 1L;
                    case 10:
                    case 11:
                        return 0L;
                    case 12:
                        Object mo5803p0 = mo5803p0();
                        c = j;
                        if (mo5803p0 instanceof Number) {
                            return ((Number) mo5803p0).longValue();
                        }
                        break;
                    default:
                        c = j;
                        break;
                }
            } else {
                String mo5817U0 = mo5817U0();
                if (AnalyticsConstants.NULL.equals(mo5817U0)) {
                    return 0L;
                }
                c = C23400f.m7120c(mo5817U0, j);
            }
        }
        return c;
    }

    /* renamed from: E2 */
    public void m7161E2() throws C23375i {
        StringBuilder m8728C = C22128a.m8728C(" in ");
        m8728C.append(this.f64765c);
        m7160F2(m8728C.toString(), this.f64765c);
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: F1 */
    public String mo7001F1() throws IOException {
        return mo6997I1(null);
    }

    /* renamed from: F2 */
    public void m7160F2(String str, EnumC23381m enumC23381m) throws C23375i {
        throw new C23397c(this, enumC23381m, C22128a.m8543z2("Unexpected end-of-input", str));
    }

    /* renamed from: G2 */
    public void m7159G2(EnumC23381m enumC23381m) throws C23375i {
        m7160F2(enumC23381m != EnumC23381m.VALUE_STRING ? (enumC23381m == EnumC23381m.VALUE_NUMBER_INT || enumC23381m == EnumC23381m.VALUE_NUMBER_FLOAT) ? " in a Number value" : " in a value" : " in a String value", enumC23381m);
        throw null;
    }

    /* renamed from: H2 */
    public void m7158H2(int i, String str) throws C23375i {
        if (i < 0) {
            m7161E2();
            throw null;
        }
        String format = String.format("Unexpected character (%s)", m7137y2(i));
        String str2 = format;
        if (str != null) {
            str2 = C22128a.m8725C2(format, ": ", str);
        }
        throw new C23375i(this, str2);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: I1 */
    public String mo6997I1(String str) throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.VALUE_STRING) {
            return mo5817U0();
        }
        if (enumC23381m == EnumC23381m.FIELD_NAME) {
            return mo5818Q();
        }
        String str2 = str;
        if (enumC23381m != null) {
            str2 = str;
            if (enumC23381m != EnumC23381m.VALUE_NULL) {
                str2 = !enumC23381m.f64711h ? str : mo5817U0();
            }
        }
        return str2;
    }

    /* renamed from: I2 */
    public void m7157I2(int i) throws C23375i {
        StringBuilder m8728C = C22128a.m8728C("Illegal character (");
        m8728C.append(m7137y2((char) i));
        m8728C.append("): only regular white space (\\r, \\n, \\t) is allowed between tokens");
        throw new C23375i(this, m8728C.toString());
    }

    /* renamed from: J2 */
    public void m7156J2() throws IOException {
        m7155K2(mo5817U0(), this.f64765c);
        throw null;
    }

    /* renamed from: K2 */
    public void m7155K2(String str, EnumC23381m enumC23381m) throws IOException {
        throw new C23392a(this, String.format("Numeric value (%s) out of range of int (%d - %s)", m7167A2(str), Integer.MIN_VALUE, Integer.MAX_VALUE), enumC23381m, Integer.TYPE);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: L1 */
    public boolean mo7154L1() {
        return this.f64765c != null;
    }

    /* renamed from: L2 */
    public void m7153L2() throws IOException {
        m7152M2(mo5817U0());
        throw null;
    }

    /* renamed from: M2 */
    public void m7152M2(String str) throws IOException {
        throw new C23392a(this, String.format("Numeric value (%s) out of range of long (%d - %s)", m7167A2(str), Long.MIN_VALUE, Long.valueOf((long) RecyclerView.FOREVER_NS)), this.f64765c, Long.TYPE);
    }

    /* renamed from: N2 */
    public void m7151N2(int i, String str) throws C23375i {
        throw new C23375i(this, C22128a.m8725C2(String.format("Unexpected character (%s) in numeric value", m7137y2(i)), ": ", str));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: O1 */
    public boolean mo7150O1(EnumC23381m enumC23381m) {
        return this.f64765c == enumC23381m;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: R1 */
    public boolean mo7149R1(int i) {
        EnumC23381m enumC23381m = this.f64765c;
        boolean z = true;
        if (enumC23381m != null) {
            return enumC23381m.f64707d == i;
        }
        if (i != 0) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: S */
    public EnumC23381m mo7148S() {
        return this.f64765c;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: T1 */
    public boolean mo7147T1() {
        return this.f64765c == EnumC23381m.VALUE_NUMBER_INT;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: V1 */
    public boolean mo7146V1() {
        return this.f64765c == EnumC23381m.START_ARRAY;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    @Deprecated
    /* renamed from: W */
    public int mo7145W() {
        EnumC23381m enumC23381m = this.f64765c;
        return enumC23381m == null ? 0 : enumC23381m.f64707d;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: Y1 */
    public boolean mo7144Y1() {
        return this.f64765c == EnumC23381m.START_OBJECT;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: j */
    public void mo7143j() {
        if (this.f64765c != null) {
            this.f64765c = null;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: l */
    public EnumC23381m mo7142l() {
        return this.f64765c;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: o2 */
    public EnumC23381m mo7141o2() throws IOException {
        EnumC23381m mo5811i2 = mo5811i2();
        EnumC23381m enumC23381m = mo5811i2;
        if (mo5811i2 == EnumC23381m.FIELD_NAME) {
            enumC23381m = mo5811i2();
        }
        return enumC23381m;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: q */
    public int mo7140q() {
        EnumC23381m enumC23381m = this.f64765c;
        return enumC23381m == null ? 0 : enumC23381m.f64707d;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: s1 */
    public int mo6946s1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        return (enumC23381m == EnumC23381m.VALUE_NUMBER_INT || enumC23381m == EnumC23381m.VALUE_NUMBER_FLOAT) ? mo5800z0() : mo6936z1(0);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: w2 */
    public AbstractC23376j mo7139w2() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.START_OBJECT || enumC23381m == EnumC23381m.START_ARRAY) {
            int i = 1;
            while (true) {
                EnumC23381m mo5811i2 = mo5811i2();
                if (mo5811i2 == null) {
                    mo5799z2();
                    return this;
                } else if (mo5811i2.f64708e) {
                    i++;
                } else if (mo5811i2.f64709f) {
                    int i2 = i - 1;
                    i = i2;
                    if (i2 == 0) {
                        return this;
                    }
                } else if (mo5811i2 == EnumC23381m.NOT_AVAILABLE) {
                    m7164C2("Not enough content available for `skipChildren()`: non-blocking parser? (%s)", getClass().getName());
                    throw null;
                }
            }
        } else {
            return this;
        }
    }

    /* renamed from: x2 */
    public void m7138x2(String str, C23348c c23348c, C23344a c23344a) throws IOException {
        try {
            c23344a.m7265d(str, c23348c);
        } catch (IllegalArgumentException e) {
            throw new C23375i(this, e.getMessage());
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: z1 */
    public int mo6936z1(int i) throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.VALUE_NUMBER_INT || enumC23381m == EnumC23381m.VALUE_NUMBER_FLOAT) {
            return mo5800z0();
        }
        int i2 = i;
        if (enumC23381m != null) {
            int i3 = enumC23381m.f64707d;
            if (i3 != 6) {
                switch (i3) {
                    case 9:
                        return 1;
                    case 10:
                    case 11:
                        return 0;
                    case 12:
                        Object mo5803p0 = mo5803p0();
                        i2 = i;
                        if (mo5803p0 instanceof Number) {
                            return ((Number) mo5803p0).intValue();
                        }
                        break;
                    default:
                        i2 = i;
                        break;
                }
            } else {
                String mo5817U0 = mo5817U0();
                if (AnalyticsConstants.NULL.equals(mo5817U0)) {
                    return 0;
                }
                i2 = C23400f.m7121b(mo5817U0, i);
            }
        }
        return i2;
    }

    /* renamed from: z2 */
    public abstract void mo5799z2() throws C23375i;
}
