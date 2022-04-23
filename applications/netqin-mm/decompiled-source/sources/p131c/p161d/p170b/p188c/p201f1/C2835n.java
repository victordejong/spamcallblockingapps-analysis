package p131c.p161d.p170b.p188c.p201f1;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.HttpDataSource;
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
import p131c.p161d.p170b.p188c.p203g1.AbstractC2906x;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
/* renamed from: c.d.b.c.f1.n */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/n.class */
public class C2835n extends AbstractC2824g implements HttpDataSource {

    /* renamed from: u */
    public static final Pattern f10311u = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: v */
    public static final AtomicReference<byte[]> f10312v = new AtomicReference<>();

    /* renamed from: e */
    public final boolean f10313e;

    /* renamed from: f */
    public final int f10314f;

    /* renamed from: g */
    public final int f10315g;

    /* renamed from: h */
    public final String f10316h;

    /* renamed from: i */
    public final HttpDataSource.C7199a f10317i;

    /* renamed from: j */
    public final HttpDataSource.C7199a f10318j;

    /* renamed from: k */
    public AbstractC2906x<String> f10319k;

    /* renamed from: l */
    public C2829k f10320l;

    /* renamed from: m */
    public HttpURLConnection f10321m;

    /* renamed from: n */
    public InputStream f10322n;

    /* renamed from: o */
    public boolean f10323o;

    /* renamed from: p */
    public int f10324p;

    /* renamed from: q */
    public long f10325q;

    /* renamed from: r */
    public long f10326r;

    /* renamed from: s */
    public long f10327s;

    /* renamed from: t */
    public long f10328t;

    @Deprecated
    public C2835n(String str, AbstractC2906x<String> xVar) {
        this(str, xVar, 8000, 8000);
    }

    @Deprecated
    public C2835n(String str, AbstractC2906x<String> xVar, int i, int i2) {
        this(str, xVar, i, i2, false, null);
    }

    @Deprecated
    public C2835n(String str, AbstractC2906x<String> xVar, int i, int i2, boolean z, HttpDataSource.C7199a aVar) {
        super(true);
        C2877e.m28735a(str);
        this.f10316h = str;
        this.f10319k = xVar;
        this.f10318j = new HttpDataSource.C7199a();
        this.f10314f = i;
        this.f10315g = i2;
        this.f10313e = z;
        this.f10317i = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m28908a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p201f1.C2835n.m28908a(java.net.HttpURLConnection):long");
    }

    /* renamed from: a */
    public static URL m28904a(URL url, String str) throws IOException {
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

    /* renamed from: a */
    public static void m28907a(HttpURLConnection httpURLConnection, long j) {
        int i = C2885h0.f10477a;
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
                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: b */
    public static boolean m28901b(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    /* renamed from: a */
    public final int m28903a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f10326r;
        int i3 = i2;
        if (j != -1) {
            long j2 = j - this.f10328t;
            if (j2 == 0) {
                return -1;
            }
            i3 = (int) Math.min(i2, j2);
        }
        int read = this.f10322n.read(bArr, i, i3);
        if (read != -1) {
            this.f10328t += read;
            m28941a(read);
            return read;
        } else if (this.f10326r == -1) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo18288a(p131c.p161d.p170b.p188c.p201f1.C2829k r8) throws com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p201f1.C2835n.mo18288a(c.d.b.c.f1.k):long");
    }

    /* renamed from: a */
    public HttpURLConnection m28906a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    /* renamed from: a */
    public final HttpURLConnection m28905a(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection a = m28906a(url);
        a.setConnectTimeout(this.f10314f);
        a.setReadTimeout(this.f10315g);
        HashMap hashMap = new HashMap();
        HttpDataSource.C7199a aVar = this.f10317i;
        if (aVar != null) {
            hashMap.putAll(aVar.m18286a());
        }
        hashMap.putAll(this.f10318j.m18286a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            a.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (!(j == 0 && j2 == -1)) {
            String str = "bytes=" + j + "-";
            String str2 = str;
            if (j2 != -1) {
                str2 = str + ((j + j2) - 1);
            }
            a.setRequestProperty("Range", str2);
        }
        a.setRequestProperty("User-Agent", this.f10316h);
        a.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        a.setInstanceFollowRedirects(z2);
        a.setDoOutput(bArr != null);
        a.setRequestMethod(C2829k.m28933b(i));
        if (bArr != null) {
            a.setFixedLengthStreamingMode(bArr.length);
            a.connect();
            OutputStream outputStream = a.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            a.connect();
        }
        return a;
    }

    /* renamed from: b */
    public final long m28902b() {
        long j = this.f10326r;
        if (j != -1) {
            j -= this.f10328t;
        }
        return j;
    }

    /* renamed from: c */
    public final void m28900c() {
        HttpURLConnection httpURLConnection = this.f10321m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                C2894o.m28599a("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f10321m = null;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public void close() throws HttpDataSource.HttpDataSourceException {
        try {
            if (this.f10322n != null) {
                m28907a(this.f10321m, m28902b());
                try {
                    this.f10322n.close();
                } catch (IOException e) {
                    throw new HttpDataSource.HttpDataSourceException(e, this.f10320l, 3);
                }
            }
            this.f10322n = null;
            m28900c();
            if (this.f10323o) {
                this.f10323o = false;
                m28942a();
            }
        } catch (Throwable th) {
            this.f10322n = null;
            m28900c();
            if (this.f10323o) {
                this.f10323o = false;
                m28942a();
            }
            throw th;
        }
    }

    /* renamed from: d */
    public final HttpURLConnection m28898d(C2829k kVar) throws IOException {
        HttpURLConnection a;
        URL url = new URL(kVar.f10265a.toString());
        int i = kVar.f10266b;
        byte[] bArr = kVar.f10267c;
        long j = kVar.f10270f;
        long j2 = kVar.f10271g;
        boolean a2 = kVar.m28936a(1);
        if (!this.f10313e) {
            return m28905a(url, i, bArr, j, j2, a2, true, kVar.f10268d);
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 <= 20) {
                a = m28905a(url, i, bArr, j, j2, a2, false, kVar.f10268d);
                int responseCode = a.getResponseCode();
                String headerField = a.getHeaderField("Location");
                if ((i == 1 || i == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                    a.disconnect();
                    url = m28904a(url, headerField);
                    bArr = bArr;
                } else if (i != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    break;
                } else {
                    a.disconnect();
                    url = m28904a(url, headerField);
                    bArr = null;
                    i = 1;
                }
                i2 = i3;
            } else {
                throw new NoRouteToHostException("Too many redirects: " + i3);
            }
        }
        return a;
    }

    /* renamed from: d */
    public final void m28899d() throws IOException {
        if (this.f10327s != this.f10325q) {
            byte[] andSet = f10312v.getAndSet(null);
            byte[] bArr = andSet;
            if (andSet == null) {
                bArr = new byte[4096];
            }
            while (true) {
                long j = this.f10327s;
                long j2 = this.f10325q;
                if (j != j2) {
                    int read = this.f10322n.read(bArr, 0, (int) Math.min(j2 - j, bArr.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.f10327s += read;
                        m28941a(read);
                    } else {
                        throw new EOFException();
                    }
                } else {
                    f10312v.set(bArr);
                    return;
                }
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: o */
    public Uri mo18287o() {
        HttpURLConnection httpURLConnection = this.f10321m;
        return httpURLConnection == null ? null : Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2824g, p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: p */
    public Map<String, List<String>> mo28874p() {
        HttpURLConnection httpURLConnection = this.f10321m;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public int read(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            m28899d();
            return m28903a(bArr, i, i2);
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, this.f10320l, 2);
        }
    }
}
