package com.danikula.videocache.p227q;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import org.slf4j.AbstractC9605b;
import org.slf4j.C9606c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.danikula.videocache.q.d */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/q/d.class */
public class C4448d {

    /* renamed from: a */
    private static final AbstractC9605b f13573a = C9606c.m352i("Files");

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.danikula.videocache.q.d$b */
    /* loaded from: classes-dex2jar.jar:com/danikula/videocache/q/d$b.class */
    public static final class C4450b implements Comparator<File> {
        private C4450b() {
        }

        /* renamed from: b */
        private int m22436b(long j, long j2) {
            int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
            return i < 0 ? -1 : i == 0 ? 0 : 1;
        }

        /* renamed from: a */
        public int compare(File file, File file2) {
            return m22436b(file.lastModified(), file2.lastModified());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    /* renamed from: a */
    public static List<File> m22442a(File file) {
        LinkedList linkedList = new LinkedList();
        File[] listFiles = file.listFiles();
        LinkedList linkedList2 = linkedList;
        if (listFiles != null) {
            linkedList2 = Arrays.asList(listFiles);
            Collections.sort(linkedList2, new C4450b());
        }
        return linkedList2;
    }

    /* renamed from: b */
    public static void m22441b(File file) {
        if (!file.exists()) {
            if (!file.mkdirs()) {
                throw new IOException(String.format("Directory %s can't be created", file.getAbsolutePath()));
            }
        } else if (file.isDirectory()) {
        } else {
            throw new IOException("File " + file + " is not directory!");
        }
    }

    /* renamed from: c */
    static void m22440c(File file) {
        long length = file.length();
        if (length == 0) {
            m22439d(file);
            return;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rwd");
        long j = length - 1;
        randomAccessFile.seek(j);
        byte readByte = randomAccessFile.readByte();
        randomAccessFile.seek(j);
        randomAccessFile.write(readByte);
        randomAccessFile.close();
    }

    /* renamed from: d */
    private static void m22439d(File file) {
        if (!file.delete() || !file.createNewFile()) {
            throw new IOException("Error recreate zero-size file " + file);
        }
    }

    /* renamed from: e */
    public static void m22438e(File file) {
        if (file.exists()) {
            long currentTimeMillis = System.currentTimeMillis();
            if (file.setLastModified(currentTimeMillis)) {
                return;
            }
            m22440c(file);
            if (file.lastModified() >= currentTimeMillis) {
                return;
            }
            f13573a.warn("Last modified date {} is not set for file {}", new Date(file.lastModified()), file.getAbsolutePath());
        }
    }
}
