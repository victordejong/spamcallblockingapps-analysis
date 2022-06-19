package com.google.android.exoplayer2.extractor.p330d;

import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.d.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/e.class */
final class C11009e {

    /* renamed from: a */
    final C11628u f35729a = new C11628u(8);

    /* renamed from: b */
    int f35730b;

    /* renamed from: a */
    public final long m21713a(AbstractC11121i abstractC11121i) throws IOException {
        abstractC11121i.mo21394d(this.f35729a.f38733a, 0, 1);
        int i = this.f35729a.f38733a[0] & 255;
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
        abstractC11121i.mo21394d(this.f35729a.f38733a, 1, i3);
        int i5 = 0;
        int i6 = i4;
        while (true) {
            int i7 = i6;
            if (i5 >= i3) {
                this.f35730b += i3 + 1;
                return i7;
            }
            i5++;
            i6 = (this.f35729a.f38733a[i5] & 255) + (i7 << 8);
        }
    }
}
