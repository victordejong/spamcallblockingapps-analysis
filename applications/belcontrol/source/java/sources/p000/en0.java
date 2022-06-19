package p000;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import om0;
/* renamed from: en0 */
/* loaded from: classes-dex2jar.jar:en0.class */
public class en0 {

    /* renamed from: a */
    public static final String f6392a = "en0";

    /* renamed from: b */
    public static final String f6393b;

    /* renamed from: c */
    public static om0 f6394c;

    static {
        String simpleName = en0.class.getSimpleName();
        f6393b = simpleName + "_Redirect";
    }

    /* renamed from: a */
    public static void m2074a(Uri uri, Uri uri2) {
        OutputStream outputStream;
        if (uri == null || uri2 == null) {
            return;
        }
        OutputStream outputStream2 = null;
        OutputStream outputStream3 = null;
        try {
            outputStream = m2073b().j(uri.toString(), f6393b);
            outputStream3 = outputStream;
            outputStream2 = outputStream;
            outputStream.write(uri2.toString().getBytes());
        } catch (IOException e) {
            outputStream = outputStream2;
        } catch (Throwable th) {
            fn0.h(outputStream3);
            throw th;
        }
        fn0.h(outputStream);
    }

    /* renamed from: b */
    public static om0 m2073b() {
        om0 om0Var;
        synchronized (en0.class) {
            try {
                if (f6394c == null) {
                    f6394c = new om0(f6392a, new om0.g());
                }
                om0Var = f6394c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return om0Var;
    }

    /* renamed from: c */
    public static Uri m2072c(Uri uri) {
        InputStreamReader inputStreamReader;
        Throwable th;
        om0 m2073b;
        InputStreamReader inputStreamReader2;
        boolean z;
        if (uri == null) {
            return null;
        }
        String uri2 = uri.toString();
        try {
            m2073b = m2073b();
            inputStreamReader2 = null;
            z = false;
        } catch (IOException e) {
            inputStreamReader = null;
        } catch (Throwable th2) {
            th = th2;
            inputStreamReader = null;
        }
        while (true) {
            try {
                InputStream g = m2073b.g(uri2, f6393b);
                if (g == null) {
                    break;
                }
                z = true;
                inputStreamReader = new InputStreamReader(g);
                try {
                    char[] cArr = new char[128];
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        int read = inputStreamReader.read(cArr, 0, 128);
                        if (read <= 0) {
                            break;
                        }
                        sb.append(cArr, 0, read);
                    }
                    fn0.h(inputStreamReader);
                    uri2 = sb.toString();
                    inputStreamReader2 = inputStreamReader;
                } catch (IOException e2) {
                } catch (Throwable th3) {
                    th = th3;
                    fn0.h(inputStreamReader);
                    throw th;
                }
            } catch (IOException e3) {
                inputStreamReader = inputStreamReader2;
            } catch (Throwable th4) {
                InputStreamReader inputStreamReader3 = inputStreamReader2;
                th = th4;
                inputStreamReader = inputStreamReader3;
            }
            fn0.h(inputStreamReader);
            return null;
        }
        inputStreamReader = inputStreamReader2;
        if (z) {
            Uri parse = Uri.parse(uri2);
            fn0.h(inputStreamReader2);
            return parse;
        }
        fn0.h(inputStreamReader);
        return null;
    }
}
