package io.opencensus.trace;

import io.objectbox.model.PropertyFlags;
import io.opencensus.p507b.C17993b;
import java.util.Arrays;
/* renamed from: io.opencensus.trace.i */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/i.class */
final class C18022i {

    /* renamed from: a */
    private static final char[] f62931a;

    /* renamed from: b */
    private static final byte[] f62932b;

    static {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | PropertyFlags.INDEX_PARTIAL_SKIP_NULL] = "0123456789abcdef".charAt(i & 15);
        }
        f62931a = cArr;
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i2 = 0; i2 < 16; i2++) {
            bArr["0123456789abcdef".charAt(i2)] = (byte) i2;
        }
        f62932b = bArr;
    }

    private C18022i() {
    }

    /* renamed from: a */
    private static void m4551a(byte b, char[] cArr, int i) {
        int i2 = b & 255;
        char[] cArr2 = f62931a;
        cArr[i] = cArr2[i2];
        cArr[i + 1] = cArr2[i2 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
    }

    /* renamed from: a */
    public static void m4550a(long j, byte[] bArr) {
        C17993b.m4561a(true, (Object) "array too small");
        bArr[7] = (byte) (j & 255);
        bArr[6] = (byte) ((j >> 8) & 255);
        bArr[5] = (byte) ((j >> 16) & 255);
        bArr[4] = (byte) ((j >> 24) & 255);
        bArr[3] = (byte) ((j >> 32) & 255);
        bArr[2] = (byte) ((j >> 40) & 255);
        bArr[1] = (byte) ((j >> 48) & 255);
        bArr[0] = (byte) ((j >> 56) & 255);
    }

    /* renamed from: a */
    public static void m4549a(long j, char[] cArr, int i) {
        m4551a((byte) ((j >> 56) & 255), cArr, i);
        m4551a((byte) ((j >> 48) & 255), cArr, i + 2);
        m4551a((byte) ((j >> 40) & 255), cArr, i + 4);
        m4551a((byte) ((j >> 32) & 255), cArr, i + 6);
        m4551a((byte) ((j >> 24) & 255), cArr, i + 8);
        m4551a((byte) ((j >> 16) & 255), cArr, i + 10);
        m4551a((byte) ((j >> 8) & 255), cArr, i + 12);
        m4551a((byte) (j & 255), cArr, i + 14);
    }
}
