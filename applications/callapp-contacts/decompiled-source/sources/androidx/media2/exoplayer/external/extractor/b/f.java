package androidx.media2.exoplayer.external.extractor.b;

import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/f.class */
final class f {

    /* renamed from: a  reason: collision with root package name */
    final p f3049a = new p(8);

    /* renamed from: b  reason: collision with root package name */
    int f3050b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a(h hVar) throws IOException, InterruptedException {
        int i = 0;
        hVar.c(this.f3049a.f4166a, 0, 1);
        int i2 = this.f3049a.f4166a[0] & 255;
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
        hVar.c(this.f3049a.f4166a, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.f3049a.f4166a[i] & 255) + (i5 << 8);
        }
        this.f3050b += i4 + 1;
        return i5;
    }
}
