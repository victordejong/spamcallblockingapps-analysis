package com.danikula.videocache;

import android.text.TextUtils;
import com.danikula.videocache.p228r.AbstractC4456b;
import com.danikula.videocache.p228r.C4455a;
import com.danikula.videocache.p229s.AbstractC4459c;
import com.danikula.videocache.p229s.C4460d;
import com.yanzhenjie.nohttp.Headers;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.slf4j.AbstractC9605b;
import org.slf4j.C9606c;
/* renamed from: com.danikula.videocache.h */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/h.class */
public class C4432h implements AbstractC4442n {

    /* renamed from: a */
    private static final AbstractC9605b f13540a = C9606c.m352i("HttpUrlSource");

    /* renamed from: b */
    private final AbstractC4459c f13541b;

    /* renamed from: c */
    private final AbstractC4456b f13542c;

    /* renamed from: d */
    private C4443o f13543d;

    /* renamed from: e */
    private HttpURLConnection f13544e;

    /* renamed from: f */
    private InputStream f13545f;

    public C4432h(C4432h c4432h) {
        this.f13543d = c4432h.f13543d;
        this.f13541b = c4432h.f13541b;
        this.f13542c = c4432h.f13542c;
    }

    public C4432h(String str) {
        this(str, C4460d.m22422a());
    }

    public C4432h(String str, AbstractC4459c abstractC4459c) {
        this(str, abstractC4459c, new C4455a());
    }

    public C4432h(String str, AbstractC4459c abstractC4459c, AbstractC4456b abstractC4456b) {
        this.f13541b = (AbstractC4459c) C4437k.m22476d(abstractC4459c);
        this.f13542c = (AbstractC4456b) C4437k.m22476d(abstractC4456b);
        C4443o c4443o = abstractC4459c.get(str);
        this.f13543d = c4443o != null ? c4443o : new C4443o(str, -2147483648L, C4441m.m22453g(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x01a9  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m22495b() {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.danikula.videocache.C4432h.m22495b():void");
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: c */
    private long m22494c(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(Headers.HEAD_KEY_CONTENT_LENGTH);
        return headerField == null ? (char) 65535 : Long.parseLong(headerField);
    }

    /* renamed from: f */
    private void m22491f(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry<String, String> entry : this.f13542c.mo22426a(str).entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    /* renamed from: g */
    private HttpURLConnection m22490g(long j, int i) {
        String str;
        HttpURLConnection httpURLConnection;
        boolean z;
        String str2 = this.f13543d.f13566a;
        int i2 = 0;
        do {
            AbstractC9605b abstractC9605b = f13540a;
            StringBuilder sb = new StringBuilder();
            sb.append("Open connection ");
            int i3 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i3 > 0) {
                str = " with offset " + j;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" to ");
            sb.append(str2);
            abstractC9605b.debug(sb.toString());
            httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
            m22491f(httpURLConnection, str2);
            if (i3 > 0) {
                httpURLConnection.setRequestProperty("Range", "bytes=" + j + "-");
            }
            if (i > 0) {
                httpURLConnection.setConnectTimeout(i);
                httpURLConnection.setReadTimeout(i);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z = responseCode == 301 || responseCode == 302 || responseCode == 303;
            int i4 = i2;
            if (z) {
                str2 = httpURLConnection.getHeaderField(Headers.HEAD_KEY_LOCATION);
                i4 = i2 + 1;
                httpURLConnection.disconnect();
            }
            if (i4 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i4);
            }
            i2 = i4;
        } while (z);
        return httpURLConnection;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: h */
    private long m22489h(HttpURLConnection httpURLConnection, long j, int i) {
        ?? m22494c = m22494c(httpURLConnection);
        return i == 200 ? m22494c : i == 206 ? m22494c + j : this.f13543d.f13567b;
    }

    @Override // com.danikula.videocache.AbstractC4442n
    /* renamed from: a */
    public void mo22452a(long j) {
        try {
            HttpURLConnection m22490g = m22490g(j, -1);
            this.f13544e = m22490g;
            String contentType = m22490g.getContentType();
            this.f13545f = new BufferedInputStream(this.f13544e.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f13544e;
            C4443o c4443o = new C4443o(this.f13543d.f13566a, m22489h(httpURLConnection, j, httpURLConnection.getResponseCode()), contentType);
            this.f13543d = c4443o;
            this.f13541b.mo22423a(c4443o.f13566a, c4443o);
        } catch (IOException e) {
            throw new ProxyCacheException("Error opening connection for " + this.f13543d.f13566a + " with offset " + j, e);
        }
    }

    @Override // com.danikula.videocache.AbstractC4442n
    public void close() {
        Throwable e;
        HttpURLConnection httpURLConnection = this.f13544e;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e2) {
                f13540a.error("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :(", e2);
            } catch (IllegalArgumentException e3) {
                e = e3;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (NullPointerException e4) {
                e = e4;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    /* renamed from: d */
    public String m22493d() {
        String str;
        synchronized (this) {
            if (TextUtils.isEmpty(this.f13543d.f13568c)) {
                m22495b();
            }
            str = this.f13543d.f13568c;
        }
        return str;
    }

    /* renamed from: e */
    public String m22492e() {
        return this.f13543d.f13566a;
    }

    @Override // com.danikula.videocache.AbstractC4442n
    public long length() {
        long j;
        synchronized (this) {
            if (this.f13543d.f13567b == -2147483648L) {
                m22495b();
            }
            j = this.f13543d.f13567b;
        }
        return j;
    }

    @Override // com.danikula.videocache.AbstractC4442n
    public int read(byte[] bArr) {
        InputStream inputStream = this.f13545f;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.f13543d.f13566a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e) {
            throw new InterruptedProxyCacheException("Reading source " + this.f13543d.f13566a + " is interrupted", e);
        } catch (IOException e2) {
            throw new ProxyCacheException("Error reading data from " + this.f13543d.f13566a, e2);
        }
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f13543d + "}";
    }
}
