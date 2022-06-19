package com.google.android.gms.internal.p358d;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.android.gms.internal.d.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/g.class */
public final class C13273g {

    /* renamed from: a */
    private static final OutputStream f50529a = new C13271e();

    /* renamed from: a */
    public static byte[] m13509a(InputStream inputStream) throws IOException {
        byte[] m13508a;
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
                        m13508a = m13508a(arrayDeque, i2);
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
                m13508a = m13508a(arrayDeque, 2147483639);
            }
        }
        return m13508a;
    }

    /* renamed from: a */
    private static byte[] m13508a(Queue<byte[]> queue, int i) {
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

    /* renamed from: b */
    public static InputStream m13507b(InputStream inputStream) {
        return new C13272f(inputStream, 1048577L);
    }
}
