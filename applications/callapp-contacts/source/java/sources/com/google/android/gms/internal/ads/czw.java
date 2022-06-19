package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czw.class */
public final class czw {

    /* renamed from: a */
    private static final OutputStream f46823a = new dab();

    /* renamed from: a */
    public static byte[] m16992a(InputStream inputStream) throws IOException {
        cyg.m17060a(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 8192;
        int i2 = 0;
        while (i2 < 2147483639) {
            int min = Math.min(i, 2147483639 - i2);
            byte[] bArr = new byte[min];
            arrayDeque.add(bArr);
            int i3 = 0;
            while (i3 < min) {
                int read = inputStream.read(bArr, i3, min - i3);
                if (read == -1) {
                    return m16991a(arrayDeque, i2);
                }
                i3 += read;
                i2 += read;
            }
            i = dad.m16971a(i);
        }
        if (inputStream.read() == -1) {
            return m16991a(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* renamed from: a */
    private static byte[] m16991a(Queue<byte[]> queue, int i) {
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
