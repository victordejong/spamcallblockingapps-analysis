package com.google.android.gms.internal.ads;

import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czw.class */
public final class czw {

    /* renamed from: a  reason: collision with root package name */
    private static final OutputStream f26625a = new dab();

    public static byte[] a(InputStream inputStream) throws IOException {
        cyg.a(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = PropertyFlags.UNSIGNED;
        int i2 = 0;
        while (i2 < 2147483639) {
            int min = Math.min(i, 2147483639 - i2);
            byte[] bArr = new byte[min];
            arrayDeque.add(bArr);
            int i3 = 0;
            while (i3 < min) {
                int read = inputStream.read(bArr, i3, min - i3);
                if (read == -1) {
                    return a(arrayDeque, i2);
                }
                i3 += read;
                i2 += read;
            }
            i = dad.a(i);
        }
        if (inputStream.read() == -1) {
            return a(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    private static byte[] a(Queue<byte[]> queue, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            byte[] remove = queue.remove();
            int min = Math.min(i2, remove.length);
            System.arraycopy(remove, 0, bArr, i - i2, min);
            i2 -= min;
        }
        return bArr;
    }
}
