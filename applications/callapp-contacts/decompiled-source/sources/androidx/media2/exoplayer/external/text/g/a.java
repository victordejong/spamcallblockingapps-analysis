package androidx.media2.exoplayer.external.text.g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.b;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.p;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.charset.Charset;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/g/a.class */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private final p f3903a = new p();

    /* renamed from: b  reason: collision with root package name */
    private boolean f3904b;

    /* renamed from: c  reason: collision with root package name */
    private int f3905c;

    /* renamed from: d  reason: collision with root package name */
    private int f3906d;
    private String e;
    private float f;
    private int g;

    public a(List<byte[]> list) {
        super("Tx3gDecoder");
        String str = "sans-serif";
        boolean z = false;
        if (list != null && list.size() == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
            byte[] bArr = list.get(0);
            this.f3905c = bArr[24];
            this.f3906d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            this.e = "Serif".equals(ac.a(bArr, 43, bArr.length - 43)) ? "serif" : str;
            int i = bArr[25] * 20;
            this.g = i;
            z = (bArr[0] & 32) != 0 ? true : z;
            this.f3904b = z;
            if (z) {
                float f = ((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i;
                this.f = f;
                this.f = ac.a(f, (float) BitmapDescriptorFactory.HUE_RED, 0.95f);
                return;
            }
            this.f = 0.85f;
            return;
        }
        this.f3905c = 0;
        this.f3906d = -1;
        this.e = "sans-serif";
        this.f3904b = false;
        this.f = 0.85f;
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

    @Override // androidx.media2.exoplayer.external.text.b
    public final d a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        char c2;
        this.f3903a.a(bArr, i);
        p pVar = this.f3903a;
        a(pVar.b() >= 2);
        int d2 = pVar.d();
        String a2 = d2 == 0 ? "" : (pVar.b() < 2 || !((c2 = (char) (((pVar.f4166a[pVar.f4167b] & 255) << 8) | (pVar.f4166a[pVar.f4167b + 1] & 255))) == 65279 || c2 == 65534)) ? pVar.a(d2, Charset.forName("UTF-8")) : pVar.a(d2, Charset.forName("UTF-16"));
        if (a2.isEmpty()) {
            return b.f3907a;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(a2);
        a(spannableStringBuilder, this.f3905c, 0, 0, spannableStringBuilder.length(), 16711680);
        b(spannableStringBuilder, this.f3906d, -1, 0, spannableStringBuilder.length(), 16711680);
        String str = this.e;
        int length = spannableStringBuilder.length();
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f = this.f;
        while (this.f3903a.b() >= 8) {
            int i2 = this.f3903a.f4167b;
            int i3 = this.f3903a.i();
            int i4 = this.f3903a.i();
            if (i4 == 1937013100) {
                a(this.f3903a.b() >= 2);
                int d3 = this.f3903a.d();
                int i5 = 0;
                while (true) {
                    f = f;
                    if (i5 < d3) {
                        p pVar2 = this.f3903a;
                        a(pVar2.b() >= 12);
                        int d4 = pVar2.d();
                        int d5 = pVar2.d();
                        pVar2.d(2);
                        int c3 = pVar2.c();
                        pVar2.d(1);
                        int i6 = pVar2.i();
                        a(spannableStringBuilder, c3, this.f3905c, d4, d5, 0);
                        b(spannableStringBuilder, i6, this.f3906d, d4, d5, 0);
                        i5++;
                    }
                }
            } else {
                f = f;
                if (i4 == 1952608120) {
                    f = f;
                    if (this.f3904b) {
                        a(this.f3903a.b() >= 2);
                        f = ac.a(this.f3903a.d() / this.g, (float) BitmapDescriptorFactory.HUE_RED, 0.95f);
                    }
                }
            }
            this.f3903a.c(i2 + i3);
        }
        return new b(new androidx.media2.exoplayer.external.text.a(spannableStringBuilder, null, f, 0, 0, Float.MIN_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Float.MIN_VALUE));
    }
}
