package com.google.android.exoplayer2.extractor.d;

import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/e.class */
final class e {

    /* renamed from: a  reason: collision with root package name */
    final u f20981a = new u(8);

    /* renamed from: b  reason: collision with root package name */
    int f20982b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a(i iVar) throws IOException {
        int i = 0;
        iVar.d(this.f20981a.f22335a, 0, 1);
        int i2 = this.f20981a.f22335a[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        iVar.d(this.f20981a.f22335a, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f20981a.f22335a[i] & 255) + (i5 << 8);
        }
        this.f20982b += i4 + 1;
        return i5;
    }
}
