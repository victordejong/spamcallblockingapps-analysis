package org.apache.commons.p018io;

import java.io.File;
import java.io.IOException;
/* renamed from: org.apache.commons.io.FileDeleteStrategy */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/FileDeleteStrategy.class */
public class FileDeleteStrategy {
    private final String name;
    public static final FileDeleteStrategy NORMAL = new FileDeleteStrategy("Normal");
    public static final FileDeleteStrategy FORCE = new ForceFileDeleteStrategy();

    /* renamed from: org.apache.commons.io.FileDeleteStrategy$ForceFileDeleteStrategy */
    /* loaded from: classes2-dex2jar.jar:org/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy.class */
    static class ForceFileDeleteStrategy extends FileDeleteStrategy {
        ForceFileDeleteStrategy() {
            super("Force");
        }

        @Override // org.apache.commons.p018io.FileDeleteStrategy
        protected boolean doDelete(File file) throws IOException {
            FileUtils.forceDelete(file);
            return true;
        }
    }

    protected FileDeleteStrategy(String str) {
        this.name = str;
    }

    public void delete(File file) throws IOException {
        if (file.exists() && !doDelete(file)) {
            throw new IOException("Deletion failed: " + file);
        }
    }

    public boolean deleteQuietly(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        try {
            return doDelete(file);
        } catch (IOException e) {
            return false;
        }
    }

    protected boolean doDelete(File file) throws IOException {
        return file.delete();
    }

    public String toString() {
        return "FileDeleteStrategy[" + this.name + "]";
    }
}
