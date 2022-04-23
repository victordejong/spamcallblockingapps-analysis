package com.google.android.exoplayer2.text.h;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.c;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.base.d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/h/a.class */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private final u f21853a = new u();

    /* renamed from: b  reason: collision with root package name */
    private final boolean f21854b;

    /* renamed from: c  reason: collision with root package name */
    private final int f21855c;

    /* renamed from: d  reason: collision with root package name */
    private final int f21856d;
    private final String e;
    private final float f;
    private final int g;

    public a(List<byte[]> list) {
        super("Tx3gDecoder");
        int size = list.size();
        String str = "sans-serif";
        boolean z = true;
        if (size == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
            byte[] bArr = list.get(0);
            this.f21855c = bArr[24];
            this.f21856d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            this.e = "Serif".equals(af.a(bArr, 43, bArr.length - 43)) ? "serif" : str;
            int i = bArr[25] * 20;
            this.g = i;
            z = (bArr[0] & 32) == 0 ? false : z;
            this.f21854b = z;
            if (z) {
                this.f = af.a(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, (float) BitmapDescriptorFactory.HUE_RED, 0.95f);
            } else {
                this.f = 0.85f;
            }
        } else {
            this.f21855c = 0;
            this.f21856d = -1;
            this.e = "sans-serif";
            this.f21854b = false;
            this.f = 0.85f;
            this.g = -1;
        }
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = true;
            boolean z2 = (i & 1) != 0;
            boolean z3 = (i & 2) != 0;
            if (z2) {
                if (z3) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z3) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            if ((i & 4) == 0) {
                z = false;
            }
            if (z) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (!z && !z2 && !z3) {
                spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
            }
        }
    }

    private static void a(boolean z) throws SubtitleDecoderException {
        if (!z) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    private static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    @Override // com.google.android.exoplayer2.text.c
    public final e a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        char c2;
        this.f21853a.a(bArr, i);
        u uVar = this.f21853a;
        a(uVar.a() >= 2);
        int d2 = uVar.d();
        String a2 = d2 == 0 ? "" : (uVar.a() < 2 || !((c2 = (char) (((uVar.f22335a[uVar.f22336b] & 255) << 8) | (uVar.f22335a[uVar.f22336b + 1] & 255))) == 65279 || c2 == 65534)) ? uVar.a(d2, d.f31920c) : uVar.a(d2, d.f);
        if (a2.isEmpty()) {
            return b.f21857a;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(a2);
        a(spannableStringBuilder, this.f21855c, 0, 0, spannableStringBuilder.length(), 16711680);
        b(spannableStringBuilder, this.f21856d, -1, 0, spannableStringBuilder.length(), 16711680);
        String str = this.e;
        int length = spannableStringBuilder.length();
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f = this.f;
        while (this.f21853a.a() >= 8) {
            int i2 = this.f21853a.f22336b;
            int j = this.f21853a.j();
            int j2 = this.f21853a.j();
            if (j2 == 1937013100) {
                a(this.f21853a.a() >= 2);
                int d3 = this.f21853a.d();
                int i3 = 0;
                while (true) {
                    f = f;
                    if (i3 < d3) {
                        u uVar2 = this.f21853a;
                        a(uVar2.a() >= 12);
                        int d4 = uVar2.d();
                        int d5 = uVar2.d();
                        uVar2.e(2);
                        int c3 = uVar2.c();
                        uVar2.e(1);
                        int j3 = uVar2.j();
                        if (d5 > spannableStringBuilder.length()) {
                            n.a("Tx3gDecoder", "Truncating styl end (" + d5 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
                            d5 = spannableStringBuilder.length();
                        }
                        if (d4 >= d5) {
                            n.a("Tx3gDecoder", "Ignoring styl with start (" + d4 + ") >= end (" + d5 + ").");
                        } else {
                            a(spannableStringBuilder, c3, this.f21855c, d4, d5, 0);
                            b(spannableStringBuilder, j3, this.f21856d, d4, d5, 0);
                        }
                        i3++;
                    }
                }
            } else {
                f = f;
                if (j2 == 1952608120) {
                    f = f;
                    if (this.f21854b) {
                        a(this.f21853a.a() >= 2);
                        f = af.a(this.f21853a.d() / this.g, (float) BitmapDescriptorFactory.HUE_RED, 0.95f);
                    }
                }
            }
            this.f21853a.d(i2 + j);
        }
        b.a aVar = new b.a();
        aVar.f21738a = spannableStringBuilder;
        b.a a3 = aVar.a(f, 0);
        a3.f21741d = 0;
        return new b(a3.a());
    }
}
