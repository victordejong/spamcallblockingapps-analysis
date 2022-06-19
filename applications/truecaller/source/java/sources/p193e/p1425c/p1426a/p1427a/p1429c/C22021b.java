package p193e.p1425c.p1426a.p1427a.p1429c;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.HttpsURLConnection;
import p193e.p1425c.p1426a.p1427a.C22016a;
/* renamed from: e.c.a.a.c.b */
/* loaded from: classes-dex2jar.jar:e/c/a/a/c/b.class */
public class C22021b {

    /* renamed from: c */
    public static final String f61237c = "b";

    /* renamed from: d */
    public static C22021b f61238d;

    /* renamed from: b */
    public final ExecutorService f61240b = Executors.newFixedThreadPool(1);

    /* renamed from: a */
    public boolean f61239a = false;

    /* renamed from: e.c.a.a.c.b$a */
    /* loaded from: classes-dex2jar.jar:e/c/a/a/c/b$a.class */
    public class C22022a extends Thread {
        public C22022a() {
            C22021b.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                C22021b c22021b = C22021b.this;
                c22021b.f61239a = true;
                String str = C22021b.f61237c;
                c22021b.f61240b.shutdown();
            } catch (RuntimeException e) {
                String str2 = C22021b.f61237c;
            }
        }
    }

    public C22021b(Context context) {
        Runtime.getRuntime().addShutdownHook(new C22022a());
    }

    /* renamed from: a */
    public final void m8824a(InputStream inputStream, OutputStream outputStream, HttpsURLConnection httpsURLConnection) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException | RuntimeException e) {
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException | RuntimeException e2) {
            }
        }
        try {
            httpsURLConnection.disconnect();
        } catch (RuntimeException e3) {
        }
    }

    /* renamed from: b */
    public final boolean m8823b(HttpsURLConnection httpsURLConnection) {
        try {
            httpsURLConnection.setReadTimeout(10000);
            httpsURLConnection.setConnectTimeout(10000);
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setChunkedStreamingMode(0);
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setRequestProperty("Content-Type", "application/json");
            httpsURLConnection.setRequestProperty("x-api-key", C22016a.f61213c);
            httpsURLConnection.connect();
            return true;
        } catch (IOException e) {
            return false;
        }
    }
}
