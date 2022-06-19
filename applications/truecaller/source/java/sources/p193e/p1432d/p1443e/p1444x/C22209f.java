package p193e.p1432d.p1443e.p1444x;

import android.support.annotation.VisibleForTesting;
import com.freshchat.consumer.sdk.BuildConfig;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1443e.AbstractC22184o;
import p193e.p1432d.p1443e.C22168a;
import p193e.p1432d.p1443e.C22178h;
/* renamed from: e.d.e.x.f */
/* loaded from: classes-dex2jar.jar:e/d/e/x/f.class */
public class C22209f extends AbstractC22201a {

    /* renamed from: e.d.e.x.f$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/x/f$a.class */
    public static class C22210a extends FilterInputStream {

        /* renamed from: a */
        public final HttpURLConnection f61693a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C22210a(java.net.HttpURLConnection r4) {
            /*
                r3 = this;
                r0 = r4
                java.io.InputStream r0 = r0.getInputStream()     // Catch: java.io.IOException -> L8
                r5 = r0
                goto Le
            L8:
                r5 = move-exception
                r0 = r4
                java.io.InputStream r0 = r0.getErrorStream()
                r5 = r0
            Le:
                r0 = r3
                r1 = r5
                r0.<init>(r1)
                r0 = r3
                r1 = r4
                r0.f61693a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1443e.p1444x.C22209f.C22210a.<init>(java.net.HttpURLConnection):void");
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.f61693a.disconnect();
        }
    }

    /* renamed from: b */
    public static void m8454b(HttpURLConnection httpURLConnection, AbstractC22184o<?> abstractC22184o, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", abstractC22184o.getBodyContentType());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    @VisibleForTesting
    /* renamed from: c */
    public static List<C22178h> m8453c(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new C22178h(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public static void m8452d(HttpURLConnection httpURLConnection, AbstractC22184o<?> abstractC22184o) throws IOException, C22168a {
        switch (abstractC22184o.getMethod()) {
            case -1:
                byte[] postBody = abstractC22184o.getPostBody();
                if (postBody == null) {
                    return;
                }
                httpURLConnection.setRequestMethod("POST");
                m8454b(httpURLConnection, abstractC22184o, postBody);
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                byte[] body = abstractC22184o.getBody();
                if (body == null) {
                    return;
                }
                m8454b(httpURLConnection, abstractC22184o, body);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                byte[] body2 = abstractC22184o.getBody();
                if (body2 == null) {
                    return;
                }
                m8454b(httpURLConnection, abstractC22184o, body2);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod(BuildConfig.SCM_BRANCH);
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                byte[] body3 = abstractC22184o.getBody();
                if (body3 == null) {
                    return;
                }
                m8454b(httpURLConnection, abstractC22184o, body3);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    @Override // p193e.p1432d.p1443e.p1444x.AbstractC22201a
    /* renamed from: a */
    public C22208e mo8455a(AbstractC22184o<?> abstractC22184o, Map<String, String> map) throws IOException, C22168a {
        boolean z;
        Throwable th;
        String url = abstractC22184o.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(abstractC22184o.getHeaders());
        URL url2 = new URL(url);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int timeoutMs = abstractC22184o.getTimeoutMs();
        httpURLConnection.setConnectTimeout(timeoutMs);
        httpURLConnection.setReadTimeout(timeoutMs);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        "https".equals(url2.getProtocol());
        try {
            for (String str : hashMap.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) hashMap.get(str));
            }
            m8452d(httpURLConnection, abstractC22184o);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (!((abstractC22184o.getMethod() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                C22208e c22208e = new C22208e(responseCode, m8453c(httpURLConnection.getHeaderFields()));
                httpURLConnection.disconnect();
                return c22208e;
            }
            try {
                return new C22208e(responseCode, m8453c(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new C22210a(httpURLConnection));
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (!z) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
    }
}
