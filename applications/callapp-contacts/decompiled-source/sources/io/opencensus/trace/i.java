package io.opencensus.trace;

import io.objectbox.model.PropertyFlags;
import io.opencensus.b.b;
import java.util.Arrays;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/i.class */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f36312a;

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f36313b;

    static {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | PropertyFlags.INDEX_PARTIAL_SKIP_NULL] = "0123456789abcdef".charAt(i & 15);
        }
        f36312a = cArr;
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i2 = 0; i2 < 16; i2++) {
            bArr["0123456789abcdef".charAt(i2)] = (byte) i2;
        }
        f36313b = bArr;
    }

    private i() {
    }

    private static void a(byte b2, char[] cArr, int i) {
        int i2 = b2 & 255;
        char[] cArr2 = f36312a;
        cArr[i] = cArr2[i2];
        cArr[i + 1] = cArr2[i2 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(long j, byte[] bArr) {
        b.a(true, (Object) "array too small");
        bArr[7] = (byte) (j & 255);
        bArr[6] = (byte) ((j >> 8) & 255);
        bArr[5] = (byte) ((j >> 16) & 255);
        bArr[4] = (byte) ((j >> 24) & 255);
        bArr[3] = (byte) ((j >> 32) & 255);
        bArr[2] = (byte) ((j >> 40) & 255);
        bArr[1] = (byte) ((j >> 48) & 255);
        bArr[0] = (byte) ((j >> 56) & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(long j, char[] cArr, int i) {
        a((byte) ((j >> 56) & 255), cArr, i);
        a((byte) ((j >> 48) & 255), cArr, i + 2);
        a((byte) ((j >> 40) & 255), cArr, i + 4);
        a((byte) ((j >> 32) & 255), cArr, i + 6);
        a((byte) ((j >> 24) & 255), cArr, i + 8);
        a((byte) ((j >> 16) & 255), cArr, i + 10);
        a((byte) ((j >> 8) & 255), cArr, i + 12);
        a((byte) (j & 255), cArr, i + 14);
    }
}
