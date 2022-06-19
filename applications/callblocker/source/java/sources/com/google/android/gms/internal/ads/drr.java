package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
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
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drr.class */
public final class drr implements drp {

    /* renamed from: a */
    private static final Pattern f15495a = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: b */
    private static final AtomicReference<byte[]> f15496b = new AtomicReference<>();

    /* renamed from: d */
    private final int f15498d;

    /* renamed from: e */
    private final int f15499e;

    /* renamed from: f */
    private final String f15500f;

    /* renamed from: j */
    private final dsa<? super drr> f15504j;

    /* renamed from: k */
    private drq f15505k;

    /* renamed from: l */
    private HttpURLConnection f15506l;

    /* renamed from: m */
    private InputStream f15507m;

    /* renamed from: n */
    private boolean f15508n;

    /* renamed from: o */
    private long f15509o;

    /* renamed from: p */
    private long f15510p;

    /* renamed from: q */
    private long f15511q;

    /* renamed from: r */
    private long f15512r;

    /* renamed from: g */
    private final dsm<String> f15501g = null;

    /* renamed from: i */
    private final drv f15503i = new drv();

    /* renamed from: c */
    private final boolean f15497c = true;

    /* renamed from: h */
    private final drv f15502h = null;

    public drr(String str, dsm<String> dsmVar, dsa<? super drr> dsaVar, int i, int i2, boolean z, drv drvVar) {
        this.f15500f = drz.m8773a(str);
        this.f15504j = dsaVar;
        this.f15498d = i;
        this.f15499e = i2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* renamed from: a */
    private static long m8810a(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        char c = 65535;
        if (!TextUtils.isEmpty(headerField)) {
            try {
                c = Long.parseLong(headerField);
            } catch (NumberFormatException e) {
                Log.e("DefaultHttpDataSource", new StringBuilder(String.valueOf(headerField).length() + 28).append("Unexpected Content-Length [").append(headerField).append("]").toString());
                c = 65535;
            }
        }
        String headerField2 = httpURLConnection.getHeaderField("Content-Range");
        char c2 = c;
        if (!TextUtils.isEmpty(headerField2)) {
            Matcher matcher = f15495a.matcher(headerField2);
            c2 = c;
            if (matcher.find()) {
                try {
                    ?? parseLong = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                    if (c < 0) {
                        c2 = parseLong;
                    } else {
                        c2 = c;
                        if (c != parseLong) {
                            Log.w("DefaultHttpDataSource", new StringBuilder(String.valueOf(headerField).length() + 26 + String.valueOf(headerField2).length()).append("Inconsistent headers [").append(headerField).append("] [").append(headerField2).append("]").toString());
                            c2 = Math.max((long) c, (long) parseLong);
                        }
                    }
                } catch (NumberFormatException e2) {
                    Log.e("DefaultHttpDataSource", new StringBuilder(String.valueOf(headerField2).length() + 27).append("Unexpected Content-Range [").append(headerField2).append("]").toString());
                    c2 = c;
                }
            }
        }
        return c2;
    }

    /* renamed from: a */
    private final HttpURLConnection m8809a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f15498d);
        httpURLConnection.setReadTimeout(this.f15499e);
        for (Map.Entry<String, String> entry : this.f15503i.m8787a().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (j != 0 || j2 != -1) {
            String sb = new StringBuilder(27).append("bytes=").append(j).append("-").toString();
            String str = sb;
            if (j2 != -1) {
                String valueOf = String.valueOf(sb);
                str = new StringBuilder(String.valueOf(valueOf).length() + 20).append(valueOf).append((j + j2) - 1).toString();
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.f15500f);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod("POST");
            if (bArr.length != 0) {
                httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
                return httpURLConnection;
            }
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    /* renamed from: d */
    private final void m8805d() {
        if (this.f15506l != null) {
            try {
                this.f15506l.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f15506l = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final int mo8808a(byte[] bArr, int i, int i2) {
        int i3;
        try {
            if (this.f15511q != this.f15509o) {
                byte[] andSet = f15496b.getAndSet(null);
                byte[] bArr2 = andSet;
                if (andSet == null) {
                    bArr2 = new byte[4096];
                }
                while (this.f15511q != this.f15509o) {
                    int read = this.f15507m.read(bArr2, 0, (int) Math.min(this.f15509o - this.f15511q, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (read == -1) {
                        throw new EOFException();
                    }
                    this.f15511q += read;
                    if (this.f15504j != null) {
                        this.f15504j.mo8766a((dsa<? super drr>) this, read);
                    }
                }
                f15496b.set(bArr2);
            }
            if (i2 == 0) {
                i3 = 0;
            } else {
                int i4 = i2;
                if (this.f15510p != -1) {
                    long j = this.f15510p - this.f15512r;
                    if (j == 0) {
                        i3 = -1;
                    } else {
                        i4 = (int) Math.min(i2, j);
                    }
                }
                int read2 = this.f15507m.read(bArr, i, i4);
                if (read2 != -1) {
                    this.f15512r += read2;
                    i3 = read2;
                    if (this.f15504j != null) {
                        this.f15504j.mo8766a((dsa<? super drr>) this, read2);
                        i3 = read2;
                    }
                } else if (this.f15510p != -1) {
                    throw new EOFException();
                } else {
                    i3 = -1;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new zzoa(e, this.f15505k, 2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final long mo8811a(drq drqVar) {
        HttpURLConnection httpURLConnection;
        this.f15505k = drqVar;
        this.f15512r = 0L;
        this.f15511q = 0L;
        try {
            URL url = new URL(drqVar.f15488a.toString());
            byte[] bArr = drqVar.f15489b;
            long j = drqVar.f15491d;
            long j2 = drqVar.f15492e;
            boolean m8813a = drqVar.m8813a(1);
            if (!this.f15497c) {
                httpURLConnection = m8809a(url, bArr, j, j2, m8813a, true);
            } else {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (i > 20) {
                        throw new NoRouteToHostException(new StringBuilder(31).append("Too many redirects: ").append(i2).toString());
                    }
                    HttpURLConnection m8809a = m8809a(url, bArr, j, j2, m8813a, false);
                    int responseCode = m8809a.getResponseCode();
                    if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303) {
                        httpURLConnection = m8809a;
                        if (bArr == null) {
                            if (responseCode != 307) {
                                httpURLConnection = m8809a;
                                if (responseCode != 308) {
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    bArr = null;
                    String headerField = m8809a.getHeaderField("Location");
                    m8809a.disconnect();
                    if (headerField == null) {
                        throw new ProtocolException("Null location redirect");
                    }
                    URL url2 = new URL(url, headerField);
                    String protocol = url2.getProtocol();
                    if (!"https".equals(protocol) && !"http".equals(protocol)) {
                        String valueOf = String.valueOf(protocol);
                        throw new ProtocolException(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "));
                    }
                    i = i2;
                    url = url2;
                }
            }
            this.f15506l = httpURLConnection;
            try {
                int responseCode2 = this.f15506l.getResponseCode();
                if (responseCode2 < 200 || responseCode2 > 299) {
                    Map<String, List<String>> headerFields = this.f15506l.getHeaderFields();
                    m8805d();
                    zznz zznzVar = new zznz(responseCode2, headerFields, drqVar);
                    if (responseCode2 == 416) {
                        zznzVar.initCause(new zznw(0));
                    }
                    throw zznzVar;
                }
                this.f15506l.getContentType();
                this.f15509o = (responseCode2 != 200 || drqVar.f15491d == 0) ? (char) 0 : drqVar.f15491d;
                if (drqVar.m8813a(1)) {
                    this.f15510p = drqVar.f15492e;
                } else if (drqVar.f15492e != -1) {
                    this.f15510p = drqVar.f15492e;
                } else {
                    long m8810a = m8810a(this.f15506l);
                    this.f15510p = m8810a != -1 ? m8810a - this.f15509o : (char) 65535;
                }
                try {
                    this.f15507m = this.f15506l.getInputStream();
                    this.f15508n = true;
                    if (this.f15504j != null) {
                        this.f15504j.mo8765a((dsa<? super drr>) this, drqVar);
                    }
                    return this.f15510p;
                } catch (IOException e) {
                    m8805d();
                    throw new zzoa(e, drqVar, 1);
                }
            } catch (IOException e2) {
                m8805d();
                String valueOf2 = String.valueOf(drqVar.f15488a.toString());
                throw new zzoa(valueOf2.length() != 0 ? "Unable to connect to ".concat(valueOf2) : new String("Unable to connect to "), e2, drqVar, 1);
            }
        } catch (IOException e3) {
            String valueOf3 = String.valueOf(drqVar.f15488a.toString());
            throw new zzoa(valueOf3.length() != 0 ? "Unable to connect to ".concat(valueOf3) : new String("Unable to connect to "), e3, drqVar, 1);
        }
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final Uri mo8812a() {
        return this.f15506l == null ? null : Uri.parse(this.f15506l.getURL().toString());
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: b */
    public final void mo8807b() {
        try {
            if (this.f15507m != null) {
                HttpURLConnection httpURLConnection = this.f15506l;
                char c = this.f15510p == -1 ? this.f15510p : this.f15510p - this.f15512r;
                if (dsn.f15576a == 19 || dsn.f15576a == 20) {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        if (c != -1 ? c > 2048 : inputStream.read() != -1) {
                            String name = inputStream.getClass().getName();
                            if (name.equals("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream") || name.equals("com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream")) {
                                Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                                declaredMethod.setAccessible(true);
                                declaredMethod.invoke(inputStream, new Object[0]);
                            }
                        }
                    } catch (Exception e) {
                    }
                }
                try {
                    this.f15507m.close();
                } catch (IOException e2) {
                    throw new zzoa(e2, this.f15505k, 3);
                }
            }
            this.f15507m = null;
            m8805d();
            if (!this.f15508n) {
                return;
            }
            this.f15508n = false;
            if (this.f15504j == null) {
                return;
            }
            this.f15504j.mo8767a(this);
        } catch (Throwable th) {
            this.f15507m = null;
            m8805d();
            if (this.f15508n) {
                this.f15508n = false;
                if (this.f15504j != null) {
                    this.f15504j.mo8767a(this);
                }
            }
            throw th;
        }
    }

    /* renamed from: c */
    public final Map<String, List<String>> m8806c() {
        return this.f15506l == null ? null : this.f15506l.getHeaderFields();
    }
}
