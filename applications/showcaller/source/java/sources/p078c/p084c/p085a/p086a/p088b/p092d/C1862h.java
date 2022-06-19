package p078c.p084c.p085a.p086a.p088b.p092d;

import com.yanzhenjie.nohttp.Headers;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: c.c.a.a.b.d.h */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/d/h.class */
public final class C1862h {

    /* renamed from: a */
    static final Logger f6765a = Logger.getLogger(C1862h.class.getName());

    private C1862h() {
    }

    /* renamed from: a */
    public static void m28784a(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException e) {
            try {
                f6765a.logp(Level.WARNING, "com.google.common.io.Closeables", Headers.HEAD_VALUE_CONNECTION_CLOSE, "IOException thrown while closing Closeable.", (Throwable) e);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }
    }
}
