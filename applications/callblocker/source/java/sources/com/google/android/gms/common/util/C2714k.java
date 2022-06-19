package com.google.android.gms.common.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;
@Deprecated
/* renamed from: com.google.android.gms.common.util.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/k.class */
public final class C2714k {
    @Deprecated
    /* renamed from: a */
    public static long m13847a(InputStream inputStream, OutputStream outputStream) {
        return m13846a(inputStream, outputStream, false);
    }

    @Deprecated
    /* renamed from: a */
    private static long m13846a(InputStream inputStream, OutputStream outputStream, boolean z) {
        return m13845a(inputStream, outputStream, z, 1024);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Deprecated
    /* renamed from: a */
    public static long m13845a(InputStream inputStream, OutputStream outputStream, boolean z, int i) {
        byte[] bArr = new byte[i];
        char c = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i);
                if (read == -1) {
                    break;
                }
                c += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z) {
                    m13848a(inputStream);
                    m13848a(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            m13848a(inputStream);
            m13848a(outputStream);
        }
        return c;
    }

    /* renamed from: a */
    public static void m13848a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public static byte[] m13844a(InputStream inputStream, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m13846a(inputStream, byteArrayOutputStream, z);
        return byteArrayOutputStream.toByteArray();
    }
}
