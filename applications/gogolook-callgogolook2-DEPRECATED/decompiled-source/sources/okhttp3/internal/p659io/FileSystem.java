package okhttp3.internal.p659io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import p645m.AbstractC15192r;
import p645m.AbstractC15193s;
import p645m.C15181l;
/* renamed from: okhttp3.internal.io.FileSystem */
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/io/FileSystem.class */
public interface FileSystem {
    public static final FileSystem SYSTEM = new FileSystem() { // from class: okhttp3.internal.io.FileSystem.1
        @Override // okhttp3.internal.p659io.FileSystem
        public AbstractC15192r appendingSink(File file) throws FileNotFoundException {
            try {
                return C15181l.m326a(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                return C15181l.m326a(file);
            }
        }

        @Override // okhttp3.internal.p659io.FileSystem
        public void delete(File file) throws IOException {
            if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete " + file);
            }
        }

        @Override // okhttp3.internal.p659io.FileSystem
        public void deleteContents(File file) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        deleteContents(file2);
                    }
                    if (!file2.delete()) {
                        throw new IOException("failed to delete " + file2);
                    }
                }
                return;
            }
            throw new IOException("not a readable directory: " + file);
        }

        @Override // okhttp3.internal.p659io.FileSystem
        public boolean exists(File file) {
            return file.exists();
        }

        @Override // okhttp3.internal.p659io.FileSystem
        public void rename(File file, File file2) throws IOException {
            delete(file2);
            if (!file.renameTo(file2)) {
                throw new IOException("failed to rename " + file + " to " + file2);
            }
        }

        @Override // okhttp3.internal.p659io.FileSystem
        public AbstractC15192r sink(File file) throws FileNotFoundException {
            try {
                return C15181l.m317b(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                return C15181l.m317b(file);
            }
        }

        @Override // okhttp3.internal.p659io.FileSystem
        public long size(File file) {
            return file.length();
        }

        @Override // okhttp3.internal.p659io.FileSystem
        public AbstractC15193s source(File file) throws FileNotFoundException {
            return C15181l.m315c(file);
        }
    };

    AbstractC15192r appendingSink(File file) throws FileNotFoundException;

    void delete(File file) throws IOException;

    void deleteContents(File file) throws IOException;

    boolean exists(File file);

    void rename(File file, File file2) throws IOException;

    AbstractC15192r sink(File file) throws FileNotFoundException;

    long size(File file);

    AbstractC15193s source(File file) throws FileNotFoundException;
}
