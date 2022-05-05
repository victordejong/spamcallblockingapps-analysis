package com.flurry.sdk;

import androidx.media2.exoplayer.external.C0463C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: com.flurry.sdk.ao */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ao.class */
public final class C2827ao {

    /* renamed from: a */
    public static final Charset f4041a = Charset.forName(C0463C.ASCII_NAME);

    static {
        Charset.forName("UTF-8");
    }

    /* renamed from: a */
    public static void m33585a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static void m33584a(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    m33584a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }
}
