package com.google.android.exoplayer2.text.p344h;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.AbstractC11370c;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.base.C15374d;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.h.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/h/a.class */
public final class C11403a extends AbstractC11370c {

    /* renamed from: a */
    private final C11628u f37634a = new C11628u();

    /* renamed from: b */
    private final boolean f37635b;

    /* renamed from: c */
    private final int f37636c;

    /* renamed from: d */
    private final int f37637d;

    /* renamed from: e */
    private final String f37638e;

    /* renamed from: f */
    private final float f37639f;

    /* renamed from: g */
    private final int f37640g;

    public C11403a(List<byte[]> list) {
        super("Tx3gDecoder");
        boolean z = true;
        if (list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f37636c = 0;
            this.f37637d = -1;
            this.f37638e = "sans-serif";
            this.f37635b = false;
            this.f37639f = 0.85f;
            this.f37640g = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.f37636c = bArr[24];
        this.f37637d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f37638e = "Serif".equals(C11599af.m19960a(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i = bArr[25] * 20;
        this.f37640g = i;
        z = (bArr[0] & 32) == 0 ? false : z;
        this.f37635b = z;
        if (z) {
            this.f37639f = C11599af.m20000a(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, (float) BitmapDescriptorFactory.HUE_RED, 0.95f);
        } else {
            this.f37639f = 0.85f;
        }
    }

    /* renamed from: a */
    private static void m20666a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
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
    private static void m20665a(boolean z) throws SubtitleDecoderException {
        if (z) {
            return;
        }
        throw new SubtitleDecoderException("Unexpected subtitle format.");
    }

    /* renamed from: b */
    private static void m20664b(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11370c
    /* renamed from: a */
    public final AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        float f;
        char c;
        this.f37634a.m19808a(bArr, i);
        C11628u c11628u = this.f37634a;
        m20665a(c11628u.m19812a() >= 2);
        int m19802d = c11628u.m19802d();
        String m19810a = m19802d == 0 ? "" : (c11628u.m19812a() < 2 || !((c = (char) (((c11628u.f38733a[c11628u.f38734b] & 255) << 8) | (c11628u.f38733a[c11628u.f38734b + 1] & 255))) == 65279 || c == 65534)) ? c11628u.m19810a(m19802d, C15374d.f55620c) : c11628u.m19810a(m19802d, C15374d.f55623f);
        if (m19810a.isEmpty()) {
            return C11404b.f37641a;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(m19810a);
        m20666a(spannableStringBuilder, this.f37636c, 0, 0, spannableStringBuilder.length(), 16711680);
        m20664b(spannableStringBuilder, this.f37637d, -1, 0, spannableStringBuilder.length(), 16711680);
        String str = this.f37638e;
        int length = spannableStringBuilder.length();
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f2 = this.f37639f;
        while (true) {
            float f3 = f2;
            if (this.f37634a.m19812a() < 8) {
                C11356b.C11358a c11358a = new C11356b.C11358a();
                c11358a.f37428a = spannableStringBuilder;
                C11356b.C11358a m20743a = c11358a.m20743a(f3, 0);
                m20743a.f37431d = 0;
                return new C11404b(m20743a.m20744a());
            }
            int i2 = this.f37634a.f38734b;
            int m19792j = this.f37634a.m19792j();
            int m19792j2 = this.f37634a.m19792j();
            if (m19792j2 == 1937013100) {
                m20665a(this.f37634a.m19812a() >= 2);
                int m19802d2 = this.f37634a.m19802d();
                int i3 = 0;
                while (true) {
                    f = f3;
                    if (i3 < m19802d2) {
                        C11628u c11628u2 = this.f37634a;
                        m20665a(c11628u2.m19812a() >= 12);
                        int m19802d3 = c11628u2.m19802d();
                        int m19802d4 = c11628u2.m19802d();
                        c11628u2.m19799e(2);
                        int m19804c = c11628u2.m19804c();
                        c11628u2.m19799e(1);
                        int m19792j3 = c11628u2.m19792j();
                        if (m19802d4 > spannableStringBuilder.length()) {
                            C11617n.m19863a("Tx3gDecoder", "Truncating styl end (" + m19802d4 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
                            m19802d4 = spannableStringBuilder.length();
                        }
                        if (m19802d3 >= m19802d4) {
                            C11617n.m19863a("Tx3gDecoder", "Ignoring styl with start (" + m19802d3 + ") >= end (" + m19802d4 + ").");
                        } else {
                            m20666a(spannableStringBuilder, m19804c, this.f37636c, m19802d3, m19802d4, 0);
                            m20664b(spannableStringBuilder, m19792j3, this.f37637d, m19802d3, m19802d4, 0);
                        }
                        i3++;
                    }
                }
            } else {
                f = f3;
                if (m19792j2 == 1952608120) {
                    f = f3;
                    if (this.f37635b) {
                        m20665a(this.f37634a.m19812a() >= 2);
                        f = C11599af.m20000a(this.f37634a.m19802d() / this.f37640g, (float) BitmapDescriptorFactory.HUE_RED, 0.95f);
                    }
                }
            }
            this.f37634a.m19801d(i2 + m19792j);
            f2 = f;
        }
    }
}
