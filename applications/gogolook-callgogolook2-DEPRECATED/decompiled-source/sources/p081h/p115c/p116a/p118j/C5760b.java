package p081h.p115c.p116a.p118j;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p081h.p115c.p116a.C5716a;
/* renamed from: h.c.a.j.b */
/* loaded from: classes-dex2jar.jar:h/c/a/j/b.class */
public class C5760b {

    /* renamed from: a */
    public AbstractC5761a f14413a;

    /* renamed from: b */
    public final JSONObject f14414b;

    /* renamed from: d */
    public final String f14416d;

    /* renamed from: e */
    public final String f14417e;

    /* renamed from: c */
    public final Map<String, String> f14415c = new HashMap();

    /* renamed from: f */
    public int f14418f = 1000;

    /* renamed from: g */
    public int f14419g = 2000;

    /* renamed from: h.c.a.j.b$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/j/b$a.class */
    public interface AbstractC5761a {
        /* renamed from: a */
        void mo24542a(C5762c cVar);
    }

    public C5760b(String str, String str2, JSONObject jSONObject) {
        this.f14416d = str;
        this.f14417e = str2;
        this.f14414b = jSONObject;
    }

    /* renamed from: a */
    public static C5760b m24545a(String str) {
        return new C5760b(str, "GET", null);
    }

    /* renamed from: a */
    public final C5760b m24546a(AbstractC5761a aVar) {
        this.f14413a = aVar;
        return this;
    }

    /* renamed from: a */
    public C5762c m24547a() {
        JSONObject jSONObject = this.f14414b;
        return m24544a(jSONObject != null ? jSONObject.toString().getBytes() : null);
    }

    /* renamed from: a */
    public final C5762c m24544a(byte[] bArr) {
        Throwable th;
        Exception e;
        Error e2;
        C5716a.m24661a("[Appier SDK]", "Requesting:", this.f14416d);
        HttpURLConnection httpURLConnection = null;
        HttpURLConnection httpURLConnection2 = null;
        HttpURLConnection httpURLConnection3 = null;
        HttpURLConnection httpURLConnection4 = null;
        HttpURLConnection httpURLConnection5 = null;
        HttpURLConnection httpURLConnection6 = null;
        int i = -1;
        try {
            try {
                httpURLConnection6 = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(this.f14416d).openConnection()));
                i = -1;
                i = -1;
                i = -1;
                i = -1;
                i = -1;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
        } catch (OutOfMemoryError e4) {
        } catch (Error e5) {
            e2 = e5;
        } catch (MalformedURLException e6) {
        } catch (Exception e7) {
            e = e7;
        }
        try {
            for (String str : this.f14415c.keySet()) {
                httpURLConnection6.setRequestProperty(str, this.f14415c.get(str));
            }
            if (bArr != null) {
                httpURLConnection6.setDoOutput(true);
            }
            httpURLConnection6.setRequestMethod(this.f14417e);
            httpURLConnection6.setConnectTimeout(this.f14419g);
            httpURLConnection6.setReadTimeout(this.f14418f);
            httpURLConnection6.connect();
            if (bArr != null) {
                httpURLConnection6.getOutputStream().write(bArr);
            }
            int responseCode = httpURLConnection6.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection6.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
            bufferedReader.close();
            i = responseCode;
            i = responseCode;
            i = responseCode;
            i = responseCode;
            i = responseCode;
            C5762c a = C5762c.m24540a(this, sb.toString(), responseCode, false);
            if (httpURLConnection6 != null) {
                httpURLConnection6.disconnect();
            }
            return a;
        } catch (IOException e8) {
            httpURLConnection4 = httpURLConnection6;
            C5762c a2 = C5762c.m24540a(this, "IOException", i, true);
            if (httpURLConnection4 != null) {
                httpURLConnection4.disconnect();
            }
            return a2;
        } catch (Exception e9) {
            e = e9;
            httpURLConnection2 = httpURLConnection6;
            C5762c a3 = C5762c.m24540a(this, e.toString(), i, true);
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return a3;
        } catch (OutOfMemoryError e10) {
            httpURLConnection3 = httpURLConnection6;
            C5762c a4 = C5762c.m24540a(this, "OutOfMemoryError", i, true);
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
            }
            return a4;
        } catch (Error e11) {
            e2 = e11;
            httpURLConnection = httpURLConnection6;
            C5762c a5 = C5762c.m24540a(this, e2.toString(), i, true);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return a5;
        } catch (MalformedURLException e12) {
            httpURLConnection5 = httpURLConnection6;
            C5762c a6 = C5762c.m24540a(this, "MalformedURLException", i, true);
            if (httpURLConnection5 != null) {
                httpURLConnection5.disconnect();
            }
            return a6;
        } catch (Throwable th3) {
            th = th3;
            if (httpURLConnection6 != null) {
                httpURLConnection6.disconnect();
            }
            throw th;
        }
    }

    /* renamed from: b */
    public AbstractC5761a m24543b() {
        return this.f14413a;
    }
}
