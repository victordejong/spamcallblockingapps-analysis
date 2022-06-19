package com.bumptech.glide.p068a;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: com.bumptech.glide.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/c.class */
final class C1353c {

    /* renamed from: a */
    static final Charset f4481a = Charset.forName("US-ASCII");

    /* renamed from: b */
    static final Charset f4482b = Charset.forName("UTF-8");

    /* renamed from: a */
    public static void m17355a(Closeable closeable) {
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
    public static void m17354a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m17354a(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
