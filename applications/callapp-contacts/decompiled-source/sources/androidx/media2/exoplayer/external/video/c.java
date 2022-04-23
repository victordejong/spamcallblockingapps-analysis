package androidx.media2.exoplayer.external.video;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.n;
import androidx.media2.exoplayer.external.util.p;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f4220a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4221b;

    private c(List<byte[]> list, int i) {
        this.f4220a = list;
        this.f4221b = i;
    }

    public static c a(p pVar) throws ParserException {
        try {
            pVar.d(21);
            int c2 = pVar.c();
            int c3 = pVar.c();
            int i = pVar.f4167b;
            int i2 = 0;
            for (int i3 = 0; i3 < c3; i3++) {
                pVar.d(1);
                int d2 = pVar.d();
                for (int i4 = 0; i4 < d2; i4++) {
                    int d3 = pVar.d();
                    i2 += d3 + 4;
                    pVar.d(d3);
                }
            }
            pVar.c(i);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            for (int i6 = 0; i6 < c3; i6++) {
                pVar.d(1);
                int d4 = pVar.d();
                for (int i7 = 0; i7 < d4; i7++) {
                    int d5 = pVar.d();
                    System.arraycopy(n.f4151a, 0, bArr, i5, n.f4151a.length);
                    int length = i5 + n.f4151a.length;
                    System.arraycopy(pVar.f4166a, pVar.f4167b, bArr, length, d5);
                    i5 = length + d5;
                    pVar.d(d5);
                }
            }
            return new c(i2 == 0 ? null : Collections.singletonList(bArr), (c2 & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing HEVC config", e);
        }
    }
}
