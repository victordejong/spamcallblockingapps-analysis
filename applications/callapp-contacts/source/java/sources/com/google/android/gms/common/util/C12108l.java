package com.google.android.gms.common.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@Deprecated
/* renamed from: com.google.android.gms.common.util.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/l.class */
public final class C12108l {
    private C12108l() {
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Deprecated
    /* renamed from: a */
    public static long m19023a(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        byte[] bArr = new byte[1024];
        char c = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                c += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z) {
                    m19025a((Closeable) inputStream);
                    m19025a(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            m19025a((Closeable) inputStream);
            m19025a(outputStream);
        }
        return c;
    }

    /* renamed from: a */
    public static void m19025a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public static byte[] m19024a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m19023a(inputStream, byteArrayOutputStream, true);
        return byteArrayOutputStream.toByteArray();
    }
}
