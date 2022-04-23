package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.r;
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
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/o.class */
public final class o extends d implements HttpDataSource {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f4095b = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicReference<byte[]> f4096c = new AtomicReference<>();

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4097d;
    private final int e;
    private final int f;
    private final String g;
    private final HttpDataSource.b h;
    private final HttpDataSource.b i;
    private r<String> j;
    private h k;
    private HttpURLConnection l;
    private InputStream m;
    private boolean n;
    private int o;
    private long p;
    private long q;
    private long r;
    private long s;

    public o(String str) {
        this(str, 8000, 8000);
    }

    public o(String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    public o(String str, int i, int i2, boolean z, HttpDataSource.b bVar) {
        super(true);
        this.g = a.a(str);
        this.i = new HttpDataSource.b();
        this.e = i;
        this.f = i2;
        this.f4097d = z;
        this.h = bVar;
    }

    @Deprecated
    public o(String str, r<String> rVar) {
        this(str, rVar, 8000, 8000);
    }

    @Deprecated
    public o(String str, r<String> rVar, int i, int i2) {
        this(str, rVar, i, i2, false, null);
    }

    @Deprecated
    public o(String str, r<String> rVar, int i, int i2, boolean z, HttpDataSource.b bVar) {
        super(true);
        this.g = a.a(str);
        this.j = rVar;
        this.i = new HttpDataSource.b();
        this.e = i;
        this.f = i2;
        this.f4097d = z;
        this.h = bVar;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.o.a(java.net.HttpURLConnection):long");
    }

    private HttpURLConnection a(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, boolean z3, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.e);
        httpURLConnection.setReadTimeout(this.f);
        HashMap hashMap = new HashMap();
        HttpDataSource.b bVar = this.h;
        if (bVar != null) {
            hashMap.putAll(bVar.a());
        }
        hashMap.putAll(this.i.a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (!(j == 0 && j2 == -1)) {
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
        httpURLConnection.setRequestProperty("User-Agent", this.g);
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        if (z2) {
            httpURLConnection.setRequestProperty("Icy-MetaData", "1");
        }
        httpURLConnection.setInstanceFollowRedirects(z3);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(h.b(i));
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

    private static URL a(URL url, String str) throws IOException {
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

    private void f() {
        HttpURLConnection httpURLConnection = this.l;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                j.b("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.l = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final int a(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            if (this.r != this.p) {
                byte[] andSet = f4096c.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.r;
                    long j2 = this.p;
                    if (j == j2) {
                        f4096c.set(bArr2);
                        break;
                    }
                    int read = this.m.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.r += read;
                        a(read);
                    } else {
                        throw new EOFException();
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.q;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.s;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = this.m.read(bArr, i, i3);
            if (read2 != -1) {
                this.s += read2;
                a(read2);
                return read2;
            } else if (this.q == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, this.k, 2);
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
        if (r0 == 308) goto L_0x0308;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v12, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r26v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r26v6 */
    @Override // androidx.media2.exoplayer.external.upstream.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(androidx.media2.exoplayer.external.upstream.h r14) throws androidx.media2.exoplayer.external.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.o.a(androidx.media2.exoplayer.external.upstream.h):long");
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final Uri a() {
        HttpURLConnection httpURLConnection = this.l;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // androidx.media2.exoplayer.external.upstream.d, androidx.media2.exoplayer.external.upstream.f
    public final Map<String, List<String>> b() {
        HttpURLConnection httpURLConnection = this.l;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
        if (r7 > android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L_0x0057;
     */
    @Override // androidx.media2.exoplayer.external.upstream.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() throws androidx.media2.exoplayer.external.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.o.c():void");
    }
}
