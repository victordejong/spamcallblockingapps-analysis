package p081h.p119d.p120a.p121p;

import androidx.media2.exoplayer.external.C0463C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: h.d.a.p.c */
/* loaded from: classes-dex2jar.jar:h/d/a/p/c.class */
public final class C5795c {

    /* renamed from: a */
    public static final Charset f14550a = Charset.forName(C0463C.ASCII_NAME);

    static {
        Charset.forName("UTF-8");
    }

    /* renamed from: a */
    public static void m24379a(Closeable closeable) {
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
    public static void m24378a(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    m24378a(file2);
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
