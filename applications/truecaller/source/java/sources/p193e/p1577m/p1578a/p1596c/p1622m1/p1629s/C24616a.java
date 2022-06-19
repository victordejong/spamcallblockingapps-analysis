package p193e.p1577m.p1578a.p1596c.p1622m1.p1629s;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.util.List;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24567g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.s.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/s/a.class */
public final class C24616a extends AbstractC24563c {

    /* renamed from: n */
    public final C24798t f68932n = new C24798t();

    /* renamed from: o */
    public boolean f68933o;

    /* renamed from: p */
    public int f68934p;

    /* renamed from: q */
    public int f68935q;

    /* renamed from: r */
    public String f68936r;

    /* renamed from: s */
    public float f68937s;

    /* renamed from: t */
    public int f68938t;

    public C24616a(List<byte[]> list) {
        super("Tx3gDecoder");
        boolean z = false;
        if (list == null || list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f68934p = 0;
            this.f68935q = -1;
            this.f68936r = "sans-serif";
            this.f68933o = false;
            this.f68937s = 0.85f;
            return;
        }
        byte[] bArr = list.get(0);
        this.f68934p = bArr[24];
        this.f68935q = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f68936r = "Serif".equals(C24773d0.m4615i(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i = bArr[25] * 20;
        this.f68938t = i;
        z = (bArr[0] & 32) != 0 ? true : z;
        this.f68933o = z;
        if (!z) {
            this.f68937s = 0.85f;
            return;
        }
        float f = ((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i;
        this.f68937s = f;
        this.f68937s = C24773d0.m4619e(f, 0.0f, 0.95f);
    }

    /* renamed from: k */
    public static void m4831k(boolean z) throws C24567g {
        if (z) {
            return;
        }
        throw new C24567g("Unexpected subtitle format.");
    }

    /* renamed from: l */
    public static void m4830l(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = (i & 1) != 0;
            boolean z2 = (i & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            boolean z3 = (i & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c
    /* renamed from: j */
    public AbstractC24565e mo4817j(byte[] bArr, int i, boolean z) throws C24567g {
        String str;
        float f;
        C24798t c24798t = this.f68932n;
        c24798t.f69504a = bArr;
        c24798t.f69506c = i;
        c24798t.f69505b = 0;
        m4831k(c24798t.m4545a() >= 2);
        int m4524v = c24798t.m4524v();
        if (m4524v == 0) {
            str = "";
        } else {
            if (c24798t.m4545a() >= 2) {
                byte[] bArr2 = c24798t.f69504a;
                int i2 = c24798t.f69505b;
                char c = (char) ((bArr2[i2 + 1] & 255) | ((bArr2[i2] & 255) << 8));
                if (c == 65279 || c == 65534) {
                    str = c24798t.m4531o(m4524v, Charset.forName("UTF-16"));
                }
            }
            str = c24798t.m4531o(m4524v, Charset.forName(StringConstant.UTF8));
        }
        if (str.isEmpty()) {
            return C24617b.f68939b;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        m4830l(spannableStringBuilder, this.f68934p, 0, 0, spannableStringBuilder.length(), 16711680);
        int i3 = this.f68935q;
        int length = spannableStringBuilder.length();
        if (i3 != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i3 >>> 8) | ((i3 & 255) << 24)), 0, length, 16711713);
        }
        String str2 = this.f68936r;
        int length2 = spannableStringBuilder.length();
        if (str2 != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str2), 0, length2, 16711713);
        }
        float f2 = this.f68937s;
        while (true) {
            float f3 = f2;
            if (this.f68932n.m4545a() < 8) {
                return new C24617b(new C24562b(spannableStringBuilder, null, f3, 0, 0, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f));
            }
            C24798t c24798t2 = this.f68932n;
            int i4 = c24798t2.f69505b;
            int m4541e = c24798t2.m4541e();
            int m4541e2 = this.f68932n.m4541e();
            if (m4541e2 == 1937013100) {
                m4831k(this.f68932n.m4545a() >= 2);
                int m4524v2 = this.f68932n.m4524v();
                int i5 = 0;
                while (true) {
                    f = f3;
                    if (i5 < m4524v2) {
                        C24798t c24798t3 = this.f68932n;
                        m4831k(c24798t3.m4545a() >= 12);
                        int m4524v3 = c24798t3.m4524v();
                        int m4524v4 = c24798t3.m4524v();
                        c24798t3.m4546D(2);
                        int m4529q = c24798t3.m4529q();
                        c24798t3.m4546D(1);
                        int m4541e3 = c24798t3.m4541e();
                        m4830l(spannableStringBuilder, m4529q, this.f68934p, m4524v3, m4524v4, 0);
                        if (m4541e3 != this.f68935q) {
                            spannableStringBuilder.setSpan(new ForegroundColorSpan((m4541e3 >>> 8) | ((m4541e3 & 255) << 24)), m4524v3, m4524v4, 33);
                        }
                        i5++;
                    }
                }
            } else {
                f = f3;
                if (m4541e2 == 1952608120) {
                    f = f3;
                    if (this.f68933o) {
                        m4831k(this.f68932n.m4545a() >= 2);
                        f = C24773d0.m4619e(this.f68932n.m4524v() / this.f68938t, 0.0f, 0.95f);
                    }
                }
            }
            this.f68932n.m4547C(i4 + m4541e);
            f2 = f;
        }
    }
}
