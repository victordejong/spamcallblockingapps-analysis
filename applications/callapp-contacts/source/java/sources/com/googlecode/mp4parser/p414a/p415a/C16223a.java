package com.googlecode.mp4parser.p414a.p415a;

import com.googlecode.mp4parser.p414a.AbstractC16244g;
import com.googlecode.mp4parser.p425c.C16290i;
import java.util.Arrays;
/* renamed from: com.googlecode.mp4parser.a.a.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/a/a.class */
public final class C16223a implements AbstractC16228c {

    /* renamed from: a */
    private double f57240a;

    public C16223a(double d) {
        this.f57240a = d;
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.googlecode.mp4parser.p414a.p415a.AbstractC16228c
    /* renamed from: a */
    public final long[] mo7597a(AbstractC16244g abstractC16244g) {
        long[] jArr;
        int i;
        double d = abstractC16244g.mo7563m().f57318b;
        long j = (long) (this.f57240a * d);
        long[] jArr2 = new long[0];
        long[] mo7573b = abstractC16244g.mo7573b();
        long[] mo7565k = abstractC16244g.mo7565k();
        if (mo7573b != null) {
            int length = mo7573b.length;
            long[] jArr3 = new long[length];
            long mo7570e = abstractC16244g.mo7570e();
            char c = 0;
            for (int i2 = 0; i2 < mo7565k.length; i2++) {
                int binarySearch = Arrays.binarySearch(mo7573b, i2 + 1);
                if (binarySearch >= 0) {
                    jArr3[binarySearch] = c == 1 ? 1 : 0;
                }
                c += mo7565k[i2];
            }
            int i3 = 0;
            char c2 = 0;
            long[] jArr4 = jArr2;
            while (true) {
                i = length - 1;
                if (i3 >= i) {
                    break;
                }
                long j2 = jArr3[i3];
                int i4 = i3 + 1;
                long j3 = jArr3[i4];
                long[] jArr5 = jArr4;
                char c3 = c2;
                if (c2 <= j3) {
                    jArr5 = jArr4;
                    c3 = c2;
                    if (Math.abs(j2 - c2) < Math.abs(j3 - c2)) {
                        jArr5 = C16290i.m7506a(jArr4, mo7573b[i3]);
                        c3 = jArr3[i3] + j;
                    }
                }
                i3 = i4;
                jArr4 = jArr5;
                c2 = c3;
            }
            jArr = jArr4;
            if (mo7570e - jArr3[i] > j / 2) {
                jArr = C16290i.m7506a(jArr4, mo7573b[i]);
            }
        } else {
            long[] jArr6 = {1};
            char c4 = 0;
            int i5 = 1;
            while (i5 < mo7565k.length) {
                ?? r0 = c4 + (mo7565k[i5] / d);
                long[] jArr7 = jArr6;
                char c5 = r0;
                if (r0 >= this.f57240a) {
                    jArr7 = jArr6;
                    if (i5 > 0) {
                        jArr7 = C16290i.m7506a(jArr6, i5 + 1);
                    }
                    c5 = 0;
                }
                i5++;
                jArr6 = jArr7;
                c4 = c5;
            }
            if (c4 < this.f57240a && jArr6.length > 1) {
                jArr6[jArr6.length - 1] = jArr6[jArr6.length - 2] + (((mo7565k.length + 1) - jArr6[jArr6.length - 2]) / 2);
            }
            jArr = jArr6;
        }
        return jArr;
    }
}
