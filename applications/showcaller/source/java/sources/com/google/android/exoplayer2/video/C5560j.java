package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C5531s;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.video.j */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/j.class */
public final class C5560j {

    /* renamed from: a */
    public final List<byte[]> f18057a;

    /* renamed from: b */
    public final int f18058b;

    private C5560j(List<byte[]> list, int i) {
        this.f18057a = list;
        this.f18058b = i;
    }

    /* renamed from: a */
    public static C5560j m18555a(C5536v c5536v) {
        try {
            c5536v.m18679N(21);
            int m18653z = c5536v.m18653z();
            int m18653z2 = c5536v.m18653z();
            int m18676c = c5536v.m18676c();
            int i = 0;
            for (int i2 = 0; i2 < m18653z2; i2++) {
                c5536v.m18679N(1);
                int m18687F = c5536v.m18687F();
                for (int i3 = 0; i3 < m18687F; i3++) {
                    int m18687F2 = c5536v.m18687F();
                    i += m18687F2 + 4;
                    c5536v.m18679N(m18687F2);
                }
            }
            c5536v.m18680M(m18676c);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < m18653z2; i5++) {
                c5536v.m18679N(1);
                int m18687F3 = c5536v.m18687F();
                for (int i6 = 0; i6 < m18687F3; i6++) {
                    int m18687F4 = c5536v.m18687F();
                    byte[] bArr2 = C5531s.f17917a;
                    System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
                    int length = i4 + bArr2.length;
                    System.arraycopy(c5536v.f17941a, c5536v.m18676c(), bArr, length, m18687F4);
                    i4 = length + m18687F4;
                    c5536v.m18679N(m18687F4);
                }
            }
            return new C5560j(i == 0 ? null : Collections.singletonList(bArr), (m18653z & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing HEVC config", e);
        }
    }
}
