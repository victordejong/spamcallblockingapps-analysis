package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.yanzhenjie.nohttp.Headers;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.zd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zd.class */
public final class C7215zd extends AbstractC7169y4 implements AbstractC6740mj {

    /* renamed from: f */
    private final boolean f32895f;

    /* renamed from: g */
    private final int f32896g;

    /* renamed from: h */
    private final int f32897h;

    /* renamed from: i */
    private final String f32898i;

    /* renamed from: j */
    private final C6776ni f32899j;

    /* renamed from: k */
    private final C6776ni f32900k;

    /* renamed from: l */
    private C6472fb f32901l;

    /* renamed from: m */
    private HttpURLConnection f32902m;

    /* renamed from: n */
    private InputStream f32903n;

    /* renamed from: o */
    private boolean f32904o;

    /* renamed from: p */
    private int f32905p;

    /* renamed from: q */
    private long f32906q;

    /* renamed from: r */
    private long f32907r;

    private C7215zd(String str, int i, int i2, boolean z, C6776ni c6776ni, yu2<String> yu2Var, boolean z2) {
        super(true);
        this.f32898i = str;
        this.f32896g = i;
        this.f32897h = i2;
        this.f32895f = z;
        this.f32899j = c6776ni;
        this.f32900k = new C6776ni();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C7215zd(String str, String str2, int i, int i2, boolean z, C6776ni c6776ni, yu2<String> yu2Var, boolean z2) {
        this(str, str2, i, i2, z, null, false);
    }

    /* renamed from: t */
    private final HttpURLConnection m8434t(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) {
        String str;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f32896g);
        httpURLConnection.setReadTimeout(this.f32897h);
        HashMap hashMap = new HashMap();
        hashMap.putAll(this.f32899j.m12897a());
        hashMap.putAll(this.f32900k.m12897a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        if (j == 0 && j2 == -1) {
            str = null;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("bytes=");
            sb.append(j);
            sb.append("-");
            if (j2 != -1) {
                sb.append((j + j2) - 1);
            }
            str = sb.toString();
        }
        if (str != null) {
            httpURLConnection.setRequestProperty("Range", str);
        }
        String str2 = this.f32898i;
        if (str2 != null) {
            httpURLConnection.setRequestProperty(Headers.HEAD_KEY_USER_AGENT, str2);
        }
        httpURLConnection.setRequestProperty(Headers.HEAD_KEY_ACCEPT_ENCODING, true != z ? "identity" : "gzip");
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setRequestMethod(C6472fb.m15287a(1));
        httpURLConnection.connect();
        return httpURLConnection;
    }

    /* renamed from: u */
    private final URL m8433u(URL url, String str, C6472fb c6472fb) {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!"https".equals(protocol) && !"http".equals(protocol)) {
                    String valueOf = String.valueOf(protocol);
                    throw new zzat(valueOf.length() != 0 ? "Unsupported protocol redirect: ".concat(valueOf) : new String("Unsupported protocol redirect: "), c6472fb, 2001, 1);
                } else if (this.f32895f || protocol.equals(url.getProtocol())) {
                    return url2;
                } else {
                    String protocol2 = url.getProtocol();
                    StringBuilder sb = new StringBuilder(String.valueOf(protocol2).length() + 41 + protocol.length());
                    sb.append("Disallowed cross-protocol redirect (");
                    sb.append(protocol2);
                    sb.append(" to ");
                    sb.append(protocol);
                    sb.append(")");
                    throw new zzat(sb.toString(), c6472fb, 2001, 1);
                }
            } catch (MalformedURLException e) {
                throw new zzat(e, c6472fb, 2001, 1);
            }
        }
        throw new zzat("Null location redirect", c6472fb, 2001, 1);
    }

    /* renamed from: v */
    private final void m8432v() {
        HttpURLConnection httpURLConnection = this.f32902m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                C6952s9.m11098b("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f32902m = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        int read;
        if (i2 == 0) {
            read = 0;
        } else {
            try {
                long j = this.f32906q;
                int i3 = i2;
                if (j != -1) {
                    long j2 = j - this.f32907r;
                    if (j2 == 0) {
                        read = -1;
                    } else {
                        i3 = (int) Math.min(i2, j2);
                    }
                }
                InputStream inputStream = this.f32903n;
                int i4 = C7101wa.f31475a;
                read = inputStream.read(bArr, i, i3);
                if (read == -1) {
                    read = -1;
                } else {
                    this.f32907r += read;
                    m8961r(read);
                }
            } catch (IOException e) {
                C6472fb c6472fb = this.f32901l;
                int i5 = C7101wa.f31475a;
                throw zzat.zza(e, c6472fb, 2);
            }
        }
        return read;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7169y4, com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: d */
    public final Map<String, List<String>> mo8435d() {
        HttpURLConnection httpURLConnection = this.f32902m;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x02ed, code lost:
        r0 = new java.lang.StringBuilder(31);
        r0.append("Too many redirects: ");
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0329, code lost:
        throw new com.google.android.gms.internal.ads.zzat(new java.net.NoRouteToHostException(r0.toString()), r13, 2001, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0103, code lost:
        if (r15 != 0) goto L33;
     */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8334e(com.google.android.gms.internal.ads.C6472fb r13) {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7215zd.mo8334e(com.google.android.gms.internal.ads.fb):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
        if (r8 <= 2048) goto L33;
     */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8333g() {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C7215zd.mo8333g():void");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        HttpURLConnection httpURLConnection = this.f32902m;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }
}
