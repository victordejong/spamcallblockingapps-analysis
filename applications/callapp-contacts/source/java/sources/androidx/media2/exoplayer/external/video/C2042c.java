package androidx.media2.exoplayer.external.video;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.video.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/c.class */
public final class C2042c {

    /* renamed from: a */
    public final List<byte[]> f8234a;

    /* renamed from: b */
    public final int f8235b;

    private C2042c(List<byte[]> list, int i) {
        this.f8234a = list;
        this.f8235b = i;
    }

    /* renamed from: a */
    public static C2042c m41428a(C2018p c2018p) throws ParserException {
        try {
            c2018p.m41531d(21);
            int m41534c = c2018p.m41534c();
            int m41534c2 = c2018p.m41534c();
            int i = c2018p.f8132b;
            int i2 = 0;
            for (int i3 = 0; i3 < m41534c2; i3++) {
                c2018p.m41531d(1);
                int m41532d = c2018p.m41532d();
                for (int i4 = 0; i4 < m41532d; i4++) {
                    int m41532d2 = c2018p.m41532d();
                    i2 += m41532d2 + 4;
                    c2018p.m41531d(m41532d2);
                }
            }
            c2018p.m41533c(i);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            for (int i6 = 0; i6 < m41534c2; i6++) {
                c2018p.m41531d(1);
                int m41532d3 = c2018p.m41532d();
                for (int i7 = 0; i7 < m41532d3; i7++) {
                    int m41532d4 = c2018p.m41532d();
                    System.arraycopy(C2014n.f8107a, 0, bArr, i5, C2014n.f8107a.length);
                    int length = i5 + C2014n.f8107a.length;
                    System.arraycopy(c2018p.f8131a, c2018p.f8132b, bArr, length, m41532d4);
                    i5 = length + m41532d4;
                    c2018p.m41531d(m41532d4);
                }
            }
            return new C2042c(i2 == 0 ? null : Collections.singletonList(bArr), (m41534c & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing HEVC config", e);
        }
    }
}
