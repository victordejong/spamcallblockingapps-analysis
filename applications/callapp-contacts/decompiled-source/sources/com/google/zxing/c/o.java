package com.google.zxing.c;

import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.e;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/o.class */
public abstract class o implements e {
    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(boolean[] zArr, int i, int[] iArr, boolean z) {
        int i2 = 0;
        int i3 = i;
        for (int i4 : iArr) {
            int i5 = 0;
            while (i5 < i4) {
                zArr[i3] = z;
                i5++;
                i3++;
            }
            i2 += i4;
            z = !z;
        }
        return i2;
    }

    private static b a(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = i3 + length;
        int max = Math.max(i, i4);
        int max2 = Math.max(1, i2);
        int i5 = max / i4;
        int i6 = (max - (length * i5)) / 2;
        b bVar = new b(max, max2);
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                bVar.a(i6, 0, i5, max2);
            }
            i7++;
            i6 += i5;
        }
        return bVar;
    }

    public int a() {
        return 10;
    }

    @Override // com.google.zxing.e
    public b a(String str, a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i + 'x' + i2);
        } else {
            int a2 = a();
            int i3 = a2;
            if (map != null) {
                i3 = a2;
                if (map.containsKey(c.MARGIN)) {
                    i3 = Integer.parseInt(map.get(c.MARGIN).toString());
                }
            }
            return a(a(str), i, i2, i3);
        }
    }

    public abstract boolean[] a(String str);
}
