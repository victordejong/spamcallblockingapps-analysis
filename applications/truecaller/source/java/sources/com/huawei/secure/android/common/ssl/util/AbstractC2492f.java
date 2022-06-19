package com.huawei.secure.android.common.ssl.util;

import android.database.Cursor;
import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
/* renamed from: com.huawei.secure.android.common.ssl.util.f */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/f.class */
public abstract class AbstractC2492f {

    /* renamed from: a */
    private static final String f8102a = "IOUtil";

    /* renamed from: b */
    private static final int f8103b = 4096;

    /* renamed from: a */
    public static long m36967a(InputStream inputStream, OutputStream outputStream) throws IOException {
        return m36966a(inputStream, outputStream, new byte[4096]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: a */
    public static long m36966a(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        ?? r0 = 0;
        while (true) {
            char c = r0;
            int read = inputStream.read(bArr);
            if (-1 != read) {
                outputStream.write(bArr, 0, read);
                r0 = c + read;
            } else {
                return c;
            }
        }
    }

    /* renamed from: a */
    public static InputStream m36961a(byte[] bArr) throws IOException {
        return new ByteArrayInputStream(bArr);
    }

    /* renamed from: a */
    public static void m36971a(Cursor cursor) {
        if (cursor != null) {
            cursor.close();
        }
    }

    /* renamed from: a */
    public static void m36970a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C2493g.m36956b(f8102a, "closeSecure IOException");
            }
        }
    }

    /* renamed from: a */
    public static void m36969a(File file) {
        if (file == null || !file.exists() || file.delete()) {
            return;
        }
        C2493g.m36956b(f8102a, "deleteSecure exception");
    }

    /* renamed from: a */
    public static void m36968a(InputStream inputStream) {
        m36970a((Closeable) inputStream);
    }

    /* renamed from: a */
    public static void m36965a(OutputStream outputStream) {
        m36970a((Closeable) outputStream);
    }

    /* renamed from: a */
    public static void m36964a(Reader reader) {
        m36970a((Closeable) reader);
    }

    /* renamed from: a */
    public static void m36963a(Writer writer) {
        m36970a((Closeable) writer);
    }

    /* renamed from: a */
    public static void m36962a(String str) {
        if (!TextUtils.isEmpty(str)) {
            m36969a(new File(str));
        }
    }

    /* renamed from: b */
    public static byte[] m36960b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m36967a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
