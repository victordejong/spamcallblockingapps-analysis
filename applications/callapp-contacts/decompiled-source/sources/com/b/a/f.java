package com.b.a;

import java.nio.ByteBuffer;
import okhttp3.internal.http2.Settings;
/* loaded from: classes-dex2jar.jar:com/b/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f7170a = true;

    public static void a(ByteBuffer byteBuffer, double d2) {
        int i = (int) (d2 * 65536.0d);
        byteBuffer.put((byte) (((-16777216) & i) >> 24));
        byteBuffer.put((byte) ((16711680 & i) >> 16));
        byteBuffer.put((byte) ((65280 & i) >> 8));
        byteBuffer.put((byte) (i & 255));
    }

    public static void a(ByteBuffer byteBuffer, int i) {
        int i2 = i & 16777215;
        b(byteBuffer, i2 >> 8);
        c(byteBuffer, i2);
    }

    public static void a(ByteBuffer byteBuffer, long j) {
        if (f7170a || j >= 0) {
            byteBuffer.putLong(j);
            return;
        }
        throw new AssertionError("The given long is negative");
    }

    public static void a(ByteBuffer byteBuffer, String str) {
        if (str.getBytes().length == 3) {
            int i = 0;
            for (int i2 = 0; i2 < 3; i2++) {
                i += (str.getBytes()[i2] - 96) << ((2 - i2) * 5);
            }
            b(byteBuffer, i);
            return;
        }
        throw new IllegalArgumentException("\"" + str + "\" language string isn't exactly 3 characters long!");
    }

    public static void b(ByteBuffer byteBuffer, double d2) {
        int i = (int) (d2 * 1.073741824E9d);
        byteBuffer.put((byte) (((-16777216) & i) >> 24));
        byteBuffer.put((byte) ((16711680 & i) >> 16));
        byteBuffer.put((byte) ((65280 & i) >> 8));
        byteBuffer.put((byte) (i & 255));
    }

    public static void b(ByteBuffer byteBuffer, int i) {
        int i2 = i & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        c(byteBuffer, i2 >> 8);
        c(byteBuffer, i2 & 255);
    }

    public static void b(ByteBuffer byteBuffer, long j) {
        if (f7170a || (j >= 0 && j <= 4294967296L)) {
            byteBuffer.putInt((int) j);
            return;
        }
        throw new AssertionError("The given long is not in the range of uint32 (" + j + ")");
    }

    public static void b(ByteBuffer byteBuffer, String str) {
        byteBuffer.put(h.a(str));
        c(byteBuffer, 0);
    }

    public static void c(ByteBuffer byteBuffer, double d2) {
        short s = (short) (d2 * 256.0d);
        byteBuffer.put((byte) ((65280 & s) >> 8));
        byteBuffer.put((byte) (s & 255));
    }

    public static void c(ByteBuffer byteBuffer, int i) {
        byteBuffer.put((byte) (i & 255));
    }

    public static void c(ByteBuffer byteBuffer, long j) {
        long j2 = j & 281474976710655L;
        b(byteBuffer, (int) (j2 >> 32));
        b(byteBuffer, j2 & 4294967295L);
    }
}
