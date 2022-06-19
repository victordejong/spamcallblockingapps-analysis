package com.huawei.secure.android.common.encrypt.utils;

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
/* renamed from: com.huawei.secure.android.common.encrypt.utils.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/utils/a.class */
public class C2479a {

    /* renamed from: a */
    private static final String f7993a = "IOUtil";

    /* renamed from: b */
    private static final int f7994b = 4096;

    /* renamed from: a */
    public static long m37048a(InputStream inputStream, OutputStream outputStream) throws IOException {
        return m37047a(inputStream, outputStream, new byte[4096]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: a */
    public static long m37047a(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
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
    public static InputStream m37042a(byte[] bArr) throws IOException {
        return new ByteArrayInputStream(bArr);
    }

    /* renamed from: a */
    public static void m37052a(Cursor cursor) {
        if (cursor != null) {
            cursor.close();
        }
    }

    /* renamed from: a */
    public static void m37051a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                C2480b.m37037b(f7993a, "closeSecure IOException");
            }
        }
    }

    /* renamed from: a */
    public static void m37050a(File file) {
        if (file == null || !file.exists() || file.delete()) {
            return;
        }
        C2480b.m37037b(f7993a, "deleteSecure exception");
    }

    /* renamed from: a */
    public static void m37049a(InputStream inputStream) {
        m37051a((Closeable) inputStream);
    }

    /* renamed from: a */
    public static void m37046a(OutputStream outputStream) {
        m37051a((Closeable) outputStream);
    }

    /* renamed from: a */
    public static void m37045a(Reader reader) {
        m37051a((Closeable) reader);
    }

    /* renamed from: a */
    public static void m37044a(Writer writer) {
        m37051a((Closeable) writer);
    }

    /* renamed from: a */
    public static void m37043a(String str) {
        if (!TextUtils.isEmpty(str)) {
            m37050a(new File(str));
        }
    }

    /* renamed from: b */
    public static byte[] m37041b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m37048a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
