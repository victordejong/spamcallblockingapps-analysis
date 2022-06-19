package org.mistergroup.shouldianswer.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.v */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/v.class */
public final class C3132v {

    /* renamed from: a */
    public static final C3132v f9266a = new C3132v();

    /* renamed from: b */
    private static final byte[] f9267b = new byte[200];

    private C3132v() {
    }

    /* renamed from: a */
    public final int m38a(BufferedInputStream bufferedInputStream) {
        C1694h.m3117b(bufferedInputStream, "br");
        if (bufferedInputStream.read(f9267b, 0, 4) == 4) {
            byte[] bArr = f9267b;
            return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
        }
        throw new IOException("Unexpected end of file");
    }

    /* renamed from: a */
    public final String m37a(BufferedInputStream bufferedInputStream, int i) {
        C1694h.m3117b(bufferedInputStream, "br");
        if (bufferedInputStream.read(f9267b, 0, i) == i) {
            byte[] bArr = f9267b;
            Charset forName = Charset.forName("UTF-8");
            C1694h.m3122a((Object) forName, "Charset.forName(\"UTF-8\")");
            return new String(bArr, 0, i, forName);
        }
        throw new IOException("Unexpected end of file");
    }

    /* renamed from: a */
    public final void m36a(BufferedOutputStream bufferedOutputStream, byte b) {
        C1694h.m3117b(bufferedOutputStream, "bw");
        bufferedOutputStream.write(b);
    }

    /* renamed from: a */
    public final void m35a(BufferedOutputStream bufferedOutputStream, int i) {
        C1694h.m3117b(bufferedOutputStream, "bw");
        byte[] bArr = f9267b;
        bArr[0] = (byte) (i & 255);
        bArr[1] = (byte) ((i >> 8) & 255);
        bArr[2] = (byte) ((i >> 16) & 255);
        bArr[3] = (byte) ((i >> 24) & 255);
        bufferedOutputStream.write(bArr, 0, 4);
    }

    /* renamed from: a */
    public final void m34a(BufferedOutputStream bufferedOutputStream, long j) {
        C1694h.m3117b(bufferedOutputStream, "bw");
        byte[] bArr = f9267b;
        bArr[0] = (byte) (j & 255);
        bArr[1] = (byte) ((j >> 8) & 255);
        bArr[2] = (byte) ((j >> 16) & 255);
        bArr[3] = (byte) ((j >> 24) & 255);
        bArr[4] = (byte) ((j >> 32) & 255);
        bArr[5] = (byte) ((j >> 40) & 255);
        bArr[6] = (byte) ((j >> 48) & 255);
        bArr[7] = (byte) ((j >> 56) & 255);
        bufferedOutputStream.write(bArr, 0, 8);
    }

    /* renamed from: a */
    public final void m33a(BufferedOutputStream bufferedOutputStream, String str) {
        C1694h.m3117b(bufferedOutputStream, "bw");
        C1694h.m3117b(str, "str");
        Charset forName = Charset.forName("UTF-8");
        C1694h.m3122a((Object) forName, "Charset.forName(\"UTF-8\")");
        byte[] bytes = str.getBytes(forName);
        C1694h.m3122a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
        bufferedOutputStream.write(bytes, 0, bytes.length);
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: b */
    public final long m32b(BufferedInputStream bufferedInputStream) {
        C1694h.m3117b(bufferedInputStream, "br");
        if (bufferedInputStream.read(f9267b, 0, 8) == 8) {
            char c = 0;
            for (int i = 7; i >= 0; i--) {
                c = (c << '\b') | (f9267b[i] & 255);
            }
            return c;
        }
        throw new IOException("Unexpected end of file");
    }

    /* renamed from: c */
    public final byte m31c(BufferedInputStream bufferedInputStream) {
        C1694h.m3117b(bufferedInputStream, "br");
        if (bufferedInputStream.read(f9267b, 0, 1) == 1) {
            return f9267b[0];
        }
        throw new IOException("Unexpected end of file");
    }
}
