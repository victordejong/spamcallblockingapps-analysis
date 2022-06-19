package com.google.android.gms.internal.ads;

import io.realm.internal.OsCollectionChangeSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyc.class */
public final class zzdyc {
    private static final OutputStream zzhyt = new zzdyf();

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        zzdwl.checkNotNull(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 8192;
        int i2 = 0;
        while (i2 < 2147483639) {
            int min = Math.min(i, OsCollectionChangeSet.MAX_ARRAY_LENGTH - i2);
            byte[] bArr = new byte[min];
            arrayDeque.add(bArr);
            int i3 = 0;
            while (i3 < min) {
                int read = inputStream.read(bArr, i3, min - i3);
                if (read == -1) {
                    return zza(arrayDeque, i2);
                }
                i3 += read;
                i2 += read;
            }
            i = zzdyh.zzy(i, 2);
        }
        if (inputStream.read() == -1) {
            return zza(arrayDeque, OsCollectionChangeSet.MAX_ARRAY_LENGTH);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    private static byte[] zza(Queue<byte[]> queue, int i) {
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
