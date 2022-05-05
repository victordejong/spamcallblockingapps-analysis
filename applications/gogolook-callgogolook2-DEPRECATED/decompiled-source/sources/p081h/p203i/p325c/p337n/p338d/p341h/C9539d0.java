package p081h.p203i.p325c.p337n.p338d.p341h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* renamed from: h.i.c.n.d.h.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/d0.class */
public class C9539d0 {
    /* renamed from: a */
    public static void m14958a(File file, List<AbstractC9537c0> list) {
        for (AbstractC9537c0 c0Var : list) {
            InputStream inputStream = null;
            try {
                InputStream stream = c0Var.getStream();
                if (stream == null) {
                    inputStream = stream;
                } else {
                    m14957a(stream, new File(file, c0Var.mo14692b()));
                    inputStream = stream;
                }
            } catch (IOException e) {
            } catch (Throwable th) {
                C9546h.m14935a((Closeable) null);
                throw th;
            }
            C9546h.m14935a((Closeable) inputStream);
        }
    }

    /* renamed from: a */
    public static void m14957a(@Nullable InputStream inputStream, @NonNull File file) throws IOException {
        Throwable th;
        if (inputStream != null) {
            byte[] bArr = new byte[8192];
            GZIPOutputStream gZIPOutputStream = null;
            try {
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
                while (true) {
                    try {
                        int read = inputStream.read(bArr);
                        if (read > 0) {
                            gZIPOutputStream2.write(bArr, 0, read);
                        } else {
                            gZIPOutputStream2.finish();
                            C9546h.m14935a(gZIPOutputStream2);
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPOutputStream = gZIPOutputStream2;
                        C9546h.m14935a(gZIPOutputStream);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }
}
