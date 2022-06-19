package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.Queue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/my2.class */
public final class my2 {

    /* renamed from: a */
    private static final OutputStream f26913a = new ly2();

    /* renamed from: a */
    public static byte[] m13059a(InputStream inputStream) {
        byte[] m13058b;
        Objects.requireNonNull(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 8192;
        int i2 = 0;
        loop0: while (true) {
            if (i2 < 2147483639) {
                int min = Math.min(i, 2147483639 - i2);
                byte[] bArr = new byte[min];
                arrayDeque.add(bArr);
                int i3 = 0;
                while (i3 < min) {
                    int read = inputStream.read(bArr, i3, min - i3);
                    if (read == -1) {
                        m13058b = m13058b(arrayDeque, i2);
                        break loop0;
                    }
                    i3 += read;
                    i2 += read;
                }
                long j = i;
                long j2 = j + j;
                i = j2 > 2147483647L ? Integer.MAX_VALUE : j2 < -2147483648L ? Integer.MIN_VALUE : (int) j2;
            } else if (inputStream.read() != -1) {
                throw new OutOfMemoryError("input is too large to fit in a byte array");
            } else {
                m13058b = m13058b(arrayDeque, 2147483639);
            }
        }
        return m13058b;
    }

    /* renamed from: b */
    private static byte[] m13058b(Queue<byte[]> queue, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (true) {
            int i3 = i2;
            if (i3 > 0) {
                byte[] remove = queue.remove();
                int min = Math.min(i3, remove.length);
                System.arraycopy(remove, 0, bArr, i - i3, min);
                i2 = i3 - min;
            } else {
                return bArr;
            }
        }
    }
}
