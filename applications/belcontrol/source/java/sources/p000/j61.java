package p000;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.Executors;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONArray;
import p000.r71;
/* renamed from: j61 */
/* loaded from: classes3-dex2jar.jar:j61.class */
public class j61 {

    /* renamed from: a */
    public static final String f6802a = "j61";

    /* renamed from: b */
    public static boolean f6803b = false;

    /* renamed from: j61$a */
    /* loaded from: classes3-dex2jar.jar:j61$a.class */
    public static final class RunnableC1449a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ JSONArray f6804a;

        public RunnableC1449a(JSONArray jSONArray) {
            this.f6804a = jSONArray;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                JSONArray jSONArray = new JSONArray();
                int i = 0;
                boolean z = false;
                while (true) {
                    boolean z2 = z;
                    if (i >= this.f6804a.length()) {
                        break;
                    }
                    boolean z3 = z2;
                    if (!z2) {
                        z3 = z2;
                        if (!j61.m1540c(this.f6804a.get(i).toString())) {
                            z3 = true;
                        }
                    }
                    if (z3) {
                        jSONArray.put(this.f6804a.get(i));
                    }
                    i++;
                    z = z3;
                }
                r71.EnumC1638a.f7966l1.m681o(jSONArray.toString());
            } catch (Throwable th) {
            }
            boolean unused = j61.f6803b = false;
        }
    }

    /* renamed from: c */
    public static boolean m1540c(String str) {
        String str2;
        InputStream errorStream;
        String sb;
        try {
            URL url = new URL("https://service.callcontrolhome.com/api/createlog");
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
            httpsURLConnection.setSSLSocketFactory((SSLSocketFactory) SSLSocketFactory.getDefault());
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
            httpsURLConnection.setRequestProperty("Accept", "application/json");
            PrintWriter printWriter = new PrintWriter(httpsURLConnection.getOutputStream());
            printWriter.print(str);
            printWriter.flush();
            printWriter.close();
            httpsURLConnection.connect();
            int responseCode = httpsURLConnection.getResponseCode();
            String str3 = "createlog : Request: " + url + ":\n response status code:" + responseCode;
            httpsURLConnection.disconnect();
            if (responseCode == 200) {
                return true;
            }
            InputStream inputStream = null;
            try {
                errorStream = httpsURLConnection.getErrorStream();
                StringBuilder sb2 = new StringBuilder();
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = errorStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    sb2.append(new String(bArr, 0, read));
                }
                inputStream = errorStream;
                sb = sb2.toString();
                str2 = sb;
            } catch (Throwable th) {
                str2 = "";
                if (inputStream != null) {
                    str2 = "";
                }
            }
            if (errorStream != null) {
                str2 = sb;
                inputStream = errorStream;
                inputStream.close();
            }
            j91.m1505k(f6802a, "createLog: error responce: " + str2);
            return false;
        } catch (Throwable th2) {
            j91.m1516H(f6802a, "createLog: IOException when executing request ", th2);
            return false;
        }
    }

    /* renamed from: d */
    public static void m1539d() {
        synchronized (j61.class) {
            try {
                if (f6803b) {
                    return;
                }
                JSONArray jSONArray = new JSONArray(r71.EnumC1638a.f7966l1.m687i());
                if (jSONArray.length() == 0) {
                    return;
                }
                f6803b = true;
                Executors.newSingleThreadScheduledExecutor().execute(new RunnableC1449a(jSONArray));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
