package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.extractor.d.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/e.class */
final class C1520e {

    /* renamed from: a */
    final C1521f f5852a = new C1521f();

    /* renamed from: b */
    final C2018p f5853b = new C2018p(new byte[65025], 0);

    /* renamed from: c */
    int f5854c = -1;

    /* renamed from: d */
    boolean f5855d;

    /* renamed from: e */
    private int f5856e;

    /* renamed from: a */
    private int m42760a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f5856e = 0;
        do {
            i2 = i4;
            if (this.f5856e + i >= this.f5852a.f5863g) {
                break;
            }
            int[] iArr = this.f5852a.f5866j;
            int i5 = this.f5856e;
            this.f5856e = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: a */
    public final boolean m42759a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        int i;
        C1993a.m41686b(abstractC1600h != null);
        if (this.f5855d) {
            this.f5855d = false;
            this.f5853b.m41542a();
        }
        while (!this.f5855d) {
            if (this.f5854c < 0) {
                if (!this.f5852a.m42757a(abstractC1600h, true)) {
                    return false;
                }
                int i2 = this.f5852a.f5864h;
                if ((this.f5852a.f5858b & 1) == 1 && this.f5853b.f8133c == 0) {
                    i2 += m42760a(0);
                    i = this.f5856e + 0;
                } else {
                    i = 0;
                }
                abstractC1600h.mo42606b(i2);
                this.f5854c = i;
            }
            int m42760a = m42760a(this.f5854c);
            int i3 = this.f5854c + this.f5856e;
            if (m42760a > 0) {
                if (this.f5853b.f8131a.length < this.f5853b.f8133c + m42760a) {
                    C2018p c2018p = this.f5853b;
                    c2018p.f8131a = Arrays.copyOf(c2018p.f8131a, this.f5853b.f8133c + m42760a);
                }
                abstractC1600h.mo42605b(this.f5853b.f8131a, this.f5853b.f8133c, m42760a);
                C2018p c2018p2 = this.f5853b;
                c2018p2.m41535b(c2018p2.f8133c + m42760a);
                this.f5855d = this.f5852a.f5866j[i3 - 1] != 255;
            }
            int i4 = i3;
            if (i3 == this.f5852a.f5863g) {
                i4 = -1;
            }
            this.f5854c = i4;
        }
        return true;
    }
}
