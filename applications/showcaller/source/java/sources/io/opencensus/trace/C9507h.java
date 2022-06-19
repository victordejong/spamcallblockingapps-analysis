package io.opencensus.trace;

import java.util.Arrays;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.h */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/h.class */
final class C9507h {

    /* renamed from: a */
    private static final char[] f40444a = m444b();

    /* renamed from: b */
    private static final byte[] f40445b = m445a();

    /* renamed from: a */
    private static byte[] m445a() {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < 16; i++) {
            bArr["0123456789abcdef".charAt(i)] = (byte) i;
        }
        return bArr;
    }

    /* renamed from: b */
    private static char[] m444b() {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | 256] = "0123456789abcdef".charAt(i & 15);
        }
        return cArr;
    }

    /* renamed from: c */
    private static void m443c(byte b, char[] cArr, int i) {
        int i2 = b & 255;
        char[] cArr2 = f40444a;
        cArr[i] = cArr2[i2];
        cArr[i + 1] = cArr2[i2 | 256];
    }

    /* renamed from: d */
    public static void m442d(long j, char[] cArr, int i) {
        m443c((byte) ((j >> 56) & 255), cArr, i);
        m443c((byte) ((j >> 48) & 255), cArr, i + 2);
        m443c((byte) ((j >> 40) & 255), cArr, i + 4);
        m443c((byte) ((j >> 32) & 255), cArr, i + 6);
        m443c((byte) ((j >> 24) & 255), cArr, i + 8);
        m443c((byte) ((j >> 16) & 255), cArr, i + 10);
        m443c((byte) ((j >> 8) & 255), cArr, i + 12);
        m443c((byte) (j & 255), cArr, i + 14);
    }

    /* renamed from: e */
    public static void m441e(long j, byte[] bArr, int i) {
        C9475b.m513a(bArr.length >= i + 8, "array too small");
        bArr[i + 7] = (byte) (j & 255);
        bArr[i + 6] = (byte) ((j >> 8) & 255);
        bArr[i + 5] = (byte) ((j >> 16) & 255);
        bArr[i + 4] = (byte) ((j >> 24) & 255);
        bArr[i + 3] = (byte) ((j >> 32) & 255);
        bArr[i + 2] = (byte) ((j >> 40) & 255);
        bArr[i + 1] = (byte) ((j >> 48) & 255);
        bArr[i] = (byte) ((j >> 56) & 255);
    }
}
