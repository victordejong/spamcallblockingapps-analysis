package p012b.p076s.p078b.p079a.p111z0;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
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
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1186r;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
/* renamed from: b.s.b.a.z0.p */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/p.class */
public class C1695p extends AbstractC1681d implements HttpDataSource {

    /* renamed from: t */
    public static final Pattern f6935t = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: u */
    public static final AtomicReference<byte[]> f6936u = new AtomicReference<>();

    /* renamed from: e */
    public final boolean f6937e;

    /* renamed from: f */
    public final int f6938f;

    /* renamed from: g */
    public final int f6939g;

    /* renamed from: h */
    public final String f6940h;

    /* renamed from: i */
    public final HttpDataSource.C0346c f6941i;

    /* renamed from: j */
    public final HttpDataSource.C0346c f6942j = new HttpDataSource.C0346c();

    /* renamed from: k */
    public AbstractC1186r<String> f6943k;

    /* renamed from: l */
    public C1687i f6944l;

    /* renamed from: m */
    public HttpURLConnection f6945m;

    /* renamed from: n */
    public InputStream f6946n;

    /* renamed from: o */
    public boolean f6947o;

    /* renamed from: p */
    public long f6948p;

    /* renamed from: q */
    public long f6949q;

    /* renamed from: r */
    public long f6950r;

    /* renamed from: s */
    public long f6951s;

    public C1695p(String str, int i, int i2, boolean z, HttpDataSource.C0346c cVar) {
        super(true);
        C1160a.m34521a(str);
        this.f6940h = str;
        this.f6938f = i;
        this.f6939g = i2;
        this.f6937e = z;
        this.f6941i = cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0061  */
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
    public static long m32349a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p111z0.C1695p.m32349a(java.net.HttpURLConnection):long");
    }

    /* renamed from: a */
    public static URL m32346a(URL url, String str) throws IOException {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if ("https".equals(protocol) || "http".equals(protocol)) {
                return url2;
            }
            String valueOf = String.valueOf(protocol);
            throw new ProtocolException(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "));
        }
        throw new ProtocolException("Null location redirect");
    }

    /* renamed from: a */
    public static void m32348a(HttpURLConnection httpURLConnection, long j) {
        int i = C1167d0.f4688a;
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

    /* renamed from: a */
    public final int m32345a(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f6949q;
        int i3 = i2;
        if (j != -1) {
            long j2 = j - this.f6951s;
            if (j2 == 0) {
                return -1;
            }
            i3 = (int) Math.min(i2, j2);
        }
        int read = this.f6946n.read(bArr, i, i3);
        if (read != -1) {
            this.f6951s += read;
            m32392a(read);
            return read;
        } else if (this.f6949q == -1) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo32144a(p012b.p076s.p078b.p079a.p111z0.C1687i r8) throws androidx.media2.exoplayer.external.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p111z0.C1695p.mo32144a(b.s.b.a.z0.i):long");
    }

    /* renamed from: a */
    public final HttpURLConnection m32347a(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, boolean z3) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f6938f);
        httpURLConnection.setReadTimeout(this.f6939g);
        HttpDataSource.C0346c cVar = this.f6941i;
        if (cVar != null) {
            for (Map.Entry<String, String> entry : cVar.m37922a().entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, String> entry2 : this.f6942j.m37922a().entrySet()) {
            httpURLConnection.setRequestProperty(entry2.getKey(), entry2.getValue());
        }
        if (!(j == 0 && j2 == -1)) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("bytes=");
            sb.append(j);
            sb.append("-");
            String sb2 = sb.toString();
            String str = sb2;
            if (j2 != -1) {
                String valueOf = String.valueOf(sb2);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb3.append(valueOf);
                sb3.append((j + j2) - 1);
                str = sb3.toString();
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.f6940h);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        if (z2) {
            httpURLConnection.setRequestProperty("Icy-MetaData", "1");
        }
        httpURLConnection.setInstanceFollowRedirects(z3);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(C1687i.m32382b(i));
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    /* renamed from: b */
    public final long m32344b() {
        long j = this.f6949q;
        if (j != -1) {
            j -= this.f6951s;
        }
        return j;
    }

    /* renamed from: c */
    public final void m32343c() {
        HttpURLConnection httpURLConnection = this.f6945m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                C1175j.m34419a("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f6945m = null;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws HttpDataSource.HttpDataSourceException {
        try {
            if (this.f6946n != null) {
                m32348a(this.f6945m, m32344b());
                try {
                    this.f6946n.close();
                } catch (IOException e) {
                    throw new HttpDataSource.HttpDataSourceException(e, this.f6944l, 3);
                }
            }
            this.f6946n = null;
            m32343c();
            if (this.f6947o) {
                this.f6947o = false;
                m32393a();
            }
        } catch (Throwable th) {
            this.f6946n = null;
            m32343c();
            if (this.f6947o) {
                this.f6947o = false;
                m32393a();
            }
            throw th;
        }
    }

    /* renamed from: d */
    public final HttpURLConnection m32341d(C1687i iVar) throws IOException {
        HttpURLConnection a;
        URL url = new URL(iVar.f6883a.toString());
        int i = iVar.f6884b;
        byte[] bArr = iVar.f6885c;
        long j = iVar.f6887e;
        long j2 = iVar.f6888f;
        boolean a2 = iVar.m32385a(1);
        boolean a3 = iVar.m32385a(2);
        if (!this.f6937e) {
            return m32347a(url, i, bArr, j, j2, a2, a3, true);
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 <= 20) {
                a = m32347a(url, i, bArr, j, j2, a2, a3, false);
                int responseCode = a.getResponseCode();
                String headerField = a.getHeaderField("Location");
                if ((i == 1 || i == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                    a.disconnect();
                    url = m32346a(url, headerField);
                    bArr = bArr;
                } else if (i != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    break;
                } else {
                    a.disconnect();
                    url = m32346a(url, headerField);
                    bArr = null;
                    i = 1;
                }
                i2 = i3;
            } else {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Too many redirects: ");
                sb.append(i3);
                throw new NoRouteToHostException(sb.toString());
            }
        }
        return a;
    }

    /* renamed from: d */
    public final void m32342d() throws IOException {
        if (this.f6950r != this.f6948p) {
            byte[] andSet = f6936u.getAndSet(null);
            byte[] bArr = andSet;
            if (andSet == null) {
                bArr = new byte[4096];
            }
            while (true) {
                long j = this.f6950r;
                long j2 = this.f6948p;
                if (j != j2) {
                    int read = this.f6946n.read(bArr, 0, (int) Math.min(j2 - j, bArr.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.f6950r += read;
                        m32392a(read);
                    } else {
                        throw new EOFException();
                    }
                } else {
                    f6936u.set(bArr);
                    return;
                }
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        HttpURLConnection httpURLConnection = this.f6945m;
        return httpURLConnection == null ? null : Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1681d, p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: p */
    public Map<String, List<String>> mo32322p() {
        HttpURLConnection httpURLConnection = this.f6945m;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            m32342d();
            return m32345a(bArr, i, i2);
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, this.f6944l, 2);
        }
    }
}
