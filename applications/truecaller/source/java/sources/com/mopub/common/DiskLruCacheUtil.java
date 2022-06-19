package com.mopub.common;

import com.tenor.android.core.constant.StringConstant;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/DiskLruCacheUtil.class */
public final class DiskLruCacheUtil {

    /* renamed from: a */
    public static final Charset f8499a = Charset.forName("US-ASCII");

    /* renamed from: b */
    public static final Charset f8500b = Charset.forName(StringConstant.UTF8);

    private DiskLruCacheUtil() {
    }

    /* renamed from: a */
    public static void m36314a(Closeable closeable) {
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
    public static void m36313b(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m36313b(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
