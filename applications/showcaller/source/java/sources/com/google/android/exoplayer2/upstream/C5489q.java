package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.AbstractC5538x;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.yanzhenjie.nohttp.Headers;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
/* renamed from: com.google.android.exoplayer2.upstream.q */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/q.class */
public class C5489q extends AbstractC5475g implements HttpDataSource {

    /* renamed from: f */
    private static final Pattern f17806f = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: g */
    private static final AtomicReference<byte[]> f17807g = new AtomicReference<>();

    /* renamed from: h */
    private final boolean f17808h;

    /* renamed from: i */
    private final int f17809i;

    /* renamed from: j */
    private final int f17810j;

    /* renamed from: k */
    private final String f17811k;

    /* renamed from: l */
    private final HttpDataSource.C5460b f17812l;

    /* renamed from: m */
    private final HttpDataSource.C5460b f17813m = new HttpDataSource.C5460b();

    /* renamed from: n */
    private AbstractC5538x<String> f17814n;

    /* renamed from: o */
    private C5481l f17815o;

    /* renamed from: p */
    private HttpURLConnection f17816p;

    /* renamed from: q */
    private InputStream f17817q;

    /* renamed from: r */
    private boolean f17818r;

    /* renamed from: s */
    private int f17819s;

    /* renamed from: t */
    private long f17820t;

    /* renamed from: u */
    private long f17821u;

    /* renamed from: v */
    private long f17822v;

    /* renamed from: w */
    private long f17823w;

    public C5489q(String str, int i, int i2, boolean z, HttpDataSource.C5460b c5460b) {
        super(true);
        this.f17811k = C5508e.m18912d(str);
        this.f17809i = i;
        this.f17810j = i2;
        this.f17808h = z;
        this.f17812l = c5460b;
    }

    /* renamed from: i */
    private void m18973i() {
        HttpURLConnection httpURLConnection = this.f17816p;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                C5526o.m18744d("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f17816p = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m18972j(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.C5489q.m18972j(java.net.HttpURLConnection):long");
    }

    /* renamed from: k */
    private static URL m18971k(URL url, String str) {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if ("https".equals(protocol) || "http".equals(protocol)) {
                return url2;
            }
            throw new ProtocolException("Unsupported protocol redirect: " + protocol);
        }
        throw new ProtocolException("Null location redirect");
    }

    /* renamed from: l */
    private static boolean m18970l(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField(Headers.HEAD_KEY_CONTENT_ENCODING));
    }

    /* renamed from: m */
    private HttpURLConnection m18969m(C5481l c5481l) {
        HttpURLConnection m18968n;
        URL url;
        byte[] bArr;
        URL url2 = new URL(c5481l.f17746a.toString());
        int i = c5481l.f17747b;
        byte[] bArr2 = c5481l.f17748c;
        long j = c5481l.f17751f;
        long j2 = c5481l.f17752g;
        boolean m19016d = c5481l.m19016d(1);
        if (!this.f17808h) {
            return m18968n(url2, i, bArr2, j, j2, m19016d, true, c5481l.f17749d);
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 > 20) {
                throw new NoRouteToHostException("Too many redirects: " + i3);
            }
            byte[] bArr3 = bArr2;
            m18968n = m18968n(url2, i, bArr2, j, j2, m19016d, false, c5481l.f17749d);
            int responseCode = m18968n.getResponseCode();
            String headerField = m18968n.getHeaderField(Headers.HEAD_KEY_LOCATION);
            if ((i == 1 || i == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                m18968n.disconnect();
                url = m18971k(url2, headerField);
                bArr = bArr3;
            } else if (i != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                break;
            } else {
                m18968n.disconnect();
                url = m18971k(url2, headerField);
                bArr = null;
                i = 1;
            }
            i2 = i3;
            byte[] bArr4 = bArr;
            url2 = url;
            bArr2 = bArr4;
        }
        return m18968n;
    }

    /* renamed from: n */
    private HttpURLConnection m18968n(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) {
        HttpURLConnection m18966p = m18966p(url);
        m18966p.setConnectTimeout(this.f17809i);
        m18966p.setReadTimeout(this.f17810j);
        HashMap hashMap = new HashMap();
        HttpDataSource.C5460b c5460b = this.f17812l;
        if (c5460b != null) {
            hashMap.putAll(c5460b.m19055a());
        }
        hashMap.putAll(this.f17813m.m19055a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            m18966p.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j != 0 || j2 != -1) {
            String str = "bytes=" + j + "-";
            String str2 = str;
            if (j2 != -1) {
                str2 = str + ((j + j2) - 1);
            }
            m18966p.setRequestProperty("Range", str2);
        }
        m18966p.setRequestProperty(Headers.HEAD_KEY_USER_AGENT, this.f17811k);
        m18966p.setRequestProperty(Headers.HEAD_KEY_ACCEPT_ENCODING, z ? "gzip" : "identity");
        m18966p.setInstanceFollowRedirects(z2);
        m18966p.setDoOutput(bArr != null);
        m18966p.setRequestMethod(C5481l.m19018b(i));
        if (bArr != null) {
            m18966p.setFixedLengthStreamingMode(bArr.length);
            m18966p.connect();
            OutputStream outputStream = m18966p.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            m18966p.connect();
        }
        return m18966p;
    }

    /* renamed from: o */
    private static void m18967o(HttpURLConnection httpURLConnection, long j) {
        int i = C5515h0.f17876a;
        if (i == 19 || i == 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if (!"com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) && !"com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    return;
                }
                Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: q */
    private int m18965q(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f17821u;
        int i3 = i2;
        if (j != -1) {
            long j2 = j - this.f17823w;
            if (j2 == 0) {
                return -1;
            }
            i3 = (int) Math.min(i2, j2);
        }
        int read = this.f17817q.read(bArr, i, i3);
        if (read == -1) {
            if (this.f17821u != -1) {
                throw new EOFException();
            }
            return -1;
        }
        this.f17823w += read;
        m19026d(read);
        return read;
    }

    /* renamed from: r */
    private void m18964r() {
        if (this.f17822v == this.f17820t) {
            return;
        }
        byte[] andSet = f17807g.getAndSet(null);
        byte[] bArr = andSet;
        if (andSet == null) {
            bArr = new byte[4096];
        }
        while (true) {
            long j = this.f17822v;
            long j2 = this.f17820t;
            if (j == j2) {
                f17807g.set(bArr);
                return;
            }
            int read = this.f17817q.read(bArr, 0, (int) Math.min(j2 - j, bArr.length));
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            if (read == -1) {
                throw new EOFException();
            }
            this.f17822v += read;
            m19026d(read);
        }
    }

    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        this.f17815o = c5481l;
        this.f17823w = 0L;
        this.f17822v = 0L;
        m19024f(c5481l);
        try {
            HttpURLConnection m18969m = m18969m(c5481l);
            this.f17816p = m18969m;
            try {
                this.f17819s = m18969m.getResponseCode();
                String responseMessage = this.f17816p.getResponseMessage();
                int i = this.f17819s;
                if (i < 200 || i > 299) {
                    Map<String, List<String>> headerFields = this.f17816p.getHeaderFields();
                    m18973i();
                    HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(this.f17819s, responseMessage, headerFields, c5481l);
                    if (this.f17819s == 416) {
                        invalidResponseCodeException.initCause(new DataSourceException(0));
                    }
                    throw invalidResponseCodeException;
                }
                String contentType = this.f17816p.getContentType();
                AbstractC5538x<String> abstractC5538x = this.f17814n;
                if (abstractC5538x != null && !abstractC5538x.mo18640a(contentType)) {
                    m18973i();
                    throw new HttpDataSource.InvalidContentTypeException(contentType, c5481l);
                }
                char c = 0;
                if (this.f17819s == 200) {
                    ?? r0 = c5481l.f17751f;
                    c = 0;
                    if (r0 != 0) {
                        c = r0;
                    }
                }
                this.f17820t = c;
                boolean m18970l = m18970l(this.f17816p);
                if (!m18970l) {
                    long j = c5481l.f17752g;
                    char c2 = 65535;
                    if (j != -1) {
                        this.f17821u = j;
                    } else {
                        long m18972j = m18972j(this.f17816p);
                        if (m18972j != -1) {
                            c2 = m18972j - this.f17820t;
                        }
                        this.f17821u = c2;
                    }
                } else {
                    this.f17821u = c5481l.f17752g;
                }
                try {
                    this.f17817q = this.f17816p.getInputStream();
                    if (m18970l) {
                        this.f17817q = new GZIPInputStream(this.f17817q);
                    }
                    this.f17818r = true;
                    m19023g(c5481l);
                    return this.f17821u;
                } catch (IOException e) {
                    m18973i();
                    throw new HttpDataSource.HttpDataSourceException(e, c5481l, 1);
                }
            } catch (IOException e2) {
                m18973i();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + c5481l.f17746a.toString(), e2, c5481l, 1);
            }
        } catch (IOException e3) {
            throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + c5481l.f17746a.toString(), e3, c5481l, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        HttpURLConnection httpURLConnection = this.f17816p;
        return httpURLConnection == null ? null : Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        try {
            if (this.f17817q != null) {
                m18967o(this.f17816p, m18974h());
                try {
                    this.f17817q.close();
                } catch (IOException e) {
                    throw new HttpDataSource.HttpDataSourceException(e, this.f17815o, 3);
                }
            }
            this.f17817q = null;
            m18973i();
            if (!this.f17818r) {
                return;
            }
            this.f17818r = false;
            m19025e();
        } catch (Throwable th) {
            this.f17817q = null;
            m18973i();
            if (this.f17818r) {
                this.f17818r = false;
                m19025e();
            }
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5475g, com.google.android.exoplayer2.upstream.AbstractC5478j
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f17816p;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: h */
    protected final long m18974h() {
        char c = this.f17821u;
        if (c != -1) {
            c -= this.f17823w;
        }
        return c;
    }

    /* renamed from: p */
    HttpURLConnection m18966p(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        try {
            m18964r();
            return m18965q(bArr, i, i2);
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, this.f17815o, 2);
        }
    }
}
