package okhttp3.internal.p577io;

import com.appsflyer.internal.referrer.Payload;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import p092c.AbstractC3188ab;
import p092c.AbstractC3190ad;
import p092c.C3217q;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018�� \u00142\u00020\u0001:\u0001\u0014J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0015"}, m4298d2 = {"Lokhttp3/internal/io/FileSystem;", "", "appendingSink", "Lokio/Sink;", "file", "Ljava/io/File;", "delete", "", "deleteContents", "directory", "exists", "", "rename", "from", "to", "sink", "size", "", Payload.SOURCE, "Lokio/Source;", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: okhttp3.internal.io.FileSystem */
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/io/FileSystem.class */
public interface FileSystem {
    public static final Companion Companion = new Companion(null);
    public static final FileSystem SYSTEM = new Companion.SystemFileSystem();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001��¢\u0006\u0002\n��¨\u0006\u0001\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\u0006"}, m4298d2 = {"Lokhttp3/internal/io/FileSystem$Companion;", "", "()V", "SYSTEM", "Lokhttp3/internal/io/FileSystem;", "SystemFileSystem", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: okhttp3.internal.io.FileSystem$Companion */
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/io/FileSystem$Companion.class */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = null;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016¨\u0006\u0017"}, m4298d2 = {"Lokhttp3/internal/io/FileSystem$Companion$SystemFileSystem;", "Lokhttp3/internal/io/FileSystem;", "()V", "appendingSink", "Lokio/Sink;", "file", "Ljava/io/File;", "delete", "", "deleteContents", "directory", "exists", "", "rename", "from", "to", "sink", "size", "", Payload.SOURCE, "Lokio/Source;", "toString", "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* renamed from: okhttp3.internal.io.FileSystem$Companion$SystemFileSystem */
        /* loaded from: classes5-dex2jar.jar:okhttp3/internal/io/FileSystem$Companion$SystemFileSystem.class */
        static final class SystemFileSystem implements FileSystem {
            @Override // okhttp3.internal.p577io.FileSystem
            public final AbstractC3188ab appendingSink(File file) throws FileNotFoundException {
                AbstractC3188ab abstractC3188ab;
                C18524p.m3840d(file, "file");
                try {
                    abstractC3188ab = C3217q.m39160a(file);
                } catch (FileNotFoundException e) {
                    file.getParentFile().mkdirs();
                    abstractC3188ab = C3217q.m39160a(file);
                }
                return abstractC3188ab;
            }

            @Override // okhttp3.internal.p577io.FileSystem
            public final void delete(File file) throws IOException {
                C18524p.m3840d(file, "file");
                if (file.delete() || !file.exists()) {
                    return;
                }
                throw new IOException("failed to delete ".concat(String.valueOf(file)));
            }

            @Override // okhttp3.internal.p577io.FileSystem
            public final void deleteContents(File directory) throws IOException {
                C18524p.m3840d(directory, "directory");
                File[] listFiles = directory.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        C18524p.m3843b(file, "file");
                        if (file.isDirectory()) {
                            deleteContents(file);
                        }
                        if (!file.delete()) {
                            throw new IOException("failed to delete ".concat(String.valueOf(file)));
                        }
                    }
                    return;
                }
                throw new IOException("not a readable directory: ".concat(String.valueOf(directory)));
            }

            @Override // okhttp3.internal.p577io.FileSystem
            public final boolean exists(File file) {
                C18524p.m3840d(file, "file");
                return file.exists();
            }

            @Override // okhttp3.internal.p577io.FileSystem
            public final void rename(File from, File to) throws IOException {
                C18524p.m3840d(from, "from");
                C18524p.m3840d(to, "to");
                delete(to);
                if (from.renameTo(to)) {
                    return;
                }
                throw new IOException("failed to rename " + from + " to " + to);
            }

            @Override // okhttp3.internal.p577io.FileSystem
            public final AbstractC3188ab sink(File file) throws FileNotFoundException {
                AbstractC3188ab abstractC3188ab;
                C18524p.m3840d(file, "file");
                try {
                    abstractC3188ab = C18524p.m3840d(file, "$this$sink");
                } catch (FileNotFoundException e) {
                    file.getParentFile().mkdirs();
                    abstractC3188ab = C18524p.m3840d(file, "$this$sink");
                }
                return abstractC3188ab;
            }

            @Override // okhttp3.internal.p577io.FileSystem
            public final long size(File file) {
                C18524p.m3840d(file, "file");
                return file.length();
            }

            @Override // okhttp3.internal.p577io.FileSystem
            public final AbstractC3190ad source(File file) throws FileNotFoundException {
                C18524p.m3840d(file, "file");
                return C3217q.m39154b(file);
            }

            public final String toString() {
                return "FileSystem.SYSTEM";
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    AbstractC3188ab appendingSink(File file) throws FileNotFoundException;

    void delete(File file) throws IOException;

    void deleteContents(File file) throws IOException;

    boolean exists(File file);

    void rename(File file, File file2) throws IOException;

    AbstractC3188ab sink(File file) throws FileNotFoundException;

    long size(File file);

    AbstractC3190ad source(File file) throws FileNotFoundException;
}
