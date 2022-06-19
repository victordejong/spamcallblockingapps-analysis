package androidx.media2.exoplayer.external.extractor.p065b;

import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.b.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/f.class */
final class C1501f {

    /* renamed from: a */
    final C2018p f5776a = new C2018p(8);

    /* renamed from: b */
    int f5777b;

    /* renamed from: a */
    public final long m42791a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        abstractC1600h.mo42601c(this.f5776a.f8131a, 0, 1);
        int i = this.f5776a.f8131a[0] & 255;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int i2 = 128;
        int i3 = 0;
        while ((i & i2) == 0) {
            i2 >>= 1;
            i3++;
        }
        int i4 = i & (i2 ^ (-1));
        abstractC1600h.mo42601c(this.f5776a.f8131a, 1, i3);
        int i5 = 0;
        int i6 = i4;
        while (true) {
            int i7 = i6;
            if (i5 >= i3) {
                this.f5777b += i3 + 1;
                return i7;
            }
            i5++;
            i6 = (this.f5776a.f8131a[i5] & 255) + (i7 << 8);
        }
    }
}
