package com.squareup.okhttp.p089u.p090k;

import com.lidroid.xutils.http.client.multipart.MIME;
import com.lidroid.xutils.http.client.util.URLEncodedUtils;
import com.squareup.okhttp.AbstractC2957q;
import com.squareup.okhttp.C2861f;
import com.squareup.okhttp.C2942j;
import com.squareup.okhttp.C2943k;
import com.squareup.okhttp.C2946l;
import com.squareup.okhttp.C2952o;
import com.squareup.okhttp.C2954p;
import com.squareup.okhttp.C2959r;
import com.squareup.okhttp.C2963t;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.http.C2926f;
import com.squareup.okhttp.internal.http.C2928g;
import com.squareup.okhttp.internal.http.C2932h;
import com.squareup.okhttp.internal.http.C2934j;
import com.squareup.okhttp.internal.http.C2938m;
import com.squareup.okhttp.internal.http.C2940o;
import com.squareup.okhttp.internal.http.RequestException;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.p089u.AbstractC2965b;
import com.squareup.okhttp.p089u.C2970g;
import com.squareup.okhttp.p089u.C2975i;
import com.squareup.okhttp.p089u.C2977j;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketPermission;
import java.net.URL;
import java.security.Permission;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okio.BufferedSink;
import okio.Sink;
/* renamed from: com.squareup.okhttp.u.k.b */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/k/b.class */
public class C2979b extends HttpURLConnection {

    /* renamed from: j */
    private static final Set<String> f12525j = new LinkedHashSet(Arrays.asList("OPTIONS", "GET", OkHttpUtils.METHOD.HEAD, "POST", OkHttpUtils.METHOD.PUT, OkHttpUtils.METHOD.DELETE, "TRACE", OkHttpUtils.METHOD.PATCH));

    /* renamed from: k */
    private static final AbstractC2957q f12526k = AbstractC2957q.m766b(null, new byte[0]);

    /* renamed from: a */
    final C2952o f12527a;

    /* renamed from: b */
    private C2943k.C2945b f12528b = new C2943k.C2945b();

    /* renamed from: c */
    private long f12529c = -1;

    /* renamed from: d */
    private int f12530d;

    /* renamed from: e */
    protected IOException f12531e;

    /* renamed from: f */
    protected C2928g f12532f;

    /* renamed from: g */
    private C2943k f12533g;

    /* renamed from: h */
    private C2963t f12534h;

    /* renamed from: i */
    C2942j f12535i;

    public C2979b(URL url, C2952o oVar) {
        super(url);
        this.f12527a = oVar;
    }

    /* renamed from: a */
    private String m641a() {
        String property = System.getProperty("http.agent");
        return property != null ? C2975i.m643q(property) : C2977j.m642a();
    }

    /* renamed from: b */
    private boolean m640b(boolean z) {
        try {
            this.f12532f.m984I();
            this.f12534h = this.f12532f.m961s();
            this.f12535i = this.f12532f.m965o() != null ? this.f12532f.m965o().m1286i() : null;
            if (!z) {
                return true;
            }
            this.f12532f.m991B();
            return true;
        } catch (RequestException e) {
            IOException cause = e.getCause();
            this.f12531e = cause;
            throw cause;
        } catch (RouteException e2) {
            C2928g D = this.f12532f.m989D(e2);
            if (D != null) {
                this.f12532f = D;
                return false;
            }
            IOException lastConnectException = e2.getLastConnectException();
            this.f12531e = lastConnectException;
            throw lastConnectException;
        } catch (IOException e3) {
            C2928g E = this.f12532f.m988E(e3);
            if (E != null) {
                this.f12532f = E;
                return false;
            }
            this.f12531e = e3;
            throw e3;
        }
    }

    /* renamed from: c */
    private C2943k m639c() {
        if (this.f12533g == null) {
            C2959r r = m638d().m962r();
            C2943k.C2945b e = r.m745r().m898e();
            e.m894b(C2970g.m673f().m672g() + "-Response-Source", m635g(r));
            this.f12533g = e.m891e();
        }
        return this.f12533g;
    }

    /* renamed from: d */
    private C2928g m638d() {
        m637e();
        if (this.f12532f.m959u()) {
            return this.f12532f;
        }
        while (true) {
            if (m640b(true)) {
                C2959r r = this.f12532f.m962r();
                C2954p m = this.f12532f.m967m();
                if (m == null) {
                    this.f12532f.m986G();
                    return this.f12532f;
                }
                int i = this.f12530d + 1;
                this.f12530d = i;
                if (i <= 20) {
                    ((HttpURLConnection) this).url = m.m780o();
                    this.f12528b = m.m786i().m898e();
                    Sink q = this.f12532f.m963q();
                    if (!m.m783l().equals(((HttpURLConnection) this).method)) {
                        q = null;
                    }
                    if (q == null || (q instanceof C2938m)) {
                        if (!this.f12532f.m985H(m.m785j())) {
                            this.f12532f.m986G();
                        }
                        this.f12532f = m636f(m.m783l(), this.f12532f.m974f(), (C2938m) q, r);
                    } else {
                        throw new HttpRetryException("Cannot retry streamed HTTP body", ((HttpURLConnection) this).responseCode);
                    }
                } else {
                    throw new ProtocolException("Too many follow-up requests: " + this.f12530d);
                }
            }
        }
    }

    /* renamed from: e */
    private void m637e() {
        IOException iOException = this.f12531e;
        if (iOException != null) {
            throw iOException;
        } else if (this.f12532f == null) {
            ((HttpURLConnection) this).connected = true;
            try {
                if (((HttpURLConnection) this).doOutput) {
                    if (((HttpURLConnection) this).method.equals("GET")) {
                        ((HttpURLConnection) this).method = "POST";
                    } else if (!C2932h.m950b(((HttpURLConnection) this).method)) {
                        throw new ProtocolException(((HttpURLConnection) this).method + " does not support writing");
                    }
                }
                this.f12532f = m636f(((HttpURLConnection) this).method, null, null, null);
            } catch (IOException e) {
                this.f12531e = e;
                throw e;
            }
        }
    }

    /* renamed from: f */
    private C2928g m636f(String str, C2861f fVar, C2938m mVar, C2959r rVar) {
        AbstractC2957q qVar = C2932h.m949c(str) ? f12526k : null;
        C2954p.C2956b bVar = new C2954p.C2956b();
        bVar.m767l(getURL());
        bVar.m770i(str, qVar);
        C2943k e = this.f12528b.m891e();
        int f = e.m897f();
        boolean z = false;
        for (int i = 0; i < f; i++) {
            bVar.m773f(e.m899d(i), e.m896g(i));
        }
        if (C2932h.m950b(str)) {
            long j = this.f12529c;
            if (j != -1) {
                bVar.m771h("Content-Length", Long.toString(j));
            } else if (((HttpURLConnection) this).chunkLength > 0) {
                bVar.m771h("Transfer-Encoding", "chunked");
            } else {
                z = true;
            }
            if (e.m902a(MIME.CONTENT_TYPE) == null) {
                bVar.m771h(MIME.CONTENT_TYPE, URLEncodedUtils.CONTENT_TYPE);
            }
        } else {
            z = false;
        }
        if (e.m902a("User-Agent") == null) {
            bVar.m771h("User-Agent", m641a());
        }
        C2954p g = bVar.m772g();
        C2952o oVar = this.f12527a;
        C2952o oVar2 = oVar;
        if (AbstractC2965b.f12498b.mo699f(oVar) != null) {
            oVar2 = oVar;
            if (!getUseCaches()) {
                oVar2 = this.f12527a.clone();
                oVar2.m829D(null);
            }
        }
        return new C2928g(oVar2, g, z, true, false, fVar, null, mVar, rVar);
    }

    /* renamed from: g */
    private static String m635g(C2959r rVar) {
        StringBuilder sb;
        String str;
        if (rVar.m743t() == null) {
            if (rVar.m750m() == null) {
                return "NONE";
            }
            sb = new StringBuilder();
            str = "CACHE ";
        } else if (rVar.m750m() == null) {
            sb = new StringBuilder();
            str = "NETWORK ";
        } else {
            sb = new StringBuilder();
            sb.append("CONDITIONAL_CACHE ");
            rVar = rVar.m743t();
            sb.append(rVar.m749n());
            return sb.toString();
        }
        sb.append(str);
        sb.append(rVar.m749n());
        return sb.toString();
    }

    /* renamed from: h */
    private void m634h(String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.addAll(this.f12527a.m805n());
        }
        for (String str2 : str.split(",", -1)) {
            try {
                arrayList.add(Protocol.get(str2));
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
        this.f12527a.m823L(arrayList);
    }

    @Override // java.net.URLConnection
    public final void addRequestProperty(String str, String str2) {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot add request property after connection is made");
        } else if (str == null) {
            throw new NullPointerException("field == null");
        } else if (str2 == null) {
            C2970g f = C2970g.m673f();
            f.m671i("Ignoring header " + str + " because its value was null.");
        } else if ("X-Android-Transports".equals(str) || "X-Android-Protocols".equals(str)) {
            m634h(str2, true);
        } else {
            this.f12528b.m894b(str, str2);
        }
    }

    @Override // java.net.URLConnection
    public final void connect() {
        m637e();
        do {
        } while (!m640b(false));
    }

    @Override // java.net.HttpURLConnection
    public final void disconnect() {
        C2928g gVar = this.f12532f;
        if (gVar != null) {
            gVar.m968l();
        }
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f12527a.m812g();
    }

    @Override // java.net.HttpURLConnection
    public final InputStream getErrorStream() {
        InputStream inputStream;
        try {
            C2928g d = m638d();
            inputStream = null;
            if (C2928g.m960t(d.m962r())) {
                inputStream = null;
                if (d.m962r().m749n() >= 400) {
                    inputStream = d.m962r().m752k().m714a();
                }
            }
        } catch (IOException e) {
            inputStream = null;
        }
        return inputStream;
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderField(int i) {
        try {
            return m639c().m896g(i);
        } catch (IOException e) {
            return null;
        }
    }

    @Override // java.net.URLConnection
    public final String getHeaderField(String str) {
        try {
            return str == null ? C2940o.m918a(m638d().m962r()).toString() : m639c().m902a(str);
        } catch (IOException e) {
            return null;
        }
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final String getHeaderFieldKey(int i) {
        try {
            return m639c().m899d(i);
        } catch (IOException e) {
            return null;
        }
    }

    @Override // java.net.URLConnection
    public final Map<String, List<String>> getHeaderFields() {
        try {
            return C2934j.m939i(m639c(), C2940o.m918a(m638d().m962r()).toString());
        } catch (IOException e) {
            return Collections.emptyMap();
        }
    }

    @Override // java.net.URLConnection
    public final InputStream getInputStream() {
        if (((HttpURLConnection) this).doInput) {
            C2928g d = m638d();
            if (getResponseCode() < 400) {
                return d.m962r().m752k().m714a();
            }
            throw new FileNotFoundException(((HttpURLConnection) this).url.toString());
        }
        throw new ProtocolException("This protocol does not support input");
    }

    @Override // java.net.URLConnection
    public final OutputStream getOutputStream() {
        connect();
        BufferedSink n = this.f12532f.m966n();
        if (n == null) {
            throw new ProtocolException("method does not support a request body: " + ((HttpURLConnection) this).method);
        } else if (!this.f12532f.m959u()) {
            return n.outputStream();
        } else {
            throw new ProtocolException("cannot write request body after response has been read");
        }
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public final Permission getPermission() {
        URL url = getURL();
        String host = url.getHost();
        int port = url.getPort() != -1 ? url.getPort() : C2946l.m872i(url.getProtocol());
        if (usingProxy()) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) this.f12527a.m804o().address();
            host = inetSocketAddress.getHostName();
            port = inetSocketAddress.getPort();
        }
        return new SocketPermission(host + ":" + port, "connect, resolve");
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f12527a.m802r();
    }

    @Override // java.net.URLConnection
    public final Map<String, List<String>> getRequestProperties() {
        if (!((HttpURLConnection) this).connected) {
            return C2934j.m939i(this.f12528b.m891e(), null);
        }
        throw new IllegalStateException("Cannot access request header fields after connection is set");
    }

    @Override // java.net.URLConnection
    public final String getRequestProperty(String str) {
        if (str == null) {
            return null;
        }
        return this.f12528b.m889g(str);
    }

    @Override // java.net.HttpURLConnection
    public final int getResponseCode() {
        return m638d().m962r().m749n();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() {
        return m638d().m962r().m744s();
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f12527a.m828E(i, TimeUnit.MILLISECONDS);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i) {
        setFixedLengthStreamingMode(i);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j) {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Already connected");
        } else if (((HttpURLConnection) this).chunkLength > 0) {
            throw new IllegalStateException("Already in chunked mode");
        } else if (j >= 0) {
            this.f12529c = j;
            ((HttpURLConnection) this).fixedContentLength = (int) Math.min(j, 2147483647L);
        } else {
            throw new IllegalArgumentException("contentLength < 0");
        }
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        super.setIfModifiedSince(j);
        long j2 = ((HttpURLConnection) this).ifModifiedSince;
        C2943k.C2945b bVar = this.f12528b;
        if (j2 != 0) {
            bVar.m887i("If-Modified-Since", C2926f.m995b(new Date(((HttpURLConnection) this).ifModifiedSince)));
        } else {
            bVar.m888h("If-Modified-Since");
        }
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.f12527a.m825I(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f12527a.m820P(i, TimeUnit.MILLISECONDS);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) {
        Set<String> set = f12525j;
        if (set.contains(str)) {
            ((HttpURLConnection) this).method = str;
            return;
        }
        throw new ProtocolException("Expected one of " + set + " but was " + str);
    }

    @Override // java.net.URLConnection
    public final void setRequestProperty(String str, String str2) {
        if (((HttpURLConnection) this).connected) {
            throw new IllegalStateException("Cannot set request property after connection is made");
        } else if (str == null) {
            throw new NullPointerException("field == null");
        } else if (str2 == null) {
            C2970g f = C2970g.m673f();
            f.m671i("Ignoring header " + str + " because its value was null.");
        } else if ("X-Android-Transports".equals(str) || "X-Android-Protocols".equals(str)) {
            m634h(str2, false);
        } else {
            this.f12528b.m887i(str, str2);
        }
    }

    @Override // java.net.HttpURLConnection
    public final boolean usingProxy() {
        C2963t tVar = this.f12534h;
        Proxy b = tVar != null ? tVar.m710b() : this.f12527a.m804o();
        return (b == null || b.type() == Proxy.Type.DIRECT) ? false : true;
    }
}
