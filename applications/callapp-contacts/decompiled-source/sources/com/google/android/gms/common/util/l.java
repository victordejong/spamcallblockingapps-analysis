package com.google.android.gms.common.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/l.class */
public final class l {
    private l() {
    }

    @Deprecated
    public static long a(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                j += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z) {
                    a((Closeable) inputStream);
                    a(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            a((Closeable) inputStream);
            a(outputStream);
        }
        return j;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @Deprecated
    public static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream, true);
        return byteArrayOutputStream.toByteArray();
    }
}
