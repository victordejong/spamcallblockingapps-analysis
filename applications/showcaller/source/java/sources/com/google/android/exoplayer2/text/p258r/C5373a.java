package com.google.android.exoplayer2.text.p258r;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.AbstractC5318c;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.charset.Charset;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.r.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/r/a.class */
public final class C5373a extends AbstractC5318c {

    /* renamed from: o */
    private final C5536v f17186o = new C5536v();

    /* renamed from: p */
    private boolean f17187p;

    /* renamed from: q */
    private int f17188q;

    /* renamed from: r */
    private int f17189r;

    /* renamed from: s */
    private String f17190s;

    /* renamed from: t */
    private float f17191t;

    /* renamed from: u */
    private int f17192u;

    public C5373a(List<byte[]> list) {
        super("Tx3gDecoder");
        boolean z = false;
        if (list == null || list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f17188q = 0;
            this.f17189r = -1;
            this.f17190s = "sans-serif";
            this.f17187p = false;
            this.f17191t = 0.85f;
            return;
        }
        byte[] bArr = list.get(0);
        this.f17188q = bArr[24];
        this.f17189r = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f17190s = "Serif".equals(C5515h0.m18801w(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i = bArr[25] * 20;
        this.f17192u = i;
        z = (bArr[0] & 32) != 0 ? true : z;
        this.f17187p = z;
        if (!z) {
            this.f17191t = 0.85f;
            return;
        }
        float f = ((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i;
        this.f17191t = f;
        this.f17191t = C5515h0.m18821m(f, 0.0f, 0.95f);
    }

    /* renamed from: C */
    private void m19459C(C5536v c5536v, SpannableStringBuilder spannableStringBuilder) {
        m19458D(c5536v.m18678a() >= 12);
        int m18687F = c5536v.m18687F();
        int m18687F2 = c5536v.m18687F();
        c5536v.m18679N(2);
        int m18653z = c5536v.m18653z();
        c5536v.m18679N(1);
        int m18668k = c5536v.m18668k();
        m19456F(spannableStringBuilder, m18653z, this.f17188q, m18687F, m18687F2, 0);
        m19457E(spannableStringBuilder, m18668k, this.f17189r, m18687F, m18687F2, 0);
    }

    /* renamed from: D */
    private static void m19458D(boolean z) {
        if (z) {
            return;
        }
        throw new SubtitleDecoderException("Unexpected subtitle format.");
    }

    /* renamed from: E */
    private static void m19457E(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    /* renamed from: F */
    private static void m19456F(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: G */
    private static void m19455G(SpannableStringBuilder spannableStringBuilder, String str, String str2, int i, int i2, int i3) {
        if (str != str2) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i, i2, i3 | 33);
        }
    }

    /* renamed from: H */
    private static String m19454H(C5536v c5536v) {
        char m18674e;
        m19458D(c5536v.m18678a() >= 2);
        int m18687F = c5536v.m18687F();
        return m18687F == 0 ? "" : (c5536v.m18678a() < 2 || !((m18674e = c5536v.m18674e()) == 65279 || m18674e == 65534)) ? c5536v.m18655x(m18687F, Charset.forName("UTF-8")) : c5536v.m18655x(m18687F, Charset.forName("UTF-16"));
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5318c
    /* renamed from: z */
    protected AbstractC5320e mo19377z(byte[] bArr, int i, boolean z) {
        float f;
        this.f17186o.m18682K(bArr, i);
        String m19454H = m19454H(this.f17186o);
        if (m19454H.isEmpty()) {
            return C5374b.f17193d;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(m19454H);
        m19456F(spannableStringBuilder, this.f17188q, 0, 0, spannableStringBuilder.length(), 16711680);
        m19457E(spannableStringBuilder, this.f17189r, -1, 0, spannableStringBuilder.length(), 16711680);
        m19455G(spannableStringBuilder, this.f17190s, "sans-serif", 0, spannableStringBuilder.length(), 16711680);
        float f2 = this.f17191t;
        while (true) {
            float f3 = f2;
            if (this.f17186o.m18678a() < 8) {
                return new C5374b(new C5317b(spannableStringBuilder, null, f3, 0, 0, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f));
            }
            int m18676c = this.f17186o.m18676c();
            int m18668k = this.f17186o.m18668k();
            int m18668k2 = this.f17186o.m18668k();
            boolean z2 = true;
            int i2 = 0;
            if (m18668k2 == 1937013100) {
                if (this.f17186o.m18678a() < 2) {
                    z2 = false;
                }
                m19458D(z2);
                int m18687F = this.f17186o.m18687F();
                while (true) {
                    f = f3;
                    if (i2 < m18687F) {
                        m19459C(this.f17186o, spannableStringBuilder);
                        i2++;
                    }
                }
            } else {
                f = f3;
                if (m18668k2 == 1952608120) {
                    f = f3;
                    if (this.f17187p) {
                        m19458D(this.f17186o.m18678a() >= 2);
                        f = C5515h0.m18821m(this.f17186o.m18687F() / this.f17192u, 0.0f, 0.95f);
                    }
                }
            }
            this.f17186o.m18680M(m18676c + m18668k);
            f2 = f;
        }
    }
}
