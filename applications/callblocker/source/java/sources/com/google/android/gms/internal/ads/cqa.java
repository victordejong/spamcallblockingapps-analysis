package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqa.class */
public final class cqa {

    /* renamed from: a */
    private static final OutputStream f13529a = new cpz();

    /* renamed from: a */
    public static byte[] m10857a(InputStream inputStream) {
        byte[] m10856a;
        cor.m10936a(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 8192;
        int i2 = 0;
        loop0: while (true) {
            if (i2 < 2147483639) {
                byte[] bArr = new byte[Math.min(i, 2147483639 - i2)];
                arrayDeque.add(bArr);
                int i3 = 0;
                while (i3 < bArr.length) {
                    int read = inputStream.read(bArr, i3, bArr.length - i3);
                    if (read == -1) {
                        m10856a = m10856a(arrayDeque, i2);
                        break loop0;
                    }
                    i3 += read;
                    i2 += read;
                }
                i = cqb.m10855a(i, 2);
            } else if (inputStream.read() != -1) {
                throw new OutOfMemoryError("input is too large to fit in a byte array");
            } else {
                m10856a = m10856a(arrayDeque, 2147483639);
            }
        }
        return m10856a;
    }

    /* renamed from: a */
    private static byte[] m10856a(Deque<byte[]> deque, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (true) {
            int i3 = i2;
            if (i3 > 0) {
                byte[] removeFirst = deque.removeFirst();
                int min = Math.min(i3, removeFirst.length);
                System.arraycopy(removeFirst, 0, bArr, i - i3, min);
                i2 = i3 - min;
            } else {
                return bArr;
            }
        }
    }
}
