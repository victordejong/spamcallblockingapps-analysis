package com.bumptech.glide.p108a;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: com.bumptech.glide.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/c.class */
final class C3540c {

    /* renamed from: a */
    static final Charset f13477a = Charset.forName("US-ASCII");

    /* renamed from: b */
    static final Charset f13478b = Charset.forName("UTF-8");

    private C3540c() {
    }

    /* renamed from: a */
    public static void m37754a(Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
        }
    }

    /* renamed from: a */
    public static void m37753a(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    m37753a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: ".concat(String.valueOf(file2)));
                }
            }
            return;
        }
        throw new IOException("not a readable directory: ".concat(String.valueOf(file)));
    }
}
