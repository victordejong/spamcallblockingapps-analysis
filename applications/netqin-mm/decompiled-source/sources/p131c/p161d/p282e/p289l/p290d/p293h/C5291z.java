package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* renamed from: c.d.e.l.d.h.z */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/z.class */
public class C5291z {
    /* renamed from: a */
    public static void m24041a(File file, List<AbstractC5290y> list) {
        for (AbstractC5290y yVar : list) {
            InputStream inputStream = null;
            try {
                InputStream h = yVar.mo24042h();
                if (h == null) {
                    inputStream = h;
                } else {
                    m24040a(h, new File(file, yVar.mo24044a()));
                    inputStream = h;
                }
            } catch (IOException e) {
            } catch (Throwable th) {
                CommonUtils.m7666a((Closeable) null);
                throw th;
            }
            CommonUtils.m7666a((Closeable) inputStream);
        }
    }

    /* renamed from: a */
    public static void m24040a(InputStream inputStream, File file) throws IOException {
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
                            CommonUtils.m7666a(gZIPOutputStream2);
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPOutputStream = gZIPOutputStream2;
                        CommonUtils.m7666a(gZIPOutputStream);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }
}
