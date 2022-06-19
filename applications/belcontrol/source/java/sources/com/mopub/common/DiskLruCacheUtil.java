package com.mopub.common;

import com.google.android.exoplayer2.C0515C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.StringWriter;
import java.nio.charset.Charset;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCacheUtil.class */
public final class DiskLruCacheUtil {

    /* renamed from: a */
    public static final Charset f4236a = Charset.forName(C0515C.ASCII_NAME);

    /* renamed from: b */
    public static final Charset f4237b = Charset.forName(C0515C.UTF8_NAME);

    private DiskLruCacheUtil() {
    }

    /* renamed from: a */
    public static void m3967a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: b */
    public static void m3966b(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m3966b(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    /* renamed from: c */
    public static String m3965c(Reader reader) {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int read = reader.read(cArr);
                if (read == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, read);
            }
        } finally {
            reader.close();
        }
    }
}
