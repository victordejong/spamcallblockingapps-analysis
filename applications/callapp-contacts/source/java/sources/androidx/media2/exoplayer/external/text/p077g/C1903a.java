package androidx.media2.exoplayer.external.text.p077g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media2.exoplayer.external.text.AbstractC1870b;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.charset.Charset;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.g.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/g/a.class */
public final class C1903a extends AbstractC1870b {

    /* renamed from: a */
    private final C2018p f7651a = new C2018p();

    /* renamed from: b */
    private boolean f7652b;

    /* renamed from: c */
    private int f7653c;

    /* renamed from: d */
    private int f7654d;

    /* renamed from: e */
    private String f7655e;

    /* renamed from: f */
    private float f7656f;

    /* renamed from: g */
    private int f7657g;

    public C1903a(List<byte[]> list) {
        super("Tx3gDecoder");
        boolean z = false;
        if (list == null || list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f7653c = 0;
            this.f7654d = -1;
            this.f7655e = "sans-serif";
            this.f7652b = false;
            this.f7656f = 0.85f;
            return;
        }
        byte[] bArr = list.get(0);
        this.f7653c = bArr[24];
        this.f7654d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f7655e = "Serif".equals(C1996ac.m41648a(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i = bArr[25] * 20;
        this.f7657g = i;
        z = (bArr[0] & 32) != 0 ? true : z;
        this.f7652b = z;
        if (!z) {
            this.f7656f = 0.85f;
            return;
        }
        float f = ((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i;
        this.f7656f = f;
        this.f7656f = C1996ac.m41677a(f, (float) BitmapDescriptorFactory.HUE_RED, 0.95f);
    }

    /* renamed from: a */
    private static void m41919a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: a */
    private static void m41918a(boolean z) throws SubtitleDecoderException {
        if (z) {
            return;
        }
        throw new SubtitleDecoderException("Unexpected subtitle format.");
    }

    /* renamed from: b */
    private static void m41917b(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1870b
    /* renamed from: a */
    public final AbstractC1886d mo41891a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        float f;
        char c;
        this.f7651a.m41538a(bArr, i);
        C2018p c2018p = this.f7651a;
        m41918a(c2018p.m41536b() >= 2);
        int m41532d = c2018p.m41532d();
        String m41540a = m41532d == 0 ? "" : (c2018p.m41536b() < 2 || !((c = (char) (((c2018p.f8131a[c2018p.f8132b] & 255) << 8) | (c2018p.f8131a[c2018p.f8132b + 1] & 255))) == 65279 || c == 65534)) ? c2018p.m41540a(m41532d, Charset.forName("UTF-8")) : c2018p.m41540a(m41532d, Charset.forName("UTF-16"));
        if (m41540a.isEmpty()) {
            return C1904b.f7658a;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(m41540a);
        m41919a(spannableStringBuilder, this.f7653c, 0, 0, spannableStringBuilder.length(), 16711680);
        m41917b(spannableStringBuilder, this.f7654d, -1, 0, spannableStringBuilder.length(), 16711680);
        String str = this.f7655e;
        int length = spannableStringBuilder.length();
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f2 = this.f7656f;
        while (true) {
            float f3 = f2;
            if (this.f7651a.m41536b() < 8) {
                return new C1904b(new C1856a(spannableStringBuilder, null, f3, 0, 0, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE));
            }
            int i2 = this.f7651a.f8132b;
            int m41524i = this.f7651a.m41524i();
            int m41524i2 = this.f7651a.m41524i();
            if (m41524i2 == 1937013100) {
                m41918a(this.f7651a.m41536b() >= 2);
                int m41532d2 = this.f7651a.m41532d();
                int i3 = 0;
                while (true) {
                    f = f3;
                    if (i3 < m41532d2) {
                        C2018p c2018p2 = this.f7651a;
                        m41918a(c2018p2.m41536b() >= 12);
                        int m41532d3 = c2018p2.m41532d();
                        int m41532d4 = c2018p2.m41532d();
                        c2018p2.m41531d(2);
                        int m41534c = c2018p2.m41534c();
                        c2018p2.m41531d(1);
                        int m41524i3 = c2018p2.m41524i();
                        m41919a(spannableStringBuilder, m41534c, this.f7653c, m41532d3, m41532d4, 0);
                        m41917b(spannableStringBuilder, m41524i3, this.f7654d, m41532d3, m41532d4, 0);
                        i3++;
                    }
                }
            } else {
                f = f3;
                if (m41524i2 == 1952608120) {
                    f = f3;
                    if (this.f7652b) {
                        m41918a(this.f7651a.m41536b() >= 2);
                        f = C1996ac.m41677a(this.f7651a.m41532d() / this.f7657g, (float) BitmapDescriptorFactory.HUE_RED, 0.95f);
                    }
                }
            }
            this.f7651a.m41533c(i2 + m41524i);
            f2 = f;
        }
    }
}
