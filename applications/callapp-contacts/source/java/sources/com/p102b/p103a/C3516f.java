package com.p102b.p103a;

import java.nio.ByteBuffer;
import okhttp3.internal.http2.Settings;
/* renamed from: com.b.a.f */
/* loaded from: classes-dex2jar.jar:com/b/a/f.class */
public final class C3516f {

    /* renamed from: a */
    static final /* synthetic */ boolean f13383a = true;

    /* renamed from: a */
    public static void m37841a(ByteBuffer byteBuffer, double d) {
        int i = (int) (d * 65536.0d);
        byteBuffer.put((byte) (((-16777216) & i) >> 24));
        byteBuffer.put((byte) ((16711680 & i) >> 16));
        byteBuffer.put((byte) ((65280 & i) >> 8));
        byteBuffer.put((byte) (i & 255));
    }

    /* renamed from: a */
    public static void m37840a(ByteBuffer byteBuffer, int i) {
        int i2 = i & 16777215;
        m37836b(byteBuffer, i2 >> 8);
        m37832c(byteBuffer, i2);
    }

    /* renamed from: a */
    public static void m37839a(ByteBuffer byteBuffer, long j) {
        if (f13383a || j >= 0) {
            byteBuffer.putLong(j);
            return;
        }
        throw new AssertionError("The given long is negative");
    }

    /* renamed from: a */
    public static void m37838a(ByteBuffer byteBuffer, String str) {
        if (str.getBytes().length != 3) {
            throw new IllegalArgumentException("\"" + str + "\" language string isn't exactly 3 characters long!");
        }
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            i += (str.getBytes()[i2] - 96) << ((2 - i2) * 5);
        }
        m37836b(byteBuffer, i);
    }

    /* renamed from: b */
    public static void m37837b(ByteBuffer byteBuffer, double d) {
        int i = (int) (d * 1.073741824E9d);
        byteBuffer.put((byte) (((-16777216) & i) >> 24));
        byteBuffer.put((byte) ((16711680 & i) >> 16));
        byteBuffer.put((byte) ((65280 & i) >> 8));
        byteBuffer.put((byte) (i & 255));
    }

    /* renamed from: b */
    public static void m37836b(ByteBuffer byteBuffer, int i) {
        int i2 = i & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        m37832c(byteBuffer, i2 >> 8);
        m37832c(byteBuffer, i2 & 255);
    }

    /* renamed from: b */
    public static void m37835b(ByteBuffer byteBuffer, long j) {
        if (f13383a || (j >= 0 && j <= 4294967296L)) {
            byteBuffer.putInt((int) j);
            return;
        }
        throw new AssertionError("The given long is not in the range of uint32 (" + j + ")");
    }

    /* renamed from: b */
    public static void m37834b(ByteBuffer byteBuffer, String str) {
        byteBuffer.put(C3518h.m37829a(str));
        m37832c(byteBuffer, 0);
    }

    /* renamed from: c */
    public static void m37833c(ByteBuffer byteBuffer, double d) {
        short s = (short) (d * 256.0d);
        byteBuffer.put((byte) ((65280 & s) >> 8));
        byteBuffer.put((byte) (s & 255));
    }

    /* renamed from: c */
    public static void m37832c(ByteBuffer byteBuffer, int i) {
        byteBuffer.put((byte) (i & 255));
    }

    /* renamed from: c */
    public static void m37831c(ByteBuffer byteBuffer, long j) {
        long j2 = j & 281474976710655L;
        m37836b(byteBuffer, (int) (j2 >> 32));
        m37835b(byteBuffer, j2 & 4294967295L);
    }
}
