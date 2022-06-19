package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.net.Uri;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
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
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24789n;
/* renamed from: e.m.a.c.p1.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/s.class */
public class C24749s extends AbstractC24698g implements AbstractC24739l {

    /* renamed from: t */
    public static final Pattern f69385t = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: u */
    public static final AtomicReference<byte[]> f69386u = new AtomicReference<>();

    /* renamed from: e */
    public final boolean f69387e;

    /* renamed from: f */
    public final int f69388f;

    /* renamed from: g */
    public final int f69389g;

    /* renamed from: h */
    public final String f69390h;

    /* renamed from: i */
    public final C24677a0 f69391i;

    /* renamed from: j */
    public final C24677a0 f69392j;

    /* renamed from: k */
    public C24742n f69393k;

    /* renamed from: l */
    public HttpURLConnection f69394l;

    /* renamed from: m */
    public InputStream f69395m;

    /* renamed from: n */
    public boolean f69396n;

    /* renamed from: o */
    public int f69397o;

    /* renamed from: p */
    public long f69398p;

    /* renamed from: q */
    public long f69399q;

    /* renamed from: r */
    public long f69400r;

    /* renamed from: s */
    public long f69401s;

    public C24749s(String str, int i, int i2, boolean z, C24677a0 c24677a0) {
        super(true);
        if (!TextUtils.isEmpty(str)) {
            this.f69390h = str;
            this.f69392j = new C24677a0();
            this.f69388f = i;
            this.f69389g = i2;
            this.f69387e = z;
            this.f69391i = c24677a0;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: i */
    public static URL m4665i(URL url, String str) throws IOException {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !Protocols.HTTP.equals(protocol)) {
                throw new ProtocolException(C22128a.m8543z2("Unsupported protocol redirect: ", protocol));
            }
            return url2;
        }
        throw new ProtocolException("Null location redirect");
    }

    /* renamed from: l */
    public static void m4662l(HttpURLConnection httpURLConnection, long j) {
        int i = C24773d0.f69427a;
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

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24698g, p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: a */
    public Map<String, List<String>> mo4667a() {
        HttpURLConnection httpURLConnection = this.f69394l;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
        if (r11 != 0) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0130  */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo4658b(p193e.p1577m.p1578a.p1596c.p1634p1.C24742n r8) throws p193e.p1577m.p1578a.p1596c.p1634p1.C24757y {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1634p1.C24749s.mo4658b(e.m.a.c.p1.n):long");
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws C24757y {
        try {
            if (this.f69395m != null) {
                HttpURLConnection httpURLConnection = this.f69394l;
                char c = this.f69399q;
                if (c != -1) {
                    c -= this.f69401s;
                }
                m4662l(httpURLConnection, c);
                try {
                    this.f69395m.close();
                } catch (IOException e) {
                    throw new C24757y(e, this.f69393k, 3);
                }
            }
            this.f69395m = null;
            m4666h();
            if (!this.f69396n) {
                return;
            }
            this.f69396n = false;
            m4767e();
        } catch (Throwable th) {
            this.f69395m = null;
            m4666h();
            if (this.f69396n) {
                this.f69396n = false;
                m4767e();
            }
            throw th;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.f69394l;
        return httpURLConnection == null ? null : Uri.parse(httpURLConnection.getURL().toString());
    }

    /* renamed from: h */
    public final void m4666h() {
        HttpURLConnection httpURLConnection = this.f69394l;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                C24789n.m4576a("Unexpected error while disconnecting", e);
            }
            this.f69394l = null;
        }
    }

    /* renamed from: j */
    public final HttpURLConnection m4664j(C24742n c24742n) throws IOException {
        HttpURLConnection m4663k;
        URL url;
        URL url2 = new URL(c24742n.f69328a.toString());
        int i = c24742n.f69329b;
        byte[] bArr = c24742n.f69330c;
        long j = c24742n.f69333f;
        long j2 = c24742n.f69334g;
        boolean m4686b = c24742n.m4686b(1);
        if (!this.f69387e) {
            return m4663k(url2, i, bArr, j, j2, m4686b, true, c24742n.f69331d);
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 > 20) {
                throw new NoRouteToHostException(C22128a.m8611i2("Too many redirects: ", i3));
            }
            byte[] bArr2 = bArr;
            m4663k = m4663k(url2, i, bArr, j, j2, m4686b, false, c24742n.f69331d);
            int responseCode = m4663k.getResponseCode();
            String headerField = m4663k.getHeaderField("Location");
            if ((i == 1 || i == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                m4663k.disconnect();
                url = m4665i(url2, headerField);
            } else if (i != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                break;
            } else {
                m4663k.disconnect();
                url = m4665i(url2, headerField);
                bArr2 = null;
                i = 1;
            }
            i2 = i3;
            url2 = url;
            bArr = bArr2;
        }
        return m4663k;
    }

    /* renamed from: k */
    public final HttpURLConnection m4663k(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f69388f);
        httpURLConnection.setReadTimeout(this.f69389g);
        HashMap hashMap = new HashMap();
        C24677a0 c24677a0 = this.f69391i;
        if (c24677a0 != null) {
            hashMap.putAll(c24677a0.m4776a());
        }
        hashMap.putAll(this.f69392j.m4776a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j != 0 || j2 != -1) {
            String m8575r2 = C22128a.m8575r2("bytes=", j, StringConstant.DASH);
            String str = m8575r2;
            if (j2 != -1) {
                StringBuilder m8728C = C22128a.m8728C(m8575r2);
                m8728C.append((j + j2) - 1);
                str = m8728C.toString();
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.f69390h);
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(C24742n.m4687a(i));
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

    /* renamed from: m */
    public final void m4661m() throws IOException {
        if (this.f69400r == this.f69398p) {
            return;
        }
        byte[] andSet = f69386u.getAndSet(null);
        byte[] bArr = andSet;
        if (andSet == null) {
            bArr = new byte[4096];
        }
        while (true) {
            long j = this.f69400r;
            long j2 = this.f69398p;
            if (j == j2) {
                f69386u.set(bArr);
                return;
            }
            int read = this.f69395m.read(bArr, 0, (int) Math.min(j2 - j, bArr.length));
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            if (read == -1) {
                throw new EOFException();
            }
            this.f69400r += read;
            m4768d(read);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws C24757y {
        int i3;
        try {
            m4661m();
            if (i2 == 0) {
                i3 = 0;
            } else {
                long j = this.f69399q;
                int i4 = i2;
                if (j != -1) {
                    long j2 = j - this.f69401s;
                    if (j2 != 0) {
                        i4 = (int) Math.min(i2, j2);
                    }
                    i3 = -1;
                }
                i3 = this.f69395m.read(bArr, i, i4);
                if (i3 != -1) {
                    this.f69401s += i3;
                    m4768d(i3);
                } else if (this.f69399q != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new C24757y(e, this.f69393k, 2);
        }
    }
}
