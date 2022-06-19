package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;
@Deprecated
/* renamed from: com.google.android.gms.common.util.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/l.class */
public final class C1615l {
    /* renamed from: a */
    public static void m8222a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @Deprecated
    /* renamed from: b */
    public static long m8221b(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull OutputStream outputStream) {
        return m8220c(inputStream, outputStream, false, 1024);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Deprecated
    /* renamed from: c */
    public static long m8220c(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull OutputStream outputStream, boolean z, int i) {
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
                    m8222a(inputStream);
                    m8222a(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            m8222a(inputStream);
            m8222a(outputStream);
        }
        return c;
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: d */
    public static byte[] m8219d(@RecentlyNonNull InputStream inputStream, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m8220c(inputStream, byteArrayOutputStream, z, 1024);
        return byteArrayOutputStream.toByteArray();
    }
}
