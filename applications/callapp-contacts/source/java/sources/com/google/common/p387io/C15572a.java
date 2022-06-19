package com.google.common.p387io;

import com.google.common.base.C15391m;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.google.common.io.a */
/* loaded from: classes4-dex2jar.jar:com/google/common/io/a.class */
public final class C15572a {

    /* renamed from: a */
    private static final OutputStream f55903a = new OutputStream() { // from class: com.google.common.io.a.1
        public final String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            C15391m.m8946a(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            C15391m.m8946a(bArr);
        }
    };

    private C15572a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: a */
    public static long m8639a(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long read = inputStream.read(bArr);
            if (read != -1) {
                r0 = c + read;
            } else {
                return c;
            }
        }
    }
}
