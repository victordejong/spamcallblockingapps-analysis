package com.callapp.contacts.util.http;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.mopub.common.Constants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
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
import okhttp3.Dispatcher;
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
import p092c.AbstractC3206g;
import p092c.C3191ae;
import p092c.C3202f;
import p092c.C3218r;
import p092c.C3223v;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory.class */
public final class ObsoleteUrlFactory implements Cloneable, URLStreamHandlerFactory {

    /* renamed from: a */
    static final Set<String> f28310a = new LinkedHashSet(Arrays.asList("OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "PATCH"));

    /* renamed from: b */
    static final TimeZone f28311b = TimeZone.getTimeZone("GMT");

    /* renamed from: c */
    static final ThreadLocal<DateFormat> f28312c = ThreadLocal.withInitial(_$$Lambda$ObsoleteUrlFactory$QewYbGMVVPsM_R_86untA0mH_kM.INSTANCE);

    /* renamed from: d */
    static final Comparator<String> f28313d = _$$Lambda$ObsoleteUrlFactory$Wy68yJqNmzoTtkCcc9DzIvGJssQ.INSTANCE;

    /* renamed from: e */
    private OkHttpClient f28314e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody.class */
    public static final class BufferedRequestBody extends OutputStreamRequestBody {

        /* renamed from: a */
        final C3202f f28317a;

        /* renamed from: b */
        long f28318b = -1;

        BufferedRequestBody(long j) {
            C3202f c3202f = new C3202f();
            this.f28317a = c3202f;
            m26940a(c3202f, j);
        }

        @Override // com.callapp.contacts.util.http.ObsoleteUrlFactory.OutputStreamRequestBody
        /* renamed from: a */
        public final Request mo26939a(Request request) throws IOException {
            if (request.header("Content-Length") != null) {
                return request;
            }
            this.f28339e.close();
            this.f28318b = this.f28317a.f11572b;
            return request.newBuilder().removeHeader("Transfer-Encoding").header("Content-Length", Long.toString(this.f28317a.f11572b)).build();
        }

        @Override // com.callapp.contacts.util.http.ObsoleteUrlFactory.OutputStreamRequestBody, okhttp3.RequestBody
        public final long contentLength() {
            return this.f28318b;
        }

        @Override // okhttp3.RequestBody
        public final void writeTo(AbstractC3206g abstractC3206g) {
            this.f28317a.m39216a(abstractC3206g.mo39133a(), 0L, this.f28317a.f11572b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$DelegatingHttpsURLConnection.class */
    public static abstract class DelegatingHttpsURLConnection extends HttpsURLConnection {

        /* renamed from: a */
        private final HttpURLConnection f28319a;

        DelegatingHttpsURLConnection(HttpURLConnection httpURLConnection) {
            super(httpURLConnection.getURL());
            this.f28319a = httpURLConnection;
        }

        /* renamed from: a */
        protected abstract Handshake mo26941a();

        @Override // java.net.URLConnection
        public void addRequestProperty(String str, String str2) {
            this.f28319a.addRequestProperty(str, str2);
        }

        @Override // java.net.URLConnection
        public void connect() throws IOException {
            this.connected = true;
            this.f28319a.connect();
        }

        @Override // java.net.HttpURLConnection
        public void disconnect() {
            this.f28319a.disconnect();
        }

        @Override // java.net.URLConnection
        public boolean getAllowUserInteraction() {
            return this.f28319a.getAllowUserInteraction();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public String getCipherSuite() {
            Handshake mo26941a = mo26941a();
            if (mo26941a != null) {
                return mo26941a.cipherSuite().javaName();
            }
            return null;
        }

        @Override // java.net.URLConnection
        public int getConnectTimeout() {
            return this.f28319a.getConnectTimeout();
        }

        @Override // java.net.URLConnection
        public Object getContent() throws IOException {
            return this.f28319a.getContent();
        }

        @Override // java.net.URLConnection
        public Object getContent(Class[] clsArr) throws IOException {
            return this.f28319a.getContent(clsArr);
        }

        @Override // java.net.URLConnection
        public String getContentEncoding() {
            return this.f28319a.getContentEncoding();
        }

        @Override // java.net.URLConnection
        public int getContentLength() {
            return this.f28319a.getContentLength();
        }

        @Override // java.net.URLConnection
        public long getContentLengthLong() {
            return this.f28319a.getContentLengthLong();
        }

        @Override // java.net.URLConnection
        public String getContentType() {
            return this.f28319a.getContentType();
        }

        @Override // java.net.URLConnection
        public long getDate() {
            return this.f28319a.getDate();
        }

        @Override // java.net.URLConnection
        public boolean getDefaultUseCaches() {
            return this.f28319a.getDefaultUseCaches();
        }

        @Override // java.net.URLConnection
        public boolean getDoInput() {
            return this.f28319a.getDoInput();
        }

        @Override // java.net.URLConnection
        public boolean getDoOutput() {
            return this.f28319a.getDoOutput();
        }

        @Override // java.net.HttpURLConnection
        public InputStream getErrorStream() {
            return this.f28319a.getErrorStream();
        }

        @Override // java.net.URLConnection
        public long getExpiration() {
            return this.f28319a.getExpiration();
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public String getHeaderField(int i) {
            return this.f28319a.getHeaderField(i);
        }

        @Override // java.net.URLConnection
        public String getHeaderField(String str) {
            return this.f28319a.getHeaderField(str);
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public long getHeaderFieldDate(String str, long j) {
            return this.f28319a.getHeaderFieldDate(str, j);
        }

        @Override // java.net.URLConnection
        public int getHeaderFieldInt(String str, int i) {
            return this.f28319a.getHeaderFieldInt(str, i);
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public String getHeaderFieldKey(int i) {
            return this.f28319a.getHeaderFieldKey(i);
        }

        @Override // java.net.URLConnection
        public long getHeaderFieldLong(String str, long j) {
            return this.f28319a.getHeaderFieldLong(str, j);
        }

        @Override // java.net.URLConnection
        public Map<String, List<String>> getHeaderFields() {
            return this.f28319a.getHeaderFields();
        }

        @Override // java.net.URLConnection
        public long getIfModifiedSince() {
            return this.f28319a.getIfModifiedSince();
        }

        @Override // java.net.URLConnection
        public InputStream getInputStream() throws IOException {
            return this.f28319a.getInputStream();
        }

        @Override // java.net.HttpURLConnection
        public boolean getInstanceFollowRedirects() {
            return this.f28319a.getInstanceFollowRedirects();
        }

        @Override // java.net.URLConnection
        public long getLastModified() {
            return this.f28319a.getLastModified();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Certificate[] getLocalCertificates() {
            Handshake mo26941a = mo26941a();
            if (mo26941a == null) {
                return null;
            }
            List<Certificate> localCertificates = mo26941a.localCertificates();
            if (localCertificates.isEmpty()) {
                return null;
            }
            return (Certificate[]) localCertificates.toArray(new Certificate[localCertificates.size()]);
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Principal getLocalPrincipal() {
            Handshake mo26941a = mo26941a();
            if (mo26941a != null) {
                return mo26941a.localPrincipal();
            }
            return null;
        }

        @Override // java.net.URLConnection
        public OutputStream getOutputStream() throws IOException {
            return this.f28319a.getOutputStream();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Principal getPeerPrincipal() {
            Handshake mo26941a = mo26941a();
            if (mo26941a != null) {
                return mo26941a.peerPrincipal();
            }
            return null;
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public Permission getPermission() throws IOException {
            return this.f28319a.getPermission();
        }

        @Override // java.net.URLConnection
        public int getReadTimeout() {
            return this.f28319a.getReadTimeout();
        }

        @Override // java.net.HttpURLConnection
        public String getRequestMethod() {
            return this.f28319a.getRequestMethod();
        }

        @Override // java.net.URLConnection
        public Map<String, List<String>> getRequestProperties() {
            return this.f28319a.getRequestProperties();
        }

        @Override // java.net.URLConnection
        public String getRequestProperty(String str) {
            return this.f28319a.getRequestProperty(str);
        }

        @Override // java.net.HttpURLConnection
        public int getResponseCode() throws IOException {
            return this.f28319a.getResponseCode();
        }

        @Override // java.net.HttpURLConnection
        public String getResponseMessage() throws IOException {
            return this.f28319a.getResponseMessage();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Certificate[] getServerCertificates() {
            Handshake mo26941a = mo26941a();
            if (mo26941a == null) {
                return null;
            }
            List<Certificate> peerCertificates = mo26941a.peerCertificates();
            if (peerCertificates.isEmpty()) {
                return null;
            }
            return (Certificate[]) peerCertificates.toArray(new Certificate[peerCertificates.size()]);
        }

        @Override // java.net.URLConnection
        public URL getURL() {
            return this.f28319a.getURL();
        }

        @Override // java.net.URLConnection
        public boolean getUseCaches() {
            return this.f28319a.getUseCaches();
        }

        @Override // java.net.URLConnection
        public void setAllowUserInteraction(boolean z) {
            this.f28319a.setAllowUserInteraction(z);
        }

        @Override // java.net.HttpURLConnection
        public void setChunkedStreamingMode(int i) {
            this.f28319a.setChunkedStreamingMode(i);
        }

        @Override // java.net.URLConnection
        public void setConnectTimeout(int i) {
            this.f28319a.setConnectTimeout(i);
        }

        @Override // java.net.URLConnection
        public void setDefaultUseCaches(boolean z) {
            this.f28319a.setDefaultUseCaches(z);
        }

        @Override // java.net.URLConnection
        public void setDoInput(boolean z) {
            this.f28319a.setDoInput(z);
        }

        @Override // java.net.URLConnection
        public void setDoOutput(boolean z) {
            this.f28319a.setDoOutput(z);
        }

        @Override // java.net.HttpURLConnection
        public void setFixedLengthStreamingMode(int i) {
            this.f28319a.setFixedLengthStreamingMode(i);
        }

        @Override // java.net.HttpURLConnection
        public void setFixedLengthStreamingMode(long j) {
            this.f28319a.setFixedLengthStreamingMode(j);
        }

        @Override // java.net.URLConnection
        public void setIfModifiedSince(long j) {
            this.f28319a.setIfModifiedSince(j);
        }

        @Override // java.net.HttpURLConnection
        public void setInstanceFollowRedirects(boolean z) {
            this.f28319a.setInstanceFollowRedirects(z);
        }

        @Override // java.net.URLConnection
        public void setReadTimeout(int i) {
            this.f28319a.setReadTimeout(i);
        }

        @Override // java.net.HttpURLConnection
        public void setRequestMethod(String str) throws ProtocolException {
            this.f28319a.setRequestMethod(str);
        }

        @Override // java.net.URLConnection
        public void setRequestProperty(String str, String str2) {
            this.f28319a.setRequestProperty(str, str2);
        }

        @Override // java.net.URLConnection
        public void setUseCaches(boolean z) {
            this.f28319a.setUseCaches(z);
        }

        @Override // java.net.URLConnection
        public String toString() {
            return this.f28319a.toString();
        }

        @Override // java.net.HttpURLConnection
        public boolean usingProxy() {
            return this.f28319a.usingProxy();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection.class */
    public static final class OkHttpURLConnection extends HttpURLConnection implements Callback {

        /* renamed from: a */
        OkHttpClient f28320a;

        /* renamed from: d */
        Headers f28323d;

        /* renamed from: e */
        boolean f28324e;

        /* renamed from: f */
        Call f28325f;

        /* renamed from: h */
        Response f28327h;

        /* renamed from: j */
        Proxy f28329j;

        /* renamed from: k */
        Handshake f28330k;

        /* renamed from: m */
        private Response f28332m;

        /* renamed from: n */
        private Throwable f28333n;

        /* renamed from: b */
        final NetworkInterceptor f28321b = new NetworkInterceptor();

        /* renamed from: c */
        Headers.Builder f28322c = new Headers.Builder();

        /* renamed from: g */
        long f28326g = -1;

        /* renamed from: l */
        private final Object f28331l = new Object();

        /* renamed from: i */
        boolean f28328i = true;

        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor.class */
        public final class NetworkInterceptor implements Interceptor {

            /* renamed from: b */
            private boolean f28335b;

            NetworkInterceptor() {
                OkHttpURLConnection.this = r4;
            }

            /* renamed from: a */
            public final void m26942a() {
                synchronized (OkHttpURLConnection.this.f28331l) {
                    this.f28335b = true;
                    OkHttpURLConnection.this.f28331l.notifyAll();
                }
            }

            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) throws IOException {
                Request request = chain.request();
                synchronized (OkHttpURLConnection.this.f28331l) {
                    OkHttpURLConnection.this.f28328i = false;
                    OkHttpURLConnection.this.f28329j = chain.connection().route().proxy();
                    OkHttpURLConnection.this.f28330k = chain.connection().handshake();
                    OkHttpURLConnection.this.f28331l.notifyAll();
                    while (!this.f28335b) {
                        try {
                            OkHttpURLConnection.this.f28331l.wait();
                        } catch (InterruptedException e) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    }
                }
                Request request2 = request;
                if (request.body() instanceof OutputStreamRequestBody) {
                    request2 = ((OutputStreamRequestBody) request.body()).mo26939a(request);
                }
                Response proceed = chain.proceed(request2);
                synchronized (OkHttpURLConnection.this.f28331l) {
                    OkHttpURLConnection.this.f28327h = proceed;
                    OkHttpURLConnection.this.url = proceed.request().url().url();
                }
                return proceed;
            }
        }

        OkHttpURLConnection(URL url, OkHttpClient okHttpClient) {
            super(url);
            this.f28320a = okHttpClient;
        }

        /* JADX WARN: Type inference failed for: r0v64, types: [long] */
        /* JADX WARN: Type inference failed for: r0v75, types: [long] */
        /* renamed from: a */
        private Call m26946a() throws IOException {
            StreamedRequestBody streamedRequestBody;
            Call call = this.f28325f;
            if (call != null) {
                return call;
            }
            this.connected = true;
            if (this.doOutput) {
                if (this.method.equals("GET")) {
                    this.method = "POST";
                } else if (!ObsoleteUrlFactory.m26959a(this.method)) {
                    throw new ProtocolException(this.method + " does not support writing");
                }
            }
            if (this.f28322c.get("User-Agent") == null) {
                this.f28322c.add("User-Agent", ObsoleteUrlFactory.m26960a());
            }
            if (ObsoleteUrlFactory.m26959a(this.method)) {
                if (this.f28322c.get("Content-Type") == null) {
                    this.f28322c.add("Content-Type", "application/x-www-form-urlencoded");
                }
                char c = 65535;
                boolean z = true;
                if (this.f28326g == -1) {
                    z = this.chunkLength > 0;
                }
                String str = this.f28322c.get("Content-Length");
                ?? r0 = this.f28326g;
                if (r0 != -1) {
                    c = r0;
                } else if (str != null) {
                    c = Long.parseLong(str);
                }
                streamedRequestBody = z ? new StreamedRequestBody(c) : new BufferedRequestBody(c);
                streamedRequestBody.f28337c.timeout(this.f28320a.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
            } else {
                streamedRequestBody = null;
            }
            try {
                Request build = new Request.Builder().url(HttpUrl.get(getURL().toString())).headers(this.f28322c.build()).method(this.method, streamedRequestBody).build();
                OkHttpClient.Builder newBuilder = this.f28320a.newBuilder();
                newBuilder.interceptors().clear();
                newBuilder.interceptors().add(UnexpectedException.f28346a);
                newBuilder.networkInterceptors().clear();
                newBuilder.networkInterceptors().add(this.f28321b);
                newBuilder.dispatcher(new Dispatcher(this.f28320a.dispatcher().executorService()));
                if (!getUseCaches()) {
                    newBuilder.cache(null);
                }
                Call newCall = newBuilder.build().newCall(build);
                this.f28325f = newCall;
                return newCall;
            } catch (IllegalArgumentException e) {
                MalformedURLException malformedURLException = new MalformedURLException();
                malformedURLException.initCause(e);
                throw malformedURLException;
            }
        }

        /* renamed from: a */
        private Response m26943a(boolean z) throws IOException {
            Response response;
            synchronized (this.f28331l) {
                Response response2 = this.f28332m;
                if (response2 != null) {
                    return response2;
                }
                Throwable th = this.f28333n;
                if (th != null) {
                    if (z && (response = this.f28327h) != null) {
                        return response;
                    }
                    throw ObsoleteUrlFactory.m26957a(th);
                }
                Call m26946a = m26946a();
                this.f28321b.m26942a();
                OutputStreamRequestBody outputStreamRequestBody = (OutputStreamRequestBody) m26946a.request().body();
                if (outputStreamRequestBody != null) {
                    outputStreamRequestBody.f28339e.close();
                }
                if (this.f28324e) {
                    synchronized (this.f28331l) {
                        while (this.f28332m == null && this.f28333n == null) {
                            try {
                                this.f28331l.wait();
                            } catch (InterruptedException e) {
                                Thread.currentThread().interrupt();
                                throw new InterruptedIOException();
                            }
                        }
                    }
                } else {
                    this.f28324e = true;
                    try {
                        onResponse(m26946a, m26946a.execute());
                    } catch (IOException e2) {
                        onFailure(m26946a, e2);
                    }
                }
                synchronized (this.f28331l) {
                    Throwable th2 = this.f28333n;
                    if (th2 != null) {
                        throw ObsoleteUrlFactory.m26957a(th2);
                    }
                    Response response3 = this.f28332m;
                    if (response3 == null) {
                        throw new AssertionError();
                    }
                    return response3;
                }
            }
        }

        @Override // java.net.URLConnection
        public final void addRequestProperty(String str, String str2) {
            if (!this.connected) {
                Objects.requireNonNull(str, "field == null");
                if (str2 == null) {
                    return;
                }
                this.f28322c.add(str, str2);
                return;
            }
            throw new IllegalStateException("Cannot add request property after connection is made");
        }

        @Override // java.net.URLConnection
        public final void connect() throws IOException {
            if (this.f28324e) {
                return;
            }
            Call m26946a = m26946a();
            this.f28324e = true;
            m26946a.enqueue(this);
            synchronized (this.f28331l) {
                while (this.f28328i && this.f28332m == null && this.f28333n == null) {
                    try {
                        this.f28331l.wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                Throwable th = this.f28333n;
                if (th != null) {
                    throw ObsoleteUrlFactory.m26957a(th);
                }
            }
        }

        @Override // java.net.HttpURLConnection
        public final void disconnect() {
            if (this.f28325f == null) {
                return;
            }
            this.f28321b.m26942a();
            this.f28325f.cancel();
        }

        @Override // java.net.URLConnection
        public final int getConnectTimeout() {
            return this.f28320a.connectTimeoutMillis();
        }

        @Override // java.net.HttpURLConnection
        public final InputStream getErrorStream() {
            try {
                Response m26943a = m26943a(true);
                if (ObsoleteUrlFactory.m26951a(m26943a) && m26943a.code() >= 400) {
                    return m26943a.body().byteStream();
                }
                return null;
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
                return str == null ? ObsoleteUrlFactory.m26947c(m26943a(true)) : getHeaders().get(str);
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
                return ObsoleteUrlFactory.m26952a(getHeaders(), ObsoleteUrlFactory.m26947c(m26943a(true)));
            } catch (IOException e) {
                return Collections.emptyMap();
            }
        }

        final Headers getHeaders() throws IOException {
            if (this.f28323d == null) {
                Response m26943a = m26943a(true);
                this.f28323d = m26943a.headers().newBuilder().add("ObsoleteUrlFactory-Selected-Protocol", m26943a.protocol().toString()).add("ObsoleteUrlFactory-Response-Source", ObsoleteUrlFactory.m26948b(m26943a)).build();
            }
            return this.f28323d;
        }

        @Override // java.net.URLConnection
        public final InputStream getInputStream() throws IOException {
            if (this.doInput) {
                Response m26943a = m26943a(false);
                if (m26943a.code() >= 400) {
                    throw new FileNotFoundException(this.url.toString());
                }
                return m26943a.body().byteStream();
            }
            throw new ProtocolException("This protocol does not support input");
        }

        @Override // java.net.HttpURLConnection
        public final boolean getInstanceFollowRedirects() {
            return this.f28320a.followRedirects();
        }

        @Override // java.net.URLConnection
        public final OutputStream getOutputStream() throws IOException {
            OutputStreamRequestBody outputStreamRequestBody = (OutputStreamRequestBody) m26946a().request().body();
            if (outputStreamRequestBody == null) {
                throw new ProtocolException("method does not support a request body: " + this.method);
            }
            if (outputStreamRequestBody instanceof StreamedRequestBody) {
                connect();
                this.f28321b.m26942a();
            }
            if (outputStreamRequestBody.f28340f) {
                throw new ProtocolException("cannot write request body after response has been read");
            }
            return outputStreamRequestBody.f28339e;
        }

        @Override // java.net.HttpURLConnection, java.net.URLConnection
        public final Permission getPermission() {
            URL url = getURL();
            String host = url.getHost();
            int port = url.getPort() != -1 ? url.getPort() : HttpUrl.defaultPort(url.getProtocol());
            if (usingProxy()) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) this.f28320a.proxy().address();
                host = inetSocketAddress.getHostName();
                port = inetSocketAddress.getPort();
            }
            return new SocketPermission(host + ":" + port, "connect, resolve");
        }

        @Override // java.net.URLConnection
        public final int getReadTimeout() {
            return this.f28320a.readTimeoutMillis();
        }

        @Override // java.net.URLConnection
        public final Map<String, List<String>> getRequestProperties() {
            if (!this.connected) {
                return ObsoleteUrlFactory.m26952a(this.f28322c.build(), (String) null);
            }
            throw new IllegalStateException("Cannot access request header fields after connection is set");
        }

        @Override // java.net.URLConnection
        public final String getRequestProperty(String str) {
            if (str == null) {
                return null;
            }
            return this.f28322c.get(str);
        }

        @Override // java.net.HttpURLConnection
        public final int getResponseCode() throws IOException {
            return m26943a(true).code();
        }

        @Override // java.net.HttpURLConnection
        public final String getResponseMessage() throws IOException {
            return m26943a(true).message();
        }

        @Override // okhttp3.Callback
        public final void onFailure(Call call, IOException iOException) {
            synchronized (this.f28331l) {
                Throwable th = iOException;
                if (iOException instanceof UnexpectedException) {
                    th = iOException.getCause();
                }
                this.f28333n = th;
                this.f28331l.notifyAll();
            }
        }

        @Override // okhttp3.Callback
        public final void onResponse(Call call, Response response) {
            synchronized (this.f28331l) {
                this.f28332m = response;
                this.f28330k = response.handshake();
                this.url = response.request().url().url();
                this.f28331l.notifyAll();
            }
        }

        @Override // java.net.URLConnection
        public final void setConnectTimeout(int i) {
            this.f28320a = this.f28320a.newBuilder().connectTimeout(i, TimeUnit.MILLISECONDS).build();
        }

        @Override // java.net.HttpURLConnection
        public final void setFixedLengthStreamingMode(int i) {
            setFixedLengthStreamingMode(i);
        }

        @Override // java.net.HttpURLConnection
        public final void setFixedLengthStreamingMode(long j) {
            if (!((HttpURLConnection) this).connected) {
                if (this.chunkLength > 0) {
                    throw new IllegalStateException("Already in chunked mode");
                }
                if (j < 0) {
                    throw new IllegalArgumentException("contentLength < 0");
                }
                this.f28326g = j;
                ((HttpURLConnection) this).fixedContentLength = (int) Math.min(j, 2147483647L);
                return;
            }
            throw new IllegalStateException("Already connected");
        }

        @Override // java.net.URLConnection
        public final void setIfModifiedSince(long j) {
            super.setIfModifiedSince(j);
            if (this.ifModifiedSince != 0) {
                this.f28322c.set("If-Modified-Since", ObsoleteUrlFactory.m26954a(new Date(this.ifModifiedSince)));
            } else {
                this.f28322c.removeAll("If-Modified-Since");
            }
        }

        @Override // java.net.HttpURLConnection
        public final void setInstanceFollowRedirects(boolean z) {
            this.f28320a = this.f28320a.newBuilder().followRedirects(z).build();
        }

        @Override // java.net.URLConnection
        public final void setReadTimeout(int i) {
            this.f28320a = this.f28320a.newBuilder().readTimeout(i, TimeUnit.MILLISECONDS).build();
        }

        @Override // java.net.HttpURLConnection
        public final void setRequestMethod(String str) throws ProtocolException {
            if (ObsoleteUrlFactory.f28310a.contains(str)) {
                this.method = str;
                return;
            }
            throw new ProtocolException("Expected one of " + ObsoleteUrlFactory.f28310a + " but was " + str);
        }

        @Override // java.net.URLConnection
        public final void setRequestProperty(String str, String str2) {
            if (!this.connected) {
                Objects.requireNonNull(str, "field == null");
                if (str2 == null) {
                    return;
                }
                this.f28322c.set(str, str2);
                return;
            }
            throw new IllegalStateException("Cannot set request property after connection is made");
        }

        @Override // java.net.HttpURLConnection
        public final boolean usingProxy() {
            if (this.f28329j != null) {
                return true;
            }
            Proxy proxy = this.f28320a.proxy();
            return (proxy == null || proxy.type() == Proxy.Type.DIRECT) ? false : true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpsURLConnection.class */
    public static final class OkHttpsURLConnection extends DelegatingHttpsURLConnection {

        /* renamed from: a */
        private final OkHttpURLConnection f28336a;

        OkHttpsURLConnection(OkHttpURLConnection okHttpURLConnection) {
            super(okHttpURLConnection);
            this.f28336a = okHttpURLConnection;
        }

        OkHttpsURLConnection(URL url, OkHttpClient okHttpClient) {
            this(new OkHttpURLConnection(url, okHttpClient));
        }

        @Override // com.callapp.contacts.util.http.ObsoleteUrlFactory.DelegatingHttpsURLConnection
        /* renamed from: a */
        protected final Handshake mo26941a() {
            if (this.f28336a.f28325f != null) {
                return this.f28336a.f28330k;
            }
            throw new IllegalStateException("Connection has not yet been established");
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public final HostnameVerifier getHostnameVerifier() {
            return this.f28336a.f28320a.hostnameVerifier();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public final SSLSocketFactory getSSLSocketFactory() {
            return this.f28336a.f28320a.sslSocketFactory();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public final void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
            OkHttpURLConnection okHttpURLConnection = this.f28336a;
            okHttpURLConnection.f28320a = okHttpURLConnection.f28320a.newBuilder().hostnameVerifier(hostnameVerifier).build();
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public final void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
            if (sSLSocketFactory != null) {
                OkHttpURLConnection okHttpURLConnection = this.f28336a;
                okHttpURLConnection.f28320a = okHttpURLConnection.f28320a.newBuilder().sslSocketFactory(sSLSocketFactory).build();
                return;
            }
            throw new IllegalArgumentException("sslSocketFactory == null");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody.class */
    public static abstract class OutputStreamRequestBody extends RequestBody {

        /* renamed from: c */
        C3191ae f28337c;

        /* renamed from: d */
        long f28338d;

        /* renamed from: e */
        OutputStream f28339e;

        /* renamed from: f */
        boolean f28340f;

        OutputStreamRequestBody() {
        }

        /* renamed from: a */
        public Request mo26939a(Request request) throws IOException {
            return request;
        }

        /* renamed from: a */
        final void m26940a(final AbstractC3206g abstractC3206g, final long j) {
            this.f28337c = abstractC3206g.timeout();
            this.f28338d = j;
            this.f28339e = new OutputStream() { // from class: com.callapp.contacts.util.http.ObsoleteUrlFactory.OutputStreamRequestBody.1

                /* renamed from: d */
                private long f28344d;

                @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    OutputStreamRequestBody.this.f28340f = true;
                    long j2 = j;
                    if (j2 == -1 || this.f28344d >= j2) {
                        abstractC3206g.close();
                        return;
                    }
                    throw new ProtocolException("expected " + j + " bytes but received " + this.f28344d);
                }

                @Override // java.io.OutputStream, java.io.Flushable
                public void flush() throws IOException {
                    if (OutputStreamRequestBody.this.f28340f) {
                        return;
                    }
                    abstractC3206g.flush();
                }

                @Override // java.io.OutputStream
                public void write(int i) throws IOException {
                    write(new byte[]{(byte) i}, 0, 1);
                }

                @Override // java.io.OutputStream
                public void write(byte[] bArr, int i, int i2) throws IOException {
                    if (!OutputStreamRequestBody.this.f28340f) {
                        long j2 = j;
                        if (j2 == -1 || this.f28344d + i2 <= j2) {
                            this.f28344d += i2;
                            try {
                                abstractC3206g.mo39139c(bArr, i, i2);
                                return;
                            } catch (InterruptedIOException e) {
                                throw new SocketTimeoutException(e.getMessage());
                            }
                        }
                        throw new ProtocolException("expected " + j + " bytes but received " + this.f28344d + i2);
                    }
                    throw new IOException("closed");
                }
            };
        }

        @Override // okhttp3.RequestBody
        public long contentLength() {
            return this.f28338d;
        }

        @Override // okhttp3.RequestBody
        public final MediaType contentType() {
            return null;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$StreamedRequestBody.class */
    public static final class StreamedRequestBody extends OutputStreamRequestBody {

        /* renamed from: a */
        private final C3223v f28345a;

        StreamedRequestBody(long j) {
            C3223v c3223v = new C3223v(PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            this.f28345a = c3223v;
            m26940a(C3218r.m39151a(c3223v.f11619f), j);
        }

        @Override // okhttp3.RequestBody
        public final boolean isOneShot() {
            return true;
        }

        @Override // okhttp3.RequestBody
        public final void writeTo(AbstractC3206g abstractC3206g) throws IOException {
            C3202f c3202f = new C3202f();
            while (this.f28345a.f11620g.read(c3202f, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                abstractC3206g.write(c3202f, c3202f.f11572b);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/ObsoleteUrlFactory$UnexpectedException.class */
    public static final class UnexpectedException extends IOException {

        /* renamed from: a */
        static final Interceptor f28346a = C7996x18c30dec.INSTANCE;

        UnexpectedException(Throwable th) {
            super(th);
        }

        /* renamed from: a */
        public static /* synthetic */ Response m26938a(Interceptor.Chain chain) throws IOException {
            try {
                return chain.proceed(chain.request());
            } catch (Error | RuntimeException e) {
                throw new UnexpectedException(e);
            }
        }
    }

    public ObsoleteUrlFactory(OkHttpClient okHttpClient) {
        this.f28314e = okHttpClient;
    }

    /* renamed from: a */
    public static /* synthetic */ int m26958a(String str, String str2) {
        if (str == str2) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 != null) {
            return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
        }
        return 1;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: a */
    private static long m26953a(Headers headers) {
        String str = headers.get("Content-Length");
        char c = 65535;
        if (str == null) {
            return -1L;
        }
        try {
            c = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        return c;
    }

    /* renamed from: a */
    static IOException m26957a(Throwable th) throws IOException {
        if (!(th instanceof IOException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            if (!(th instanceof RuntimeException)) {
                throw new AssertionError();
            }
            throw ((RuntimeException) th);
        }
        throw ((IOException) th);
    }

    /* renamed from: a */
    static String m26960a() {
        int i;
        String str;
        int codePointAt;
        String m26949b = m26949b("http.agent");
        if (m26949b != null) {
            int length = m26949b.length();
            int i2 = 0;
            while (true) {
                i = i2;
                str = m26949b;
                if (i >= length) {
                    break;
                }
                codePointAt = m26949b.codePointAt(i);
                if (codePointAt <= 31 || codePointAt >= 127) {
                    break;
                }
                i2 = i + Character.charCount(codePointAt);
            }
            C3202f c3202f = new C3202f();
            c3202f.m39213a(m26949b, 0, i);
            c3202f.m39221a(63);
            int i3 = i;
            while (true) {
                int charCount = i3 + Character.charCount(codePointAt);
                if (charCount >= length) {
                    break;
                }
                int codePointAt2 = m26949b.codePointAt(charCount);
                c3202f.m39221a((codePointAt2 <= 31 || codePointAt2 >= 127) ? 63 : codePointAt2);
                i3 = charCount;
                codePointAt = codePointAt2;
            }
            str = c3202f.m39193r();
            return str;
        }
        return "ObsoleteUrlFactory";
    }

    /* renamed from: a */
    static String m26954a(Date date) {
        return f28312c.get().format(date);
    }

    /* renamed from: a */
    static Map<String, List<String>> m26952a(Headers headers, String str) {
        TreeMap treeMap = new TreeMap(f28313d);
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

    /* renamed from: a */
    static boolean m26959a(String str) {
        return !str.equals("GET") && !str.equals("HEAD");
    }

    /* renamed from: a */
    static boolean m26951a(Response response) {
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int code = response.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && m26953a(response.headers()) == -1 && !"chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) ? false : true;
    }

    /* renamed from: b */
    private static String m26949b(String str) {
        try {
            String property = System.getProperty(str);
            if (property == null) {
                return null;
            }
            return property;
        } catch (AccessControlException e) {
            return null;
        }
    }

    /* renamed from: b */
    static String m26948b(Response response) {
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

    /* renamed from: b */
    public static /* synthetic */ DateFormat m26950b() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setLenient(false);
        simpleDateFormat.setTimeZone(f28311b);
        return simpleDateFormat;
    }

    /* renamed from: c */
    static String m26947c(Response response) {
        StringBuilder sb = new StringBuilder();
        sb.append(response.protocol() == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(response.code());
        sb.append(' ');
        sb.append(response.message());
        return sb.toString();
    }

    /* renamed from: a */
    public final HttpURLConnection m26956a(URL url) {
        return m26955a(url, this.f28314e.proxy());
    }

    /* renamed from: a */
    final HttpURLConnection m26955a(URL url, Proxy proxy) {
        String protocol = url.getProtocol();
        OkHttpClient build = this.f28314e.newBuilder().proxy(proxy).build();
        if (protocol.equals("http")) {
            return new OkHttpURLConnection(url, build);
        }
        if (!protocol.equals(Constants.HTTPS)) {
            throw new IllegalArgumentException("Unexpected protocol: ".concat(String.valueOf(protocol)));
        }
        return new OkHttpsURLConnection(url, build);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new ObsoleteUrlFactory(this.f28314e);
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
                    if (!str.equals(Constants.HTTPS)) {
                        throw new AssertionError();
                    }
                    return 443;
                }

                @Override // java.net.URLStreamHandler
                protected URLConnection openConnection(URL url) {
                    return ObsoleteUrlFactory.this.m26956a(url);
                }

                @Override // java.net.URLStreamHandler
                protected URLConnection openConnection(URL url, Proxy proxy) {
                    return ObsoleteUrlFactory.this.m26955a(url, proxy);
                }
            };
        }
        return null;
    }
}
