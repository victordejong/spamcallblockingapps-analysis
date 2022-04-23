package com.dropbox.core.http;

import com.dropbox.core.http.a;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.e;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.logging.Logger;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/d.class */
public class d extends com.dropbox.core.http.a {
    private final a f;

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f17800d = Logger.getLogger(d.class.getCanonicalName());

    /* renamed from: c  reason: collision with root package name */
    public static final d f17799c = new d(a.f17801a);
    private static volatile boolean e = false;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17801a;

        /* renamed from: b  reason: collision with root package name */
        final Proxy f17802b;

        /* renamed from: c  reason: collision with root package name */
        final long f17803c;

        /* renamed from: d  reason: collision with root package name */
        final long f17804d;

        /* renamed from: com.dropbox.core.http.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/d$a$a.class */
        public static final class C0356a {

            /* renamed from: a  reason: collision with root package name */
            Proxy f17805a;

            /* renamed from: b  reason: collision with root package name */
            long f17806b;

            /* renamed from: c  reason: collision with root package name */
            long f17807c;

            private C0356a() {
                this(Proxy.NO_PROXY, com.dropbox.core.http.a.f17778a, com.dropbox.core.http.a.f17779b);
            }

            private C0356a(Proxy proxy, long j, long j2) {
                this.f17805a = proxy;
                this.f17806b = j;
                this.f17807c = j2;
            }
        }

        static {
            C0356a aVar = new C0356a();
            f17801a = new a(aVar.f17805a, aVar.f17806b, aVar.f17807c);
        }

        private a(Proxy proxy, long j, long j2) {
            this.f17802b = proxy;
            this.f17803c = j;
            this.f17804d = j2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/d$b.class */
    final class b extends a.c {

        /* renamed from: c  reason: collision with root package name */
        private final e f17809c;

        /* renamed from: d  reason: collision with root package name */
        private HttpURLConnection f17810d;

        public b(HttpURLConnection httpURLConnection) throws IOException {
            this.f17810d = httpURLConnection;
            this.f17809c = new e(d.a(httpURLConnection));
            httpURLConnection.connect();
        }

        @Override // com.dropbox.core.http.a.c
        public final OutputStream a() {
            return this.f17809c;
        }

        @Override // com.dropbox.core.http.a.c
        public final void a(IOUtil.a aVar) {
            this.f17809c.f17844a = null;
        }

        @Override // com.dropbox.core.http.a.c
        public final void b() {
            HttpURLConnection httpURLConnection = this.f17810d;
            if (httpURLConnection != null) {
                if (httpURLConnection.getDoOutput()) {
                    try {
                        IOUtil.a(this.f17810d.getOutputStream());
                    } catch (IOException e) {
                    }
                }
                this.f17810d = null;
            }
        }

        @Override // com.dropbox.core.http.a.c
        public final a.b c() throws IOException {
            HttpURLConnection httpURLConnection = this.f17810d;
            if (httpURLConnection != null) {
                try {
                    return d.a(d.this, httpURLConnection);
                } finally {
                    this.f17810d = null;
                }
            } else {
                throw new IllegalStateException("Can't finish().  Uploader already closed.");
            }
        }
    }

    public d(a aVar) {
        this.f = aVar;
    }

    static /* synthetic */ a.b a(d dVar, HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        return new a.b(responseCode, (responseCode >= 400 || responseCode == -1) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream(), httpURLConnection.getHeaderFields());
    }

    static /* synthetic */ OutputStream a(HttpURLConnection httpURLConnection) throws IOException {
        httpURLConnection.setDoOutput(true);
        return httpURLConnection.getOutputStream();
    }

    private HttpURLConnection a(String str, Iterable<a.C0354a> iterable, boolean z) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection(this.f.f17802b);
        httpURLConnection.setConnectTimeout((int) this.f.f17803c);
        httpURLConnection.setReadTimeout((int) this.f.f17804d);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        if (z) {
            httpURLConnection.setChunkedStreamingMode(16384);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            SSLConfig.a((HttpsURLConnection) httpURLConnection);
        } else if (!e) {
            e = true;
            f17800d.warning("Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor.");
        }
        for (a.C0354a aVar : iterable) {
            httpURLConnection.addRequestProperty(aVar.f17780a, aVar.f17781b);
        }
        return httpURLConnection;
    }

    @Override // com.dropbox.core.http.a
    public final /* synthetic */ a.c a(String str, Iterable iterable) throws IOException {
        HttpURLConnection a2 = a(str, iterable, false);
        a2.setRequestMethod("POST");
        return new b(a2);
    }

    @Override // com.dropbox.core.http.a
    public final /* synthetic */ a.c b(String str, Iterable iterable) throws IOException {
        HttpURLConnection a2 = a(str, iterable, true);
        a2.setRequestMethod("POST");
        return new b(a2);
    }
}
