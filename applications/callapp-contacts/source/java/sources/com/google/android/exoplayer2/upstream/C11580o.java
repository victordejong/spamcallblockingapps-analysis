package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.common.base.AbstractC15392n;
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
/* renamed from: com.google.android.exoplayer2.upstream.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/o.class */
public final class C11580o extends AbstractC11562d implements HttpDataSource {

    /* renamed from: b */
    private static final Pattern f38585b = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: c */
    private final boolean f38586c;

    /* renamed from: d */
    private final int f38587d;

    /* renamed from: e */
    private final int f38588e;

    /* renamed from: f */
    private final String f38589f;

    /* renamed from: g */
    private final HttpDataSource.C11524c f38590g;

    /* renamed from: h */
    private final HttpDataSource.C11524c f38591h;

    /* renamed from: i */
    private AbstractC15392n<String> f38592i;

    /* renamed from: j */
    private C11570j f38593j;

    /* renamed from: k */
    private HttpURLConnection f38594k;

    /* renamed from: l */
    private InputStream f38595l;

    /* renamed from: m */
    private byte[] f38596m;

    /* renamed from: n */
    private boolean f38597n;

    /* renamed from: o */
    private int f38598o;

    /* renamed from: p */
    private long f38599p;

    /* renamed from: q */
    private long f38600q;

    /* renamed from: r */
    private long f38601r;

    /* renamed from: s */
    private long f38602s;

    /* renamed from: com.google.android.exoplayer2.upstream.o$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/o$a.class */
    public static final class C11582a implements HttpDataSource.AbstractC11523b {

        /* renamed from: a */
        public String f38603a;

        /* renamed from: d */
        boolean f38606d;

        /* renamed from: f */
        private AbstractC11590v f38608f;

        /* renamed from: g */
        private AbstractC15392n<String> f38609g;

        /* renamed from: e */
        private final HttpDataSource.C11524c f38607e = new HttpDataSource.C11524c();

        /* renamed from: b */
        int f38604b = 8000;

        /* renamed from: c */
        int f38605c = 8000;

        /* renamed from: a */
        public final C11580o createDataSource() {
            C11580o c11580o = new C11580o(this.f38603a, this.f38604b, this.f38605c, this.f38606d, this.f38607e, this.f38609g);
            AbstractC11590v abstractC11590v = this.f38608f;
            if (abstractC11590v != null) {
                c11580o.mo20034a(abstractC11590v);
            }
            return c11580o;
        }
    }

    @Deprecated
    public C11580o() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public C11580o(String str) {
        this(str, 8000, 8000);
    }

    @Deprecated
    public C11580o(String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @Deprecated
    public C11580o(String str, int i, int i2, boolean z, HttpDataSource.C11524c c11524c) {
        this(str, i, i2, z, c11524c, null);
    }

    private C11580o(String str, int i, int i2, boolean z, HttpDataSource.C11524c c11524c, AbstractC15392n<String> abstractC15392n) {
        super(true);
        this.f38589f = str;
        this.f38587d = i;
        this.f38588e = i2;
        this.f38586c = z;
        this.f38590g = c11524c;
        this.f38592i = abstractC15392n;
        this.f38591h = new HttpDataSource.C11524c();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long m20045a(java.net.HttpURLConnection r5) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.C11580o.m20045a(java.net.HttpURLConnection):long");
    }

    /* renamed from: a */
    private HttpURLConnection m20044a(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f38587d);
        httpURLConnection.setReadTimeout(this.f38588e);
        HashMap hashMap = new HashMap();
        HttpDataSource.C11524c c11524c = this.f38590g;
        if (c11524c != null) {
            hashMap.putAll(c11524c.m20209a());
        }
        hashMap.putAll(this.f38591h.m20209a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j != 0 || j2 != -1) {
            String str = "bytes=" + j + VerificationLanguage.REGION_PREFIX;
            String str2 = str;
            if (j2 != -1) {
                str2 = str + ((j + j2) - 1);
            }
            httpURLConnection.setRequestProperty("Range", str2);
        }
        String str3 = this.f38589f;
        if (str3 != null) {
            httpURLConnection.setRequestProperty("User-Agent", str3);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(C11570j.m20075a(i));
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
    private static URL m20043a(URL url, String str) throws IOException {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!Constants.HTTPS.equals(protocol) && !"http".equals(protocol)) {
                throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
            }
            return url2;
        }
        throw new ProtocolException("Null location redirect");
    }

    /* renamed from: f */
    private void m20042f() {
        HttpURLConnection httpURLConnection = this.f38594k;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                C11617n.m19857b("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f38594k = null;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        try {
            if (this.f38601r != this.f38599p) {
                if (this.f38596m == null) {
                    this.f38596m = new byte[4096];
                }
                while (true) {
                    long j = this.f38601r;
                    long j2 = this.f38599p;
                    if (j == j2) {
                        break;
                    }
                    int read = ((InputStream) C11599af.m19974a(this.f38595l)).read(this.f38596m, 0, (int) Math.min(j2 - j, this.f38596m.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f38601r += read;
                    m20084a(read);
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.f38600q;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.f38602s;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = ((InputStream) C11599af.m19974a(this.f38595l)).read(bArr, i, i3);
            if (read2 == -1) {
                if (this.f38600q != -1) {
                    throw new EOFException();
                }
                return -1;
            }
            this.f38602s += read2;
            m20084a(read2);
            return read2;
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, (C11570j) C11599af.m19974a(this.f38593j), 2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final long mo20035a(C11570j c11570j) throws HttpDataSource.HttpDataSourceException {
        HttpURLConnection httpURLConnection;
        byte[] bArr;
        HttpURLConnection m20044a;
        this.f38593j = c11570j;
        this.f38602s = 0L;
        this.f38601r = 0L;
        m20082d();
        try {
            URL url = new URL(c11570j.f38512a.toString());
            int i = c11570j.f38514c;
            byte[] bArr2 = c11570j.f38515d;
            long j = c11570j.f38518g;
            long j2 = c11570j.f38519h;
            boolean m20074b = c11570j.m20074b(1);
            if (!this.f38586c) {
                httpURLConnection = m20044a(url, i, bArr2, j, j2, m20074b, true, c11570j.f38516e);
            } else {
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    int i4 = i3 + 1;
                    if (i3 > 20) {
                        throw new NoRouteToHostException("Too many redirects: ".concat(String.valueOf(i4)));
                    }
                    m20044a = m20044a(url, i, bArr2, j, j2, m20074b, false, c11570j.f38516e);
                    int responseCode = m20044a.getResponseCode();
                    String headerField = m20044a.getHeaderField("Location");
                    if ((i == 1 || i == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                        m20044a.disconnect();
                        url = m20043a(url, headerField);
                    } else if (i != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                        break;
                    } else {
                        m20044a.disconnect();
                        bArr2 = null;
                        url = m20043a(url, headerField);
                        i = 1;
                    }
                    i2 = i4;
                }
                httpURLConnection = m20044a;
            }
            this.f38594k = httpURLConnection;
            try {
                this.f38598o = httpURLConnection.getResponseCode();
                String responseMessage = httpURLConnection.getResponseMessage();
                int i5 = this.f38598o;
                if (i5 < 200 || i5 > 299) {
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    InputStream errorStream = httpURLConnection.getErrorStream();
                    try {
                        bArr = errorStream != null ? C11599af.m19976a(errorStream) : C11599af.f38653f;
                    } catch (IOException e) {
                        bArr = C11599af.f38653f;
                    }
                    m20042f();
                    HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(this.f38598o, responseMessage, headerFields, c11570j, bArr);
                    if (this.f38598o == 416) {
                        invalidResponseCodeException.initCause(new DataSourceException(0));
                    }
                    throw invalidResponseCodeException;
                }
                String contentType = httpURLConnection.getContentType();
                AbstractC15392n<String> abstractC15392n = this.f38592i;
                if (abstractC15392n != null && !abstractC15392n.apply(contentType)) {
                    m20042f();
                    throw new HttpDataSource.InvalidContentTypeException(contentType, c11570j);
                }
                this.f38599p = (this.f38598o != 200 || c11570j.f38518g == 0) ? (char) 0 : c11570j.f38518g;
                boolean equalsIgnoreCase = "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
                if (!equalsIgnoreCase) {
                    char c = 65535;
                    if (c11570j.f38519h != -1) {
                        this.f38600q = c11570j.f38519h;
                    } else {
                        long m20045a = m20045a(httpURLConnection);
                        if (m20045a != -1) {
                            c = m20045a - this.f38599p;
                        }
                        this.f38600q = c;
                    }
                } else {
                    this.f38600q = c11570j.f38519h;
                }
                try {
                    this.f38595l = httpURLConnection.getInputStream();
                    if (equalsIgnoreCase) {
                        this.f38595l = new GZIPInputStream(this.f38595l);
                    }
                    this.f38597n = true;
                    m20083b(c11570j);
                    return this.f38600q;
                } catch (IOException e2) {
                    m20042f();
                    throw new HttpDataSource.HttpDataSourceException(e2, c11570j, 1);
                }
            } catch (IOException e3) {
                m20042f();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect", e3, c11570j, 1);
            }
        } catch (IOException e4) {
            String message = e4.getMessage();
            if (message != null && C11599af.m19927d(message).matches("cleartext http traffic.*not permitted.*")) {
                throw new HttpDataSource.CleartextNotPermittedException(e4, c11570j);
            }
            throw new HttpDataSource.HttpDataSourceException("Unable to connect", e4, c11570j, 1);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: a */
    public final Uri mo20036a() {
        HttpURLConnection httpURLConnection = this.f38594k;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11562d, com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: b */
    public final Map<String, List<String>> mo20032b() {
        HttpURLConnection httpURLConnection = this.f38594k;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        if (r8 > android.support.p008v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) goto L23;
     */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC11567h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo20031c() throws com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.C11580o.mo20031c():void");
    }
}
