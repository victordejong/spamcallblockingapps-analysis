package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C11604d;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import com.google.android.exoplayer2.util.C11629v;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.video.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/d.class */
public final class C11651d {

    /* renamed from: a */
    public final List<byte[]> f38815a;

    /* renamed from: b */
    public final int f38816b;

    /* renamed from: c */
    public final String f38817c;

    private C11651d(List<byte[]> list, int i, String str) {
        this.f38815a = list;
        this.f38816b = i;
        this.f38817c = str;
    }

    /* renamed from: a */
    public static C11651d m19732a(C11628u c11628u) throws ParserException {
        try {
            c11628u.m19799e(21);
            int m19804c = c11628u.m19804c();
            int m19804c2 = c11628u.m19804c();
            int i = c11628u.f38734b;
            int i2 = 0;
            for (int i3 = 0; i3 < m19804c2; i3++) {
                c11628u.m19799e(1);
                int m19802d = c11628u.m19802d();
                for (int i4 = 0; i4 < m19802d; i4++) {
                    int m19802d2 = c11628u.m19802d();
                    i2 += m19802d2 + 4;
                    c11628u.m19799e(m19802d2);
                }
            }
            c11628u.m19801d(i);
            byte[] bArr = new byte[i2];
            String str = null;
            int i5 = 0;
            for (int i6 = 0; i6 < m19804c2; i6++) {
                int m19804c3 = c11628u.m19804c();
                int m19802d3 = c11628u.m19802d();
                int i7 = 0;
                while (i7 < m19802d3) {
                    int m19802d4 = c11628u.m19802d();
                    System.arraycopy(C11624s.f38709a, 0, bArr, i5, C11624s.f38709a.length);
                    int length = i5 + C11624s.f38709a.length;
                    System.arraycopy(c11628u.f38733a, c11628u.f38734b, bArr, length, m19802d4);
                    String str2 = str;
                    if ((m19804c3 & 127) == 33) {
                        str2 = str;
                        if (i7 == 0) {
                            str2 = C11604d.m19906a(new C11629v(bArr, length, length + m19802d4));
                        }
                    }
                    i5 = length + m19802d4;
                    c11628u.m19799e(m19802d4);
                    i7++;
                    str = str2;
                }
            }
            return new C11651d(i2 == 0 ? null : Collections.singletonList(bArr), (m19804c & 3) + 1, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing HEVC config", e);
        }
    }
}
