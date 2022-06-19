package p193e.p1545k.p1546a.p1548b.p1550u;

import io.agora.rtc.Constants;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23380l;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.AbstractC23388t;
import p193e.p1545k.p1546a.p1548b.C23371f;
import p193e.p1545k.p1546a.p1548b.p1553x.C23407b;
import p193e.p1545k.p1546a.p1548b.p1553x.C23411f;
/* renamed from: e.k.a.b.u.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/u/a.class */
public abstract class AbstractC23389a extends AbstractC23372g {

    /* renamed from: h */
    public static final int f64725h = (AbstractC23372g.EnumC23373a.WRITE_NUMBERS_AS_STRINGS.f64653b | AbstractC23372g.EnumC23373a.ESCAPE_NON_ASCII.f64653b) | AbstractC23372g.EnumC23373a.STRICT_DUPLICATE_DETECTION.f64653b;

    /* renamed from: d */
    public AbstractC23382n f64726d;

    /* renamed from: e */
    public int f64727e;

    /* renamed from: f */
    public boolean f64728f;

    /* renamed from: g */
    public C23411f f64729g;

    public AbstractC23389a(int i, AbstractC23382n abstractC23382n) {
        this.f64727e = i;
        this.f64726d = abstractC23382n;
        boolean z = true;
        this.f64729g = C23411f.m7064n((AbstractC23372g.EnumC23373a.STRICT_DUPLICATE_DETECTION.f64653b & i) != 0 ? new C23407b(this) : null);
        this.f64728f = (i & AbstractC23372g.EnumC23373a.WRITE_NUMBERS_AS_STRINGS.f64653b) == 0 ? false : z;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: B1 */
    public void mo7020B1(AbstractC23384p abstractC23384p) throws IOException {
        mo6933i2("write raw value");
        mo5850n1(abstractC23384p);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: E */
    public final boolean mo5887E(AbstractC23372g.EnumC23373a enumC23373a) {
        return (enumC23373a.f64653b & this.f64727e) != 0;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: E1 */
    public void mo5886E1(String str) throws IOException {
        mo6933i2("write raw value");
        mo5842s1(str);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: I */
    public AbstractC23372g mo5882I(int i, int i2) {
        int i3 = this.f64727e;
        int i4 = (i & i2) | ((i2 ^ (-1)) & i3);
        int i5 = i3 ^ i4;
        if (i5 != 0) {
            this.f64727e = i4;
            mo7080h2(i4, i5);
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: J */
    public void mo7191J(Object obj) {
        C23411f c23411f = this.f64729g;
        if (c23411f != null) {
            c23411f.f64871g = obj;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    @Deprecated
    /* renamed from: K */
    public AbstractC23372g mo5879K(int i) {
        int i2 = this.f64727e ^ i;
        this.f64727e = i;
        if (i2 != 0) {
            mo7080h2(i, i2);
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: Y1 */
    public void mo5864Y1(AbstractC23388t abstractC23388t) throws IOException {
        if (abstractC23388t == null) {
            mo5888D0();
            return;
        }
        AbstractC23382n abstractC23382n = this.f64726d;
        if (abstractC23382n == null) {
            throw new IllegalStateException("No ObjectCodec defined");
        }
        abstractC23382n.mo5673b(this, abstractC23388t);
    }

    /* renamed from: b2 */
    public String m7190b2(BigDecimal bigDecimal) throws IOException {
        if (AbstractC23372g.EnumC23373a.WRITE_BIGDECIMAL_AS_PLAIN.m7207c(this.f64727e)) {
            int scale = bigDecimal.scale();
            if (scale >= -9999 && scale <= 9999) {
                return bigDecimal.toPlainString();
            }
            throw new C23371f(String.format("Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]", Integer.valueOf(scale), 9999, 9999), this);
        }
        return bigDecimal.toString();
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    /* renamed from: h2 */
    public void mo7080h2(int i, int i2) {
        if ((f64725h & i2) == 0) {
            return;
        }
        this.f64728f = (AbstractC23372g.EnumC23373a.WRITE_NUMBERS_AS_STRINGS.f64653b & i) != 0;
        int i3 = AbstractC23372g.EnumC23373a.ESCAPE_NON_ASCII.f64653b;
        if ((i2 & i3) != 0) {
            if ((i3 & i) != 0) {
                mo7081P(Constants.ERR_WATERMARKR_INFO);
            } else {
                mo7081P(0);
            }
        }
        int i4 = AbstractC23372g.EnumC23373a.STRICT_DUPLICATE_DETECTION.f64653b;
        if (!((i2 & i4) != 0)) {
            return;
        }
        if (!((i & i4) != 0)) {
            C23411f c23411f = this.f64729g;
            c23411f.f64868d = null;
            this.f64729g = c23411f;
            return;
        }
        C23411f c23411f2 = this.f64729g;
        if (c23411f2.f64868d != null) {
            return;
        }
        c23411f2.f64868d = new C23407b(this);
        this.f64729g = c23411f2;
    }

    /* renamed from: i2 */
    public abstract void mo6933i2(String str) throws IOException;

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: j1 */
    public void mo5857j1(Object obj) throws IOException {
        if (obj == null) {
            mo5888D0();
            return;
        }
        AbstractC23382n abstractC23382n = this.f64726d;
        if (abstractC23382n != null) {
            abstractC23382n.mo5673b(this, obj);
        } else if (obj instanceof String) {
            mo5868T1((String) obj);
        } else {
            if (obj instanceof Number) {
                Number number = (Number) obj;
                if (number instanceof Integer) {
                    mo5880J0(number.intValue());
                    return;
                } else if (number instanceof Long) {
                    mo5878K0(number.longValue());
                    return;
                } else if (number instanceof Double) {
                    mo5885F0(number.doubleValue());
                    return;
                } else if (number instanceof Float) {
                    mo5883G0(number.floatValue());
                    return;
                } else if (number instanceof Short) {
                    mo5865W0(number.shortValue());
                    return;
                } else if (number instanceof Byte) {
                    mo5865W0(number.byteValue());
                    return;
                } else if (number instanceof BigInteger) {
                    mo5867U0((BigInteger) number);
                    return;
                } else if (number instanceof BigDecimal) {
                    mo5872Q0((BigDecimal) number);
                    return;
                } else if (number instanceof AtomicInteger) {
                    mo5880J0(((AtomicInteger) number).get());
                    return;
                } else if (number instanceof AtomicLong) {
                    mo5878K0(((AtomicLong) number).get());
                    return;
                }
            } else if (obj instanceof byte[]) {
                m7210W((byte[]) obj);
                return;
            } else if (obj instanceof Boolean) {
                mo5855k0(((Boolean) obj).booleanValue());
                return;
            } else if (obj instanceof AtomicBoolean) {
                mo5855k0(((AtomicBoolean) obj).get());
                return;
            }
            throw new IllegalStateException(C22128a.m8631d2(obj, C22128a.m8728C("No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "), ")"));
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: l */
    public AbstractC23372g mo5854l(AbstractC23372g.EnumC23373a enumC23373a) {
        int i = enumC23373a.f64653b;
        this.f64727e &= i ^ (-1);
        if ((i & f64725h) != 0) {
            if (enumC23373a == AbstractC23372g.EnumC23373a.WRITE_NUMBERS_AS_STRINGS) {
                this.f64728f = false;
            } else if (enumC23373a == AbstractC23372g.EnumC23373a.ESCAPE_NON_ASCII) {
                mo7081P(0);
            } else if (enumC23373a == AbstractC23372g.EnumC23373a.STRICT_DUPLICATE_DETECTION) {
                C23411f c23411f = this.f64729g;
                c23411f.f64868d = null;
                this.f64729g = c23411f;
            }
        }
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: q */
    public int mo5846q() {
        return this.f64727e;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: s */
    public AbstractC23380l mo5843s() {
        return this.f64729g;
    }
}
