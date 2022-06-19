package com.google.android.gms.internal.firebase_messaging;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzj.class */
public final class zzj {
    private static final OutputStream zza = new zzi();

    public static InputStream zza(InputStream inputStream, long j) {
        return new zzl(inputStream, 1048577L);
    }

    public static byte[] zza(InputStream inputStream) {
        zzg.zza(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 8192;
        int i2 = 0;
        while (i2 < 2147483639) {
            byte[] bArr = new byte[Math.min(i, 2147483639 - i2)];
            arrayDeque.add(bArr);
            int i3 = 0;
            while (i3 < bArr.length) {
                int read = inputStream.read(bArr, i3, bArr.length - i3);
                if (read == -1) {
                    return zza(arrayDeque, i2);
                }
                i3 += read;
                i2 += read;
            }
            i = zzn.zza(i, 2);
        }
        if (inputStream.read() == -1) {
            return zza(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    private static byte[] zza(Deque<byte[]> deque, int i) {
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
