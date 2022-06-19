package com.dropbox.core.http;

import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.util.C8637e;
import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.logging.Logger;
import javax.net.ssl.HttpsURLConnection;
/* renamed from: com.dropbox.core.http.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/d.class */
public class C8595d extends AbstractC8582a {

    /* renamed from: f */
    private final C8597a f30591f;

    /* renamed from: d */
    private static final Logger f30589d = Logger.getLogger(C8595d.class.getCanonicalName());

    /* renamed from: c */
    public static final C8595d f30588c = new C8595d(C8597a.f30592a);

    /* renamed from: e */
    private static volatile boolean f30590e = false;

    /* renamed from: com.dropbox.core.http.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/d$a.class */
    public static final class C8597a {

        /* renamed from: a */
        public static final C8597a f30592a;

        /* renamed from: b */
        final Proxy f30593b;

        /* renamed from: c */
        final long f30594c;

        /* renamed from: d */
        final long f30595d;

        /* renamed from: com.dropbox.core.http.d$a$a */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/d$a$a.class */
        public static final class C8598a {

            /* renamed from: a */
            Proxy f30596a;

            /* renamed from: b */
            long f30597b;

            /* renamed from: c */
            long f30598c;

            private C8598a() {
                this(Proxy.NO_PROXY, AbstractC8582a.f30562a, AbstractC8582a.f30563b);
            }

            private C8598a(Proxy proxy, long j, long j2) {
                this.f30596a = proxy;
                this.f30597b = j;
                this.f30598c = j2;
            }
        }

        static {
            C8598a c8598a = new C8598a();
            f30592a = new C8597a(c8598a.f30596a, c8598a.f30597b, c8598a.f30598c);
        }

        private C8597a(Proxy proxy, long j, long j2) {
            this.f30593b = proxy;
            this.f30594c = j;
            this.f30595d = j2;
        }
    }

    /* renamed from: com.dropbox.core.http.d$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/d$b.class */
    final class C8599b extends AbstractC8582a.AbstractC8585c {

        /* renamed from: c */
        private final C8637e f30600c;

        /* renamed from: d */
        private HttpURLConnection f30601d;

        public C8599b(HttpURLConnection httpURLConnection) throws IOException {
            C8595d.this = r6;
            this.f30601d = httpURLConnection;
            this.f30600c = new C8637e(C8595d.m25289a(httpURLConnection));
            httpURLConnection.connect();
        }

        @Override // com.dropbox.core.http.AbstractC8582a.AbstractC8585c
        /* renamed from: a */
        public final OutputStream mo25287a() {
            return this.f30600c;
        }

        @Override // com.dropbox.core.http.AbstractC8582a.AbstractC8585c
        /* renamed from: a */
        public final void mo25286a(IOUtil.AbstractC8630a abstractC8630a) {
            this.f30600c.f30644a = null;
        }

        @Override // com.dropbox.core.http.AbstractC8582a.AbstractC8585c
        /* renamed from: b */
        public final void mo25285b() {
            HttpURLConnection httpURLConnection = this.f30601d;
            if (httpURLConnection == null) {
                return;
            }
            if (httpURLConnection.getDoOutput()) {
                try {
                    IOUtil.m25247a(this.f30601d.getOutputStream());
                } catch (IOException e) {
                }
            }
            this.f30601d = null;
        }

        @Override // com.dropbox.core.http.AbstractC8582a.AbstractC8585c
        /* renamed from: c */
        public final AbstractC8582a.C8584b mo25284c() throws IOException {
            HttpURLConnection httpURLConnection = this.f30601d;
            if (httpURLConnection != null) {
                try {
                    return C8595d.m25292a(C8595d.this, httpURLConnection);
                } finally {
                    this.f30601d = null;
                }
            }
            throw new IllegalStateException("Can't finish().  Uploader already closed.");
        }
    }

    public C8595d(C8597a c8597a) {
        this.f30591f = c8597a;
    }

    /* renamed from: a */
    static /* synthetic */ AbstractC8582a.C8584b m25292a(C8595d c8595d, HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        return new AbstractC8582a.C8584b(responseCode, (responseCode >= 400 || responseCode == -1) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream(), httpURLConnection.getHeaderFields());
    }

    /* renamed from: a */
    static /* synthetic */ OutputStream m25289a(HttpURLConnection httpURLConnection) throws IOException {
        httpURLConnection.setDoOutput(true);
        return httpURLConnection.getOutputStream();
    }

    /* renamed from: a */
    private HttpURLConnection m25290a(String str, Iterable<AbstractC8582a.C8583a> iterable, boolean z) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection(this.f30591f.f30593b);
        httpURLConnection.setConnectTimeout((int) this.f30591f.f30594c);
        httpURLConnection.setReadTimeout((int) this.f30591f.f30595d);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        if (z) {
            httpURLConnection.setChunkedStreamingMode(16384);
        }
        if (httpURLConnection instanceof HttpsURLConnection) {
            SSLConfig.m25307a((HttpsURLConnection) httpURLConnection);
        } else if (!f30590e) {
            f30590e = true;
            f30589d.warning("Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor.");
        }
        for (AbstractC8582a.C8583a c8583a : iterable) {
            httpURLConnection.addRequestProperty(c8583a.f30564a, c8583a.f30565b);
        }
        return httpURLConnection;
    }

    @Override // com.dropbox.core.http.AbstractC8582a
    /* renamed from: a */
    public final /* synthetic */ AbstractC8582a.AbstractC8585c mo25291a(String str, Iterable iterable) throws IOException {
        HttpURLConnection m25290a = m25290a(str, iterable, false);
        m25290a.setRequestMethod("POST");
        return new C8599b(m25290a);
    }

    @Override // com.dropbox.core.http.AbstractC8582a
    /* renamed from: b */
    public final /* synthetic */ AbstractC8582a.AbstractC8585c mo25288b(String str, Iterable iterable) throws IOException {
        HttpURLConnection m25290a = m25290a(str, iterable, true);
        m25290a.setRequestMethod("POST");
        return new C8599b(m25290a);
    }
}
