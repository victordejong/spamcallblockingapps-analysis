package com.google.common.p291io;

import com.google.common.base.C8756j;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.google.common.io.a */
/* loaded from: classes2-dex2jar.jar:com/google/common/io/a.class */
public final class C8827a {

    /* renamed from: a */
    private static final OutputStream f38743a = new C8828a();

    /* renamed from: com.google.common.io.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/a$a.class */
    static final class C8828a extends OutputStream {
        C8828a() {
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            C8756j.m2789l(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            C8756j.m2789l(bArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* renamed from: a */
    public static long m2579a(InputStream inputStream, OutputStream outputStream) {
        C8756j.m2789l(inputStream);
        C8756j.m2789l(outputStream);
        byte[] m2578b = m2578b();
        ?? r0 = 0;
        while (true) {
            char c = r0;
            int read = inputStream.read(m2578b);
            if (read == -1) {
                return c;
            }
            outputStream.write(m2578b, 0, read);
            r0 = c + read;
        }
    }

    /* renamed from: b */
    static byte[] m2578b() {
        return new byte[8192];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* renamed from: c */
    public static long m2577c(InputStream inputStream) {
        byte[] m2578b = m2578b();
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long read = inputStream.read(m2578b);
            if (read != -1) {
                r0 = c + read;
            } else {
                return c;
            }
        }
    }
}
