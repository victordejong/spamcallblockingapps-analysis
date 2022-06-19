package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.util.AbstractC2020r;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2009j;
import com.mopub.common.Constants;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
/* renamed from: androidx.media2.exoplayer.external.upstream.o */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/o.class */
public final class C1981o extends AbstractC1966d implements HttpDataSource {

    /* renamed from: b */
    private static final Pattern f8017b = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: c */
    private static final AtomicReference<byte[]> f8018c = new AtomicReference<>();

    /* renamed from: d */
    private final boolean f8019d;

    /* renamed from: e */
    private final int f8020e;

    /* renamed from: f */
    private final int f8021f;

    /* renamed from: g */
    private final String f8022g;

    /* renamed from: h */
    private final HttpDataSource.C1954b f8023h;

    /* renamed from: i */
    private final HttpDataSource.C1954b f8024i;

    /* renamed from: j */
    private AbstractC2020r<String> f8025j;

    /* renamed from: k */
    private C1971h f8026k;

    /* renamed from: l */
    private HttpURLConnection f8027l;

    /* renamed from: m */
    private InputStream f8028m;

    /* renamed from: n */
    private boolean f8029n;

    /* renamed from: o */
    private int f8030o;

    /* renamed from: p */
    private long f8031p;

    /* renamed from: q */
    private long f8032q;

    /* renamed from: r */
    private long f8033r;

    /* renamed from: s */
    private long f8034s;

    public C1981o(String str) {
        this(str, 8000, 8000);
    }

    public C1981o(String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    public C1981o(String str, int i, int i2, boolean z, HttpDataSource.C1954b c1954b) {
        super(true);
        this.f8022g = C1993a.m41689a(str);
        this.f8024i = new HttpDataSource.C1954b();
        this.f8020e = i;
        this.f8021f = i2;
        this.f8019d = z;
        this.f8023h = c1954b;
    }

    @Deprecated
    public C1981o(String str, AbstractC2020r<String> abstractC2020r) {
        this(str, abstractC2020r, 8000, 8000);
    }

    @Deprecated
    public C1981o(String str, AbstractC2020r<String> abstractC2020r, int i, int i2) {
        this(str, abstractC2020r, i, i2, false, null);
    }

    @Deprecated
    public C1981o(String str, AbstractC2020r<String> abstractC2020r, int i, int i2, boolean z, HttpDataSource.C1954b c1954b) {
        super(true);
        this.f8022g = C1993a.m41689a(str);
        this.f8025j = abstractC2020r;
        this.f8024i = new HttpDataSource.C1954b();
        this.f8020e = i;
        this.f8021f = i2;
        this.f8019d = z;
        this.f8023h = c1954b;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0061  */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m41708a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.C1981o.m41708a(java.net.HttpURLConnection):long");
    }

    /* renamed from: a */
    private HttpURLConnection m41707a(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, boolean z3, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f8020e);
        httpURLConnection.setReadTimeout(this.f8021f);
        HashMap hashMap = new HashMap();
        HttpDataSource.C1954b c1954b = this.f8023h;
        if (c1954b != null) {
            hashMap.putAll(c1954b.m41765a());
        }
        hashMap.putAll(this.f8024i.m41765a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j != 0 || j2 != -1) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("bytes=");
            sb.append(j);
            sb.append(VerificationLanguage.REGION_PREFIX);
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
        httpURLConnection.setRequestProperty("User-Agent", this.f8022g);
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        if (z2) {
            httpURLConnection.setRequestProperty("Icy-MetaData", "1");
        }
        httpURLConnection.setInstanceFollowRedirects(z3);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(C1971h.m41735b(i));
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

    /* renamed from: a */
    private static URL m41706a(URL url, String str) throws IOException {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (Constants.HTTPS.equals(protocol) || "http".equals(protocol)) {
                return url2;
            }
            String valueOf = String.valueOf(protocol);
            throw new ProtocolException(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "));
        }
        throw new ProtocolException("Null location redirect");
    }

    /* renamed from: f */
    private void m41705f() {
        HttpURLConnection httpURLConnection = this.f8027l;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                C2009j.m41579b("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f8027l = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final int mo41197a(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            if (this.f8033r != this.f8031p) {
                byte[] andSet = f8018c.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.f8033r;
                    long j2 = this.f8031p;
                    if (j == j2) {
                        f8018c.set(bArr2);
                        break;
                    }
                    int read = this.f8028m.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f8033r += read;
                    m41743a(read);
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.f8032q;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.f8034s;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = this.f8028m.read(bArr, i, i3);
            if (read2 == -1) {
                if (this.f8032q != -1) {
                    throw new EOFException();
                }
                return -1;
            }
            this.f8034s += read2;
            m41743a(read2);
            return read2;
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, this.f8026k, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x031f, code lost:
        r0 = new java.lang.StringBuilder(31);
        r0.append("Too many redirects: ");
        r0.append(r0);
        r0 = new java.net.NoRouteToHostException(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x034d, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0108, code lost:
        if (r0 == 308) goto L123;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v157 */
    /* JADX WARN: Type inference failed for: r0v173 */
    /* JADX WARN: Type inference failed for: r0v174 */
    /* JADX WARN: Type inference failed for: r0v175 */
    /* JADX WARN: Type inference failed for: r0v176 */
    /* JADX WARN: Type inference failed for: r0v177 */
    /* JADX WARN: Type inference failed for: r0v178 */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /* JADX WARN: Type inference failed for: r1v55, types: [java.io.IOException] */
    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo41199a(androidx.media2.exoplayer.external.upstream.C1971h r14) throws androidx.media2.exoplayer.external.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.C1981o.mo41199a(androidx.media2.exoplayer.external.upstream.h):long");
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: a */
    public final Uri mo41200a() {
        HttpURLConnection httpURLConnection = this.f8027l;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1966d, androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: b */
    public final Map<String, List<String>> mo41696b() {
        HttpURLConnection httpURLConnection = this.f8027l;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (r7 > android.support.p008v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L22;
     */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo41196c() throws androidx.media2.exoplayer.external.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.C1981o.mo41196c():void");
    }
}
