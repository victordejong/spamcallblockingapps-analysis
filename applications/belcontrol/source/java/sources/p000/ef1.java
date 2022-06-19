package p000;

import android.util.Log;
import com.google.android.exoplayer2.C0515C;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
/* renamed from: ef1 */
/* loaded from: classes3-dex2jar.jar:ef1.class */
public enum ef1 implements df1 {
    instance;

    @Override // p000.df1
    /* renamed from: a */
    public vf1<String> mo2167a(String str) {
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() >= 400) {
                    return vf1.m329a();
                }
                InputStream inputStream3 = httpURLConnection.getInputStream();
                vf1<String> m326d = vf1.m326d(m2166b(inputStream3));
                if (inputStream3 != null) {
                    try {
                        inputStream3.close();
                    } catch (IOException e) {
                    }
                }
                return m326d;
            } catch (IOException e2) {
                if (ue1.f8318a.booleanValue()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("On/off status check error: ");
                    sb.append(Log.getStackTraceString(e2));
                    Log.e("MoatNetImpl", sb.toString());
                }
                vf1<String> m329a = vf1.m329a();
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                    }
                }
                return m329a;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream2.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final String m2166b(InputStream inputStream) {
        int i;
        char[] cArr = new char[256];
        StringBuilder sb = new StringBuilder();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, C0515C.UTF8_NAME);
        int i2 = 0;
        do {
            int read = inputStreamReader.read(cArr, 0, 256);
            if (read <= 0) {
                break;
            }
            i = i2 + read;
            sb.append(cArr, 0, read);
            i2 = i;
        } while (i < 1024);
        return sb.toString();
    }
}
