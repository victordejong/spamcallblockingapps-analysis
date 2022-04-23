package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.util.v;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f22397a;

    /* renamed from: b  reason: collision with root package name */
    public final int f22398b;

    /* renamed from: c  reason: collision with root package name */
    public final String f22399c;

    private d(List<byte[]> list, int i, String str) {
        this.f22397a = list;
        this.f22398b = i;
        this.f22399c = str;
    }

    public static d a(u uVar) throws ParserException {
        try {
            uVar.e(21);
            int c2 = uVar.c();
            int c3 = uVar.c();
            int i = uVar.f22336b;
            int i2 = 0;
            for (int i3 = 0; i3 < c3; i3++) {
                uVar.e(1);
                int d2 = uVar.d();
                for (int i4 = 0; i4 < d2; i4++) {
                    int d3 = uVar.d();
                    i2 += d3 + 4;
                    uVar.e(d3);
                }
            }
            uVar.d(i);
            byte[] bArr = new byte[i2];
            String str = null;
            int i5 = 0;
            for (int i6 = 0; i6 < c3; i6++) {
                int c4 = uVar.c();
                int d4 = uVar.d();
                int i7 = 0;
                while (i7 < d4) {
                    int d5 = uVar.d();
                    System.arraycopy(s.f22320a, 0, bArr, i5, s.f22320a.length);
                    int length = i5 + s.f22320a.length;
                    System.arraycopy(uVar.f22335a, uVar.f22336b, bArr, length, d5);
                    str = str;
                    if ((c4 & 127) == 33) {
                        str = str;
                        if (i7 == 0) {
                            str = com.google.android.exoplayer2.util.d.a(new v(bArr, length, length + d5));
                        }
                    }
                    i5 = length + d5;
                    uVar.e(d5);
                    i7++;
                }
            }
            return new d(i2 == 0 ? null : Collections.singletonList(bArr), (c2 & 3) + 1, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ParserException("Error parsing HEVC config", e);
        }
    }
}
