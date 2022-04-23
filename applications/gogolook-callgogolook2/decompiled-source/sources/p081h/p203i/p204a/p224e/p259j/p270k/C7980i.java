package p081h.p203i.p204a.p224e.p259j.p270k;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: h.i.a.e.j.k.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/k/i.class */
public final class C7980i {

    /* renamed from: a */
    public static final Logger f18703a = Logger.getLogger(C7980i.class.getName());

    /* renamed from: a */
    public static void m18707a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                try {
                    f18703a.logp(Level.WARNING, "com.google.common.io.Closeables", MraidParser.MRAID_COMMAND_CLOSE, "IOException thrown while closing Closeable.", (Throwable) e);
                } catch (IOException e2) {
                    throw new AssertionError(e2);
                }
            }
        }
    }
}
