package p193e.p1545k.p1546a.p1548b.p1553x;

import io.agora.rtc.Constants;
import java.io.IOException;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.AbstractC23384p;
import p193e.p1545k.p1546a.p1548b.C23371f;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23350e;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23365p;
import p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23389a;
import p193e.p1545k.p1546a.p1548b.p1552w.C23394a;
import p193e.p1545k.p1546a.p1548b.p1552w.C23396b;
/* renamed from: e.k.a.b.x.c */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/c.class */
public abstract class AbstractC23408c extends AbstractC23389a {

    /* renamed from: n */
    public static final int[] f64839n = C23394a.f64774h;

    /* renamed from: i */
    public final C23396b f64840i;

    /* renamed from: k */
    public int f64842k;

    /* renamed from: m */
    public boolean f64844m;

    /* renamed from: j */
    public int[] f64841j = f64839n;

    /* renamed from: l */
    public AbstractC23384p f64843l = C23350e.DEFAULT_ROOT_VALUE_SEPARATOR;

    public AbstractC23408c(C23396b c23396b, int i, AbstractC23382n abstractC23382n) {
        super(i, abstractC23382n);
        this.f64840i = c23396b;
        if ((AbstractC23372g.EnumC23373a.ESCAPE_NON_ASCII.f64653b & i) != 0) {
            this.f64842k = Constants.ERR_WATERMARKR_INFO;
        }
        this.f64844m = !((AbstractC23372g.EnumC23373a.QUOTE_FIELD_NAMES.f64653b & i) != 0);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: P */
    public AbstractC23372g mo7081P(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        this.f64842k = i2;
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23389a
    /* renamed from: h2 */
    public void mo7080h2(int i, int i2) {
        if ((AbstractC23389a.f64725h & i2) != 0) {
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
            if ((i2 & i4) != 0) {
                if ((i & i4) != 0) {
                    C23411f c23411f = this.f64729g;
                    if (c23411f.f64868d == null) {
                        c23411f.f64868d = new C23407b(this);
                        this.f64729g = c23411f;
                    }
                } else {
                    C23411f c23411f2 = this.f64729g;
                    c23411f2.f64868d = null;
                    this.f64729g = c23411f2;
                }
            }
        }
        boolean z = false;
        if ((i & AbstractC23372g.EnumC23373a.QUOTE_FIELD_NAMES.f64653b) != 0) {
            z = true;
        }
        this.f64844m = !z;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23389a, p193e.p1545k.p1546a.p1548b.AbstractC23372g
    /* renamed from: l */
    public AbstractC23372g mo5854l(AbstractC23372g.EnumC23373a enumC23373a) {
        int i = enumC23373a.f64653b;
        this.f64727e &= i ^ (-1);
        if ((i & AbstractC23389a.f64725h) != 0) {
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
        if (enumC23373a == AbstractC23372g.EnumC23373a.QUOTE_FIELD_NAMES) {
            this.f64844m = true;
        }
        return this;
    }

    /* renamed from: o2 */
    public void m7079o2(String str) throws IOException {
        throw new C23371f(String.format("Can not %s, expecting field name (context: %s)", str, this.f64729g.m7194h()), this);
    }

    /* renamed from: p2 */
    public void m7078p2(String str, int i) throws IOException {
        if (i == 0) {
            if (this.f64729g.m7197d()) {
                this.f64640a.beforeArrayValues(this);
            } else if (!this.f64729g.m7196e()) {
            } else {
                this.f64640a.beforeObjectEntries(this);
            }
        } else if (i == 1) {
            this.f64640a.writeArrayValueSeparator(this);
        } else if (i == 2) {
            this.f64640a.writeObjectFieldValueSeparator(this);
        } else if (i == 3) {
            this.f64640a.writeRootValueSeparator(this);
        } else if (i != 5) {
            C23365p.m7220a();
            throw null;
        } else {
            m7079o2(str);
            throw null;
        }
    }
}
