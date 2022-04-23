package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.af;
import com.google.common.base.n;
import com.mopub.common.Constants;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/o.class */
public final class o extends d implements HttpDataSource {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f22234b = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: c  reason: collision with root package name */
    private final boolean f22235c;

    /* renamed from: d  reason: collision with root package name */
    private final int f22236d;
    private final int e;
    private final String f;
    private final HttpDataSource.c g;
    private final HttpDataSource.c h;
    private n<String> i;
    private j j;
    private HttpURLConnection k;
    private InputStream l;
    private byte[] m;
    private boolean n;
    private int o;
    private long p;
    private long q;
    private long r;
    private long s;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/o$a.class */
    public static final class a implements HttpDataSource.b {

        /* renamed from: a  reason: collision with root package name */
        public String f22237a;

        /* renamed from: d  reason: collision with root package name */
        boolean f22240d;
        private v f;
        private n<String> g;
        private final HttpDataSource.c e = new HttpDataSource.c();

        /* renamed from: b  reason: collision with root package name */
        int f22238b = 8000;

        /* renamed from: c  reason: collision with root package name */
        int f22239c = 8000;

        /* renamed from: a */
        public final o createDataSource() {
            o oVar = new o(this.f22237a, this.f22238b, this.f22239c, this.f22240d, this.e, this.g);
            v vVar = this.f;
            if (vVar != null) {
                oVar.a(vVar);
            }
            return oVar;
        }
    }

    @Deprecated
    public o() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public o(String str) {
        this(str, 8000, 8000);
    }

    @Deprecated
    public o(String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @Deprecated
    public o(String str, int i, int i2, boolean z, HttpDataSource.c cVar) {
        this(str, i, i2, z, cVar, null);
    }

    private o(String str, int i, int i2, boolean z, HttpDataSource.c cVar, n<String> nVar) {
        super(true);
        this.f = str;
        this.f22236d = i;
        this.e = i2;
        this.f22235c = z;
        this.g = cVar;
        this.i = nVar;
        this.h = new HttpDataSource.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
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
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.o.a(java.net.HttpURLConnection):long");
    }

    private HttpURLConnection a(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f22236d);
        httpURLConnection.setReadTimeout(this.e);
        HashMap hashMap = new HashMap();
        HttpDataSource.c cVar = this.g;
        if (cVar != null) {
            hashMap.putAll(cVar.a());
        }
        hashMap.putAll(this.h.a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (!(j == 0 && j2 == -1)) {
            String str = "bytes=" + j + VerificationLanguage.REGION_PREFIX;
            String str2 = str;
            if (j2 != -1) {
                str2 = str + ((j + j2) - 1);
            }
            httpURLConnection.setRequestProperty("Range", str2);
        }
        String str3 = this.f;
        if (str3 != null) {
            httpURLConnection.setRequestProperty("User-Agent", str3);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(j.a(i));
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
            throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
        }
        throw new ProtocolException("Null location redirect");
    }

    private void f() {
        HttpURLConnection httpURLConnection = this.k;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                com.google.android.exoplayer2.util.n.b("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.k = null;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            if (this.r != this.p) {
                if (this.m == null) {
                    this.m = new byte[4096];
                }
                while (true) {
                    long j = this.r;
                    long j2 = this.p;
                    if (j == j2) {
                        break;
                    }
                    int read = ((InputStream) af.a(this.l)).read(this.m, 0, (int) Math.min(j2 - j, this.m.length));
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
            int read2 = ((InputStream) af.a(this.l)).read(bArr, i, i3);
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
            throw new HttpDataSource.HttpDataSourceException(e, (j) af.a(this.j), 2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws HttpDataSource.HttpDataSourceException {
        HttpURLConnection httpURLConnection;
        byte[] bArr;
        HttpURLConnection a2;
        this.j = jVar;
        this.s = 0L;
        this.r = 0L;
        d();
        try {
            URL url = new URL(jVar.f22204a.toString());
            int i = jVar.f22206c;
            byte[] bArr2 = jVar.f22207d;
            long j = jVar.g;
            long j2 = jVar.h;
            boolean b2 = jVar.b(1);
            if (!this.f22235c) {
                httpURLConnection = a(url, i, bArr2, j, j2, b2, true, jVar.e);
            } else {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    if (i2 <= 20) {
                        a2 = a(url, i, bArr2, j, j2, b2, false, jVar.e);
                        int responseCode = a2.getResponseCode();
                        String headerField = a2.getHeaderField("Location");
                        if ((i == 1 || i == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                            a2.disconnect();
                            url = a(url, headerField);
                        } else if (i != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                            break;
                        } else {
                            a2.disconnect();
                            bArr2 = null;
                            url = a(url, headerField);
                            i = 1;
                        }
                        i2 = i3;
                    } else {
                        throw new NoRouteToHostException("Too many redirects: ".concat(String.valueOf(i3)));
                    }
                }
                httpURLConnection = a2;
            }
            this.k = httpURLConnection;
            try {
                this.o = httpURLConnection.getResponseCode();
                String responseMessage = httpURLConnection.getResponseMessage();
                int i4 = this.o;
                if (i4 < 200 || i4 > 299) {
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    InputStream errorStream = httpURLConnection.getErrorStream();
                    try {
                        bArr = errorStream != null ? af.a(errorStream) : af.f;
                    } catch (IOException e) {
                        bArr = af.f;
                    }
                    f();
                    HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(this.o, responseMessage, headerFields, jVar, bArr);
                    if (this.o == 416) {
                        invalidResponseCodeException.initCause(new DataSourceException(0));
                    }
                    throw invalidResponseCodeException;
                }
                String contentType = httpURLConnection.getContentType();
                n<String> nVar = this.i;
                if (nVar == null || nVar.apply(contentType)) {
                    this.p = (this.o != 200 || jVar.g == 0) ? 0L : jVar.g;
                    boolean equalsIgnoreCase = "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
                    if (!equalsIgnoreCase) {
                        long j3 = -1;
                        if (jVar.h != -1) {
                            this.q = jVar.h;
                        } else {
                            long a3 = a(httpURLConnection);
                            if (a3 != -1) {
                                j3 = a3 - this.p;
                            }
                            this.q = j3;
                        }
                    } else {
                        this.q = jVar.h;
                    }
                    try {
                        this.l = httpURLConnection.getInputStream();
                        if (equalsIgnoreCase) {
                            this.l = new GZIPInputStream(this.l);
                        }
                        this.n = true;
                        b(jVar);
                        return this.q;
                    } catch (IOException e2) {
                        f();
                        throw new HttpDataSource.HttpDataSourceException(e2, jVar, 1);
                    }
                } else {
                    f();
                    throw new HttpDataSource.InvalidContentTypeException(contentType, jVar);
                }
            } catch (IOException e3) {
                f();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect", e3, jVar, 1);
            }
        } catch (IOException e4) {
            String message = e4.getMessage();
            if (message == null || !af.d(message).matches("cleartext http traffic.*not permitted.*")) {
                throw new HttpDataSource.HttpDataSourceException("Unable to connect", e4, jVar, 1);
            }
            throw new HttpDataSource.CleartextNotPermittedException(e4, jVar);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        HttpURLConnection httpURLConnection = this.k;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.d, com.google.android.exoplayer2.upstream.h
    public final Map<String, List<String>> b() {
        HttpURLConnection httpURLConnection = this.k;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        if (r8 > android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L_0x0060;
     */
    @Override // com.google.android.exoplayer2.upstream.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() throws com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.o.c():void");
    }
}
