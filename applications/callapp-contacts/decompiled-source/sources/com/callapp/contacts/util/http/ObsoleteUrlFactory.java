package com.callapp.contacts.util.http;

import android.support.v4.media.session.PlaybackStateCompat;
import c.ae;
import c.f;
import c.g;
import c.r;
import c.v;
import com.mopub.common.Constants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketPermission;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.security.AccessControlException;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Handshake;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory.class */
public final class ObsoleteUrlFactory implements Cloneable, URLStreamHandlerFactory {

    /* renamed from: a  reason: collision with root package name */
    static final Set<String> f16238a = new LinkedHashSet(Arrays.asList("OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "PATCH"));

    /* renamed from: b  reason: collision with root package name */
    static final TimeZone f16239b = TimeZone.getTimeZone("GMT");

    /* renamed from: c  reason: collision with root package name */
    static final ThreadLocal<DateFormat> f16240c = ThreadLocal.withInitial(_$$Lambda$ObsoleteUrlFactory$QewYbGMVVPsM_R_86untA0mH_kM.INSTANCE);

    /* renamed from: d  reason: collision with root package name */
    static final Comparator<String> f16241d = _$$Lambda$ObsoleteUrlFactory$Wy68yJqNmzoTtkCcc9DzIvGJssQ.INSTANCE;
    private OkHttpClient e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody.class */
    public static final class BufferedRequestBody extends OutputStreamRequestBody {

        /* renamed from: a  reason: collision with root package name */
        final f f16244a;

        /* renamed from: b  reason: collision with root package name */
        long f16245b = -1;

        BufferedRequestBody(long j) {
            f fVar = new f();
            this.f16244a = fVar;
            a(fVar, j);
        }

        @Override // com.callapp.contacts.util.http.ObsoleteUrlFactory.OutputStreamRequestBody
        public final Request a(Request request) throws IOException {
            if (request.header("Content-Length") != null) {
                return request;
            }
            this.e.close();
            this.f16245b = this.f16244a.f6289b;
            return request.newBuilder().removeHeader("Transfer-Encoding").header("Content-Length", Long.toString(this.f16244a.f6289b)).build();
        }

        @Override // com.callapp.contacts.util.http.ObsoleteUrlFactory.OutputStreamRequestBody, okhttp3.RequestBody
        public final long contentLength() {
            return this.f16245b;
        }

        @Override // okhttp3.RequestBody
        public final void writeTo(g gVar) {
            this.f16244a.a(gVar.a(), 0L, this.f16244a.f6289b);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection.class */
    static abstract class DelegatingHttpsURLConnection extends HttpsURLConnection {

        /* renamed from: a  reason: collision with root package name */
        private final HttpURLConnection f16246a;

        DelegatingHttpsURLConnection(HttpURLConnection httpURLConnection) {
            super(httpURLConnection.getURL());
            this.f16246a = httpURLConnection;
        }

        protected abstract Handshake a();

        @Override // java.net.URLConnection
        public void addRequestProperty(String str, String str2) {
            this.f16246a.addRequestProperty(str, str2);
        }

        @Override // java.net.URLConnection
        public void connect() throws IOException {
            this.connected = true;
            this.f16246a.connect();
        }

        @Override // java.net.HttpURLConnection
        public void disconnect() {
            this.f16246a.disconnect();
        }

        @Override // java.net.URLConnection
        public boolean getAllowUserInteraction() {
            return this.f16246a.getAllowUserInteraction();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public String getCipherSuite() {
            Handshake a2 = a();
            if (a2 != null) {
                return a2.cipherSuite().javaName();
            }
            return null;
        }

        @Override // java.net.URLConnection
        public int getConnectTimeout() {
            return this.f16246a.getConnectTimeout();
        }

        @Override // java.net.URLConnection
        public Object getContent() throws IOException {
            return this.f16246a.getContent();
        }

        @Override // java.net.URLConnection
        public Object getContent(Class[] clsArr) throws IOException {
            return this.f16246a.getContent(clsArr);
        }

        @Override // java.net.URLConnection
        public String getContentEncoding() {
            return this.f16246a.getContentEncoding();
        }

        @Override // java.net.URLConnection
        public int getContentLength() {
            return this.f16246a.getContentLength();
        }

        @Override // java.net.URLConnection
        public long getContentLengthLong() {
            return this.f16246a.getContentLengthLong();
        }

        @Override // java.net.URLConnection
        public String getContentType() {
            return this.f16246a.getContentType();
        }

        @Override // java.net.URLConnection
        public long getDate() {
            return this.f16246a.getDate();
        }

        @Override // java.net.URLConnection
        public boolean getDefaultUseCaches() {
            return this.f16246a.getDefaultUseCaches();
        }

        @Override // java.net.URLConnection
        public boolean getDoInput() {
            return this.f16246a.getDoInput();
        }

        @Override // java.net.URLConnection
        public boolean getDoOutput() {
            return this.f16246a.getDoOutput();
        }

        @Override // java.net.HttpURLConnection
        public InputStream getErrorStream() {
            return this.f16246a.getErrorStream();
        }

        @Override // java.net.URLConnection
        public long getExpiration() {
            return this.f16246a.getExpiration();
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public String getHeaderField(int i) {
            return this.f16246a.getHeaderField(i);
        }

        @Override // java.net.URLConnection
        public String getHeaderField(String str) {
            return this.f16246a.getHeaderField(str);
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public long getHeaderFieldDate(String str, long j) {
            return this.f16246a.getHeaderFieldDate(str, j);
        }

        @Override // java.net.URLConnection
        public int getHeaderFieldInt(String str, int i) {
            return this.f16246a.getHeaderFieldInt(str, i);
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public String getHeaderFieldKey(int i) {
            return this.f16246a.getHeaderFieldKey(i);
        }

        @Override // java.net.URLConnection
        public long getHeaderFieldLong(String str, long j) {
            return this.f16246a.getHeaderFieldLong(str, j);
        }

        @Override // java.net.URLConnection
        public Map<String, List<String>> getHeaderFields() {
            return this.f16246a.getHeaderFields();
        }

        @Override // java.net.URLConnection
        public long getIfModifiedSince() {
            return this.f16246a.getIfModifiedSince();
        }

        @Override // java.net.URLConnection
        public InputStream getInputStream() throws IOException {
            return this.f16246a.getInputStream();
        }

        @Override // java.net.HttpURLConnection
        public boolean getInstanceFollowRedirects() {
            return this.f16246a.getInstanceFollowRedirects();
        }

        @Override // java.net.URLConnection
        public long getLastModified() {
            return this.f16246a.getLastModified();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Certificate[] getLocalCertificates() {
            Handshake a2 = a();
            if (a2 == null) {
                return null;
            }
            List<Certificate> localCertificates = a2.localCertificates();
            if (!localCertificates.isEmpty()) {
                return (Certificate[]) localCertificates.toArray(new Certificate[localCertificates.size()]);
            }
            return null;
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Principal getLocalPrincipal() {
            Handshake a2 = a();
            if (a2 != null) {
                return a2.localPrincipal();
            }
            return null;
        }

        @Override // java.net.URLConnection
        public OutputStream getOutputStream() throws IOException {
            return this.f16246a.getOutputStream();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Principal getPeerPrincipal() {
            Handshake a2 = a();
            if (a2 != null) {
                return a2.peerPrincipal();
            }
            return null;
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public Permission getPermission() throws IOException {
            return this.f16246a.getPermission();
        }

        @Override // java.net.URLConnection
        public int getReadTimeout() {
            return this.f16246a.getReadTimeout();
        }

        @Override // java.net.HttpURLConnection
        public String getRequestMethod() {
            return this.f16246a.getRequestMethod();
        }

        @Override // java.net.URLConnection
        public Map<String, List<String>> getRequestProperties() {
            return this.f16246a.getRequestProperties();
        }

        @Override // java.net.URLConnection
        public String getRequestProperty(String str) {
            return this.f16246a.getRequestProperty(str);
        }

        @Override // java.net.HttpURLConnection
        public int getResponseCode() throws IOException {
            return this.f16246a.getResponseCode();
        }

        @Override // java.net.HttpURLConnection
        public String getResponseMessage() throws IOException {
            return this.f16246a.getResponseMessage();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Certificate[] getServerCertificates() {
            Handshake a2 = a();
            if (a2 == null) {
                return null;
            }
            List<Certificate> peerCertificates = a2.peerCertificates();
            if (!peerCertificates.isEmpty()) {
                return (Certificate[]) peerCertificates.toArray(new Certificate[peerCertificates.size()]);
            }
            return null;
        }

        @Override // java.net.URLConnection
        public URL getURL() {
            return this.f16246a.getURL();
        }

        @Override // java.net.URLConnection
        public boolean getUseCaches() {
            return this.f16246a.getUseCaches();
        }

        @Override // java.net.URLConnection
        public void setAllowUserInteraction(boolean z) {
            this.f16246a.setAllowUserInteraction(z);
        }

        @Override // java.net.HttpURLConnection
        public void setChunkedStreamingMode(int i) {
            this.f16246a.setChunkedStreamingMode(i);
        }

        @Override // java.net.URLConnection
        public void setConnectTimeout(int i) {
            this.f16246a.setConnectTimeout(i);
        }

        @Override // java.net.URLConnection
        public void setDefaultUseCaches(boolean z) {
            this.f16246a.setDefaultUseCaches(z);
        }

        @Override // java.net.URLConnection
        public void setDoInput(boolean z) {
            this.f16246a.setDoInput(z);
        }

        @Override // java.net.URLConnection
        public void setDoOutput(boolean z) {
            this.f16246a.setDoOutput(z);
        }

        @Override // java.net.HttpURLConnection
        public void setFixedLengthStreamingMode(int i) {
            this.f16246a.setFixedLengthStreamingMode(i);
        }

        @Override // java.net.HttpURLConnection
        public void setFixedLengthStreamingMode(long j) {
            this.f16246a.setFixedLengthStreamingMode(j);
        }

        @Override // java.net.URLConnection
        public void setIfModifiedSince(long j) {
            this.f16246a.setIfModifiedSince(j);
        }

        @Override // java.net.HttpURLConnection
        public void setInstanceFollowRedirects(boolean z) {
            this.f16246a.setInstanceFollowRedirects(z);
        }

        @Override // java.net.URLConnection
        public void setReadTimeout(int i) {
            this.f16246a.setReadTimeout(i);
        }

        @Override // java.net.HttpURLConnection
        public void setRequestMethod(String str) throws ProtocolException {
            this.f16246a.setRequestMethod(str);
        }

        @Override // java.net.URLConnection
        public void setRequestProperty(String str, String str2) {
            this.f16246a.setRequestProperty(str, str2);
        }

        @Override // java.net.URLConnection
        public void setUseCaches(boolean z) {
            this.f16246a.setUseCaches(z);
        }

        @Override // java.net.URLConnection
        public String toString() {
            return this.f16246a.toString();
        }

        @Override // java.net.HttpURLConnection
        public boolean usingProxy() {
            return this.f16246a.usingProxy();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection.class */
    public static final class OkHttpURLConnection extends HttpURLConnection implements Callback {

        /* renamed from: a  reason: collision with root package name */
        OkHttpClient f16247a;

        /* renamed from: d  reason: collision with root package name */
        Headers f16250d;
        boolean e;
        Call f;
        Response h;
        Proxy j;
        Handshake k;
        private Response m;
        private Throwable n;

        /* renamed from: b  reason: collision with root package name */
        final NetworkInterceptor f16248b = new NetworkInterceptor();

        /* renamed from: c  reason: collision with root package name */
        Headers.Builder f16249c = new Headers.Builder();
        long g = -1;
        private final Object l = new Object();
        boolean i = true;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor.class */
        public final class NetworkInterceptor implements Interceptor {

            /* renamed from: b  reason: collision with root package name */
            private boolean f16252b;

            NetworkInterceptor() {
            }

            public final void a() {
                synchronized (OkHttpURLConnection.this.l) {
                    this.f16252b = true;
                    OkHttpURLConnection.this.l.notifyAll();
                }
            }

            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) throws IOException {
                Request request = chain.request();
                synchronized (OkHttpURLConnection.this.l) {
                    OkHttpURLConnection.this.i = false;
                    OkHttpURLConnection.this.j = chain.connection().route().proxy();
                    OkHttpURLConnection.this.k = chain.connection().handshake();
                    OkHttpURLConnection.this.l.notifyAll();
                    while (!this.f16252b) {
                        try {
                            OkHttpURLConnection.this.l.wait();
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    }
                }
                Request request2 = request;
                if (request.body() instanceof OutputStreamRequestBody) {
                    request2 = ((OutputStreamRequestBody) request.body()).a(request);
                }
                Response proceed = chain.proceed(request2);
                synchronized (OkHttpURLConnection.this.l) {
                    OkHttpURLConnection.this.h = proceed;
                    OkHttpURLConnection.this.url = proceed.request().url().url();
                }
                return proceed;
            }
        }

        OkHttpURLConnection(URL url, OkHttpClient okHttpClient) {
            super(url);
            this.f16247a = okHttpClient;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v64, types: [long] */
        /* JADX WARN: Type inference failed for: r10v0 */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private okhttp3.Call a() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 460
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.http.ObsoleteUrlFactory.OkHttpURLConnection.a():okhttp3.Call");
        }

        private Response a(boolean z) throws IOException {
            Response response;
            synchronized (this.l) {
                Response response2 = this.m;
                if (response2 != null) {
                    return response2;
                }
                Throwable th = this.n;
                if (th == null) {
                    Call a2 = a();
                    this.f16248b.a();
                    OutputStreamRequestBody outputStreamRequestBody = (OutputStreamRequestBody) a2.request().body();
                    if (outputStreamRequestBody != null) {
                        outputStreamRequestBody.e.close();
                    }
                    if (this.e) {
                        synchronized (this.l) {
                            while (this.m == null && this.n == null) {
                                try {
                                    this.l.wait();
                                } catch (InterruptedException e) {
                                    Thread.currentThread().interrupt();
                                    throw new InterruptedIOException();
                                }
                            }
                        }
                    } else {
                        this.e = true;
                        try {
                            onResponse(a2, a2.execute());
                        } catch (IOException e2) {
                            onFailure(a2, e2);
                        }
                    }
                    synchronized (this.l) {
                        Throwable th2 = this.n;
                        if (th2 == null) {
                            Response response3 = this.m;
                            if (response3 != null) {
                                return response3;
                            }
                            throw new AssertionError();
                        }
                        throw ObsoleteUrlFactory.a(th2);
                    }
                } else if (z && (response = this.h) != null) {
                    return response;
                } else {
                    throw ObsoleteUrlFactory.a(th);
                }
            }
        }

        @Override // java.net.URLConnection
        public final void addRequestProperty(String str, String str2) {
            if (!this.connected) {
                Objects.requireNonNull(str, "field == null");
                if (str2 != null) {
                    this.f16249c.add(str, str2);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot add request property after connection is made");
        }

        @Override // java.net.URLConnection
        public final void connect() throws IOException {
            if (!this.e) {
                Call a2 = a();
                this.e = true;
                a2.enqueue(this);
                synchronized (this.l) {
                    while (this.i && this.m == null && this.n == null) {
                        try {
                            this.l.wait();
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    }
                    Throwable th = this.n;
                    if (th != null) {
                        throw ObsoleteUrlFactory.a(th);
                    }
                }
            }
        }

        @Override // java.net.HttpURLConnection
        public final void disconnect() {
            if (this.f != null) {
                this.f16248b.a();
                this.f.cancel();
            }
        }

        @Override // java.net.URLConnection
        public final int getConnectTimeout() {
            return this.f16247a.connectTimeoutMillis();
        }

        @Override // java.net.HttpURLConnection
        public final InputStream getErrorStream() {
            try {
                Response a2 = a(true);
                if (!ObsoleteUrlFactory.a(a2) || a2.code() < 400) {
                    return null;
                }
                return a2.body().byteStream();
            } catch (IOException e) {
                return null;
            }
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public final String getHeaderField(int i) {
            try {
                Headers headers = getHeaders();
                if (i >= 0 && i < headers.size()) {
                    return headers.value(i);
                }
                return null;
            } catch (IOException e) {
                return null;
            }
        }

        @Override // java.net.URLConnection
        public final String getHeaderField(String str) {
            try {
                return str == null ? ObsoleteUrlFactory.c(a(true)) : getHeaders().get(str);
            } catch (IOException e) {
                return null;
            }
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public final String getHeaderFieldKey(int i) {
            try {
                Headers headers = getHeaders();
                if (i >= 0 && i < headers.size()) {
                    return headers.name(i);
                }
                return null;
            } catch (IOException e) {
                return null;
            }
        }

        @Override // java.net.URLConnection
        public final Map<String, List<String>> getHeaderFields() {
            try {
                return ObsoleteUrlFactory.a(getHeaders(), ObsoleteUrlFactory.c(a(true)));
            } catch (IOException e) {
                return Collections.emptyMap();
            }
        }

        final Headers getHeaders() throws IOException {
            if (this.f16250d == null) {
                Response a2 = a(true);
                this.f16250d = a2.headers().newBuilder().add("ObsoleteUrlFactory-Selected-Protocol", a2.protocol().toString()).add("ObsoleteUrlFactory-Response-Source", ObsoleteUrlFactory.b(a2)).build();
            }
            return this.f16250d;
        }

        @Override // java.net.URLConnection
        public final InputStream getInputStream() throws IOException {
            if (this.doInput) {
                Response a2 = a(false);
                if (a2.code() < 400) {
                    return a2.body().byteStream();
                }
                throw new FileNotFoundException(this.url.toString());
            }
            throw new ProtocolException("This protocol does not support input");
        }

        @Override // java.net.HttpURLConnection
        public final boolean getInstanceFollowRedirects() {
            return this.f16247a.followRedirects();
        }

        @Override // java.net.URLConnection
        public final OutputStream getOutputStream() throws IOException {
            OutputStreamRequestBody outputStreamRequestBody = (OutputStreamRequestBody) a().request().body();
            if (outputStreamRequestBody != null) {
                if (outputStreamRequestBody instanceof StreamedRequestBody) {
                    connect();
                    this.f16248b.a();
                }
                if (!outputStreamRequestBody.f) {
                    return outputStreamRequestBody.e;
                }
                throw new ProtocolException("cannot write request body after response has been read");
            }
            throw new ProtocolException("method does not support a request body: " + this.method);
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public final Permission getPermission() {
            URL url = getURL();
            String host = url.getHost();
            int port = url.getPort() != -1 ? url.getPort() : HttpUrl.defaultPort(url.getProtocol());
            if (usingProxy()) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) this.f16247a.proxy().address();
                host = inetSocketAddress.getHostName();
                port = inetSocketAddress.getPort();
            }
            return new SocketPermission(host + ":" + port, "connect, resolve");
        }

        @Override // java.net.URLConnection
        public final int getReadTimeout() {
            return this.f16247a.readTimeoutMillis();
        }

        @Override // java.net.URLConnection
        public final Map<String, List<String>> getRequestProperties() {
            if (!this.connected) {
                return ObsoleteUrlFactory.a(this.f16249c.build(), (String) null);
            }
            throw new IllegalStateException("Cannot access request header fields after connection is set");
        }

        @Override // java.net.URLConnection
        public final String getRequestProperty(String str) {
            if (str == null) {
                return null;
            }
            return this.f16249c.get(str);
        }

        @Override // java.net.HttpURLConnection
        public final int getResponseCode() throws IOException {
            return a(true).code();
        }

        @Override // java.net.HttpURLConnection
        public final String getResponseMessage() throws IOException {
            return a(true).message();
        }

        @Override // okhttp3.Callback
        public final void onFailure(Call call, IOException iOException) {
            synchronized (this.l) {
                Throwable th = iOException;
                if (iOException instanceof UnexpectedException) {
                    th = iOException.getCause();
                }
                this.n = th;
                this.l.notifyAll();
            }
        }

        @Override // okhttp3.Callback
        public final void onResponse(Call call, Response response) {
            synchronized (this.l) {
                this.m = response;
                this.k = response.handshake();
                this.url = response.request().url().url();
                this.l.notifyAll();
            }
        }

        @Override // java.net.URLConnection
        public final void setConnectTimeout(int i) {
            this.f16247a = this.f16247a.newBuilder().connectTimeout(i, TimeUnit.MILLISECONDS).build();
        }

        @Override // java.net.HttpURLConnection
        public final void setFixedLengthStreamingMode(int i) {
            setFixedLengthStreamingMode(i);
        }

        @Override // java.net.HttpURLConnection
        public final void setFixedLengthStreamingMode(long j) {
            if (((HttpURLConnection) this).connected) {
                throw new IllegalStateException("Already connected");
            } else if (this.chunkLength > 0) {
                throw new IllegalStateException("Already in chunked mode");
            } else if (j >= 0) {
                this.g = j;
                ((HttpURLConnection) this).fixedContentLength = (int) Math.min(j, 2147483647L);
            } else {
                throw new IllegalArgumentException("contentLength < 0");
            }
        }

        @Override // java.net.URLConnection
        public final void setIfModifiedSince(long j) {
            super.setIfModifiedSince(j);
            if (this.ifModifiedSince != 0) {
                this.f16249c.set("If-Modified-Since", ObsoleteUrlFactory.a(new Date(this.ifModifiedSince)));
            } else {
                this.f16249c.removeAll("If-Modified-Since");
            }
        }

        @Override // java.net.HttpURLConnection
        public final void setInstanceFollowRedirects(boolean z) {
            this.f16247a = this.f16247a.newBuilder().followRedirects(z).build();
        }

        @Override // java.net.URLConnection
        public final void setReadTimeout(int i) {
            this.f16247a = this.f16247a.newBuilder().readTimeout(i, TimeUnit.MILLISECONDS).build();
        }

        @Override // java.net.HttpURLConnection
        public final void setRequestMethod(String str) throws ProtocolException {
            if (ObsoleteUrlFactory.f16238a.contains(str)) {
                this.method = str;
                return;
            }
            throw new ProtocolException("Expected one of " + ObsoleteUrlFactory.f16238a + " but was " + str);
        }

        @Override // java.net.URLConnection
        public final void setRequestProperty(String str, String str2) {
            if (!this.connected) {
                Objects.requireNonNull(str, "field == null");
                if (str2 != null) {
                    this.f16249c.set(str, str2);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot set request property after connection is made");
        }

        @Override // java.net.HttpURLConnection
        public final boolean usingProxy() {
            if (this.j != null) {
                return true;
            }
            Proxy proxy = this.f16247a.proxy();
            return (proxy == null || proxy.type() == Proxy.Type.DIRECT) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection.class */
    public static final class OkHttpsURLConnection extends DelegatingHttpsURLConnection {

        /* renamed from: a  reason: collision with root package name */
        private final OkHttpURLConnection f16253a;

        OkHttpsURLConnection(OkHttpURLConnection okHttpURLConnection) {
            super(okHttpURLConnection);
            this.f16253a = okHttpURLConnection;
        }

        OkHttpsURLConnection(URL url, OkHttpClient okHttpClient) {
            this(new OkHttpURLConnection(url, okHttpClient));
        }

        @Override // com.callapp.contacts.util.http.ObsoleteUrlFactory.DelegatingHttpsURLConnection
        protected final Handshake a() {
            if (this.f16253a.f != null) {
                return this.f16253a.k;
            }
            throw new IllegalStateException("Connection has not yet been established");
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public final HostnameVerifier getHostnameVerifier() {
            return this.f16253a.f16247a.hostnameVerifier();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public final SSLSocketFactory getSSLSocketFactory() {
            return this.f16253a.f16247a.sslSocketFactory();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public final void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
            OkHttpURLConnection okHttpURLConnection = this.f16253a;
            okHttpURLConnection.f16247a = okHttpURLConnection.f16247a.newBuilder().hostnameVerifier(hostnameVerifier).build();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public final void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
            if (sSLSocketFactory != null) {
                OkHttpURLConnection okHttpURLConnection = this.f16253a;
                okHttpURLConnection.f16247a = okHttpURLConnection.f16247a.newBuilder().sslSocketFactory(sSLSocketFactory).build();
                return;
            }
            throw new IllegalArgumentException("sslSocketFactory == null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody.class */
    public static abstract class OutputStreamRequestBody extends RequestBody {

        /* renamed from: c  reason: collision with root package name */
        ae f16254c;

        /* renamed from: d  reason: collision with root package name */
        long f16255d;
        OutputStream e;
        boolean f;

        OutputStreamRequestBody() {
        }

        public Request a(Request request) throws IOException {
            return request;
        }

        final void a(final g gVar, final long j) {
            this.f16254c = gVar.timeout();
            this.f16255d = j;
            this.e = new OutputStream() { // from class: com.callapp.contacts.util.http.ObsoleteUrlFactory.OutputStreamRequestBody.1

                /* renamed from: d  reason: collision with root package name */
                private long f16259d;

                @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    OutputStreamRequestBody.this.f = true;
                    long j2 = j;
                    if (j2 == -1 || this.f16259d >= j2) {
                        gVar.close();
                        return;
                    }
                    throw new ProtocolException("expected " + j + " bytes but received " + this.f16259d);
                }

                @Override // java.io.OutputStream, java.io.Flushable
                public void flush() throws IOException {
                    if (!OutputStreamRequestBody.this.f) {
                        gVar.flush();
                    }
                }

                @Override // java.io.OutputStream
                public void write(int i) throws IOException {
                    write(new byte[]{(byte) i}, 0, 1);
                }

                @Override // java.io.OutputStream
                public void write(byte[] bArr, int i, int i2) throws IOException {
                    if (!OutputStreamRequestBody.this.f) {
                        long j2 = j;
                        if (j2 == -1 || this.f16259d + i2 <= j2) {
                            this.f16259d += i2;
                            try {
                                gVar.c(bArr, i, i2);
                            } catch (InterruptedIOException e) {
                                throw new SocketTimeoutException(e.getMessage());
                            }
                        } else {
                            throw new ProtocolException("expected " + j + " bytes but received " + this.f16259d + i2);
                        }
                    } else {
                        throw new IOException("closed");
                    }
                }
            };
        }

        @Override // okhttp3.RequestBody
        public long contentLength() {
            return this.f16255d;
        }

        @Override // okhttp3.RequestBody
        public final MediaType contentType() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody.class */
    public static final class StreamedRequestBody extends OutputStreamRequestBody {

        /* renamed from: a  reason: collision with root package name */
        private final v f16260a;

        StreamedRequestBody(long j) {
            v vVar = new v(PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            this.f16260a = vVar;
            a(r.a(vVar.f), j);
        }

        @Override // okhttp3.RequestBody
        public final boolean isOneShot() {
            return true;
        }

        @Override // okhttp3.RequestBody
        public final void writeTo(g gVar) throws IOException {
            f fVar = new f();
            while (this.f16260a.g.read(fVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                gVar.write(fVar, fVar.f6289b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException.class */
    public static final class UnexpectedException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        static final Interceptor f16261a = _$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8_hD8QlFg7Sc0o.INSTANCE;

        UnexpectedException(Throwable th) {
            super(th);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Response a(Interceptor.Chain chain) throws IOException {
            try {
                return chain.proceed(chain.request());
            } catch (Error | RuntimeException e) {
                throw new UnexpectedException(e);
            }
        }
    }

    public ObsoleteUrlFactory(OkHttpClient okHttpClient) {
        this.e = okHttpClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(String str, String str2) {
        if (str == str2) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
    }

    private static long a(Headers headers) {
        String str = headers.get("Content-Length");
        long j = -1;
        if (str == null) {
            return -1L;
        }
        try {
            j = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        return j;
    }

    static IOException a(Throwable th) throws IOException {
        if (th instanceof IOException) {
            throw ((IOException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        } else if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else {
            throw new AssertionError();
        }
    }

    static String a() {
        String str;
        int codePointAt;
        String b2 = b("http.agent");
        if (b2 == null) {
            return "ObsoleteUrlFactory";
        }
        int length = b2.length();
        int i = 0;
        while (true) {
            str = b2;
            if (i >= length) {
                break;
            }
            codePointAt = b2.codePointAt(i);
            if (codePointAt <= 31 || codePointAt >= 127) {
                break;
            }
            i += Character.charCount(codePointAt);
        }
        f fVar = new f();
        fVar.a(b2, 0, i);
        fVar.a(63);
        int i2 = i;
        while (true) {
            int charCount = i2 + Character.charCount(codePointAt);
            if (charCount >= length) {
                break;
            }
            int codePointAt2 = b2.codePointAt(charCount);
            fVar.a((codePointAt2 <= 31 || codePointAt2 >= 127) ? 63 : codePointAt2);
            i2 = charCount;
            codePointAt = codePointAt2;
        }
        str = fVar.r();
        return str;
    }

    static String a(Date date) {
        return f16240c.get().format(date);
    }

    static Map<String, List<String>> a(Headers headers, String str) {
        TreeMap treeMap = new TreeMap(f16241d);
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(name);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(value);
            treeMap.put(name, Collections.unmodifiableList(arrayList));
        }
        if (str != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str)));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    static boolean a(String str) {
        return !str.equals("GET") && !str.equals("HEAD");
    }

    static boolean a(Response response) {
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int code = response.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && a(response.headers()) == -1 && !"chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) ? false : true;
    }

    private static String b(String str) {
        try {
            String property = System.getProperty(str);
            if (property != null) {
                return property;
            }
            return null;
        } catch (AccessControlException e) {
            return null;
        }
    }

    static String b(Response response) {
        if (response.networkResponse() == null) {
            if (response.cacheResponse() == null) {
                return "NONE";
            }
            return "CACHE " + response.code();
        } else if (response.cacheResponse() == null) {
            return "NETWORK " + response.code();
        } else {
            return "CONDITIONAL_CACHE " + response.networkResponse().code();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DateFormat b() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setLenient(false);
        simpleDateFormat.setTimeZone(f16239b);
        return simpleDateFormat;
    }

    static String c(Response response) {
        StringBuilder sb = new StringBuilder();
        sb.append(response.protocol() == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(response.code());
        sb.append(' ');
        sb.append(response.message());
        return sb.toString();
    }

    public final HttpURLConnection a(URL url) {
        return a(url, this.e.proxy());
    }

    final HttpURLConnection a(URL url, Proxy proxy) {
        String protocol = url.getProtocol();
        OkHttpClient build = this.e.newBuilder().proxy(proxy).build();
        if (protocol.equals("http")) {
            return new OkHttpURLConnection(url, build);
        }
        if (protocol.equals(Constants.HTTPS)) {
            return new OkHttpsURLConnection(url, build);
        }
        throw new IllegalArgumentException("Unexpected protocol: ".concat(String.valueOf(protocol)));
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new ObsoleteUrlFactory(this.e);
    }

    @Override // java.net.URLStreamHandlerFactory
    public final URLStreamHandler createURLStreamHandler(final String str) {
        if (str.equals("http") || str.equals(Constants.HTTPS)) {
            return new URLStreamHandler() { // from class: com.callapp.contacts.util.http.ObsoleteUrlFactory.1
                @Override // java.net.URLStreamHandler
                protected int getDefaultPort() {
                    if (str.equals("http")) {
                        return 80;
                    }
                    if (str.equals(Constants.HTTPS)) {
                        return 443;
                    }
                    throw new AssertionError();
                }

                @Override // java.net.URLStreamHandler
                protected URLConnection openConnection(URL url) {
                    return ObsoleteUrlFactory.this.a(url);
                }

                @Override // java.net.URLStreamHandler
                protected URLConnection openConnection(URL url, Proxy proxy) {
                    return ObsoleteUrlFactory.this.a(url, proxy);
                }
            };
        }
        return null;
    }
}
