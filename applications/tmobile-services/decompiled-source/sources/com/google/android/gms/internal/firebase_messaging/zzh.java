package com.google.android.gms.internal.firebase_messaging;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzh.class */
public final class zzh {
    static {
        new zzg();
    }

    /* renamed from: a */
    public static InputStream m14080a(InputStream inputStream, long j) {
        return new zzj(inputStream, 1048577L);
    }

    /* renamed from: b */
    public static byte[] m14079b(InputStream inputStream) throws IOException {
        zze.m14081a(inputStream);
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
                    return m14078c(arrayDeque, i2);
                }
                i3 += read;
                i2 += read;
            }
            i = zzl.m14074a(i, 2);
        }
        if (inputStream.read() == -1) {
            return m14078c(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* renamed from: c */
    private static byte[] m14078c(Queue<byte[]> queue, int i) {
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
