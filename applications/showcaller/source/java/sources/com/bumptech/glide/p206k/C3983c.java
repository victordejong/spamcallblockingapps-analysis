package com.bumptech.glide.p206k;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: com.bumptech.glide.k.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/k/c.class */
final class C3983c {

    /* renamed from: a */
    static final Charset f12557a = Charset.forName("US-ASCII");

    /* renamed from: b */
    static final Charset f12558b = Charset.forName("UTF-8");

    /* renamed from: a */
    public static void m23567a(Closeable closeable) {
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
    public static void m23566b(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m23566b(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
