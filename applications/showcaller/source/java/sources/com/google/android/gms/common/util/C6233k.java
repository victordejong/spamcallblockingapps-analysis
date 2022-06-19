package com.google.android.gms.common.util;

import androidx.annotation.RecentlyNonNull;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@Deprecated
/* renamed from: com.google.android.gms.common.util.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/k.class */
public final class C6233k {
    /* renamed from: a */
    public static void m16790a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @Deprecated
    /* renamed from: b */
    public static long m16789b(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull OutputStream outputStream) {
        return m16788c(inputStream, outputStream, false, 1024);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Deprecated
    /* renamed from: c */
    public static long m16788c(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull OutputStream outputStream, boolean z, int i) {
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
                    m16790a(inputStream);
                    m16790a(outputStream);
                }
                throw th;
            }
        }
        if (z) {
            m16790a(inputStream);
            m16790a(outputStream);
        }
        return c;
    }

    @RecentlyNonNull
    @Deprecated
    /* renamed from: d */
    public static byte[] m16787d(@RecentlyNonNull InputStream inputStream, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m16788c(inputStream, byteArrayOutputStream, z, 1024);
        return byteArrayOutputStream.toByteArray();
    }
}
