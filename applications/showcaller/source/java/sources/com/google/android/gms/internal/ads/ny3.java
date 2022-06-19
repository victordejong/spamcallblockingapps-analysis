package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ny3.class */
public final class ny3 {
    /* renamed from: a */
    public static Pair<ByteBuffer, Long> m12785a(RandomAccessFile randomAccessFile) {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> m12781e = m12781e(randomAccessFile, 0);
        return m12781e != null ? m12781e : m12781e(randomAccessFile, 65535);
    }

    /* renamed from: b */
    public static long m12784b(ByteBuffer byteBuffer) {
        m12780f(byteBuffer);
        return m12779g(byteBuffer, byteBuffer.position() + 16);
    }

    /* renamed from: c */
    public static void m12783c(ByteBuffer byteBuffer, long j) {
        m12780f(byteBuffer);
        int position = byteBuffer.position();
        if (j >= 0 && j <= 4294967295L) {
            byteBuffer.putInt(byteBuffer.position() + position + 16, (int) j);
            return;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("uint32 value of out range: ");
        sb.append(j);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: d */
    public static long m12782d(ByteBuffer byteBuffer) {
        m12780f(byteBuffer);
        return m12779g(byteBuffer, byteBuffer.position() + 12);
    }

    /* renamed from: e */
    private static Pair<ByteBuffer, Long> m12781e(RandomAccessFile randomAccessFile, int i) {
        int i2;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, (-22) + length)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        m12780f(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i3 = capacity2 - 22;
            int min = Math.min(i3, 65535);
            for (int i4 = 0; i4 < min; i4++) {
                int i5 = i3 - i4;
                if (allocate.getInt(i5) == 101010256 && ((char) allocate.getShort(i5 + 20)) == i4) {
                    i2 = i5;
                    break;
                }
            }
        }
        i2 = -1;
        if (i2 == -1) {
            return null;
        }
        allocate.position(i2);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(slice, Long.valueOf(capacity + i2));
    }

    /* renamed from: f */
    private static void m12780f(ByteBuffer byteBuffer) {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            return;
        }
        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }

    /* renamed from: g */
    private static long m12779g(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }
}
