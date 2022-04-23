package com.google.firebase.perf.network;

import android.os.Build;
import com.google.firebase.perf.f.a;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.firebase.perf.network.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/e.class */
class C2436e {

    /* renamed from: f */
    private static final a f10669f = a.e();

    /* renamed from: a */
    private final HttpURLConnection f10670a;

    /* renamed from: b */
    private final com.google.firebase.perf.e.a f10671b;

    /* renamed from: c */
    private long f10672c = -1;

    /* renamed from: d */
    private long f10673d = -1;

    /* renamed from: e */
    private final Timer f10674e;

    public C2436e(HttpURLConnection httpURLConnection, Timer timer, com.google.firebase.perf.e.a aVar) {
        this.f10670a = httpURLConnection;
        this.f10671b = aVar;
        this.f10674e = timer;
        aVar.x(httpURLConnection.getURL().toString());
    }

    /* renamed from: a0 */
    private void m3619a0() {
        String str;
        com.google.firebase.perf.e.a aVar;
        if (this.f10672c == -1) {
            this.f10674e.m3584e();
            long d = this.f10674e.m3585d();
            this.f10672c = d;
            this.f10671b.p(d);
        }
        String F = m3641F();
        if (F != null) {
            this.f10671b.l(F);
            return;
        }
        if (m3604o()) {
            aVar = this.f10671b;
            str = "POST";
        } else {
            aVar = this.f10671b;
            str = "GET";
        }
        aVar.l(str);
    }

    /* renamed from: A */
    public boolean m3646A() {
        return this.f10670a.getInstanceFollowRedirects();
    }

    /* renamed from: B */
    public long m3645B() {
        m3619a0();
        return this.f10670a.getLastModified();
    }

    /* renamed from: C */
    public OutputStream m3644C() {
        try {
            return new C2433b(this.f10670a.getOutputStream(), this.f10671b, this.f10674e);
        } catch (IOException e) {
            this.f10671b.v(this.f10674e.m3587b());
            C2439h.m3589d(this.f10671b);
            throw e;
        }
    }

    /* renamed from: D */
    public Permission m3643D() {
        try {
            return this.f10670a.getPermission();
        } catch (IOException e) {
            this.f10671b.v(this.f10674e.m3587b());
            C2439h.m3589d(this.f10671b);
            throw e;
        }
    }

    /* renamed from: E */
    public int m3642E() {
        return this.f10670a.getReadTimeout();
    }

    /* renamed from: F */
    public String m3641F() {
        return this.f10670a.getRequestMethod();
    }

    /* renamed from: G */
    public Map<String, List<String>> m3640G() {
        return this.f10670a.getRequestProperties();
    }

    /* renamed from: H */
    public String m3639H(String str) {
        return this.f10670a.getRequestProperty(str);
    }

    /* renamed from: I */
    public int m3638I() {
        m3619a0();
        if (this.f10673d == -1) {
            long b = this.f10674e.m3587b();
            this.f10673d = b;
            this.f10671b.w(b);
        }
        try {
            int responseCode = this.f10670a.getResponseCode();
            this.f10671b.m(responseCode);
            return responseCode;
        } catch (IOException e) {
            this.f10671b.v(this.f10674e.m3587b());
            C2439h.m3589d(this.f10671b);
            throw e;
        }
    }

    /* renamed from: J */
    public String m3637J() {
        m3619a0();
        if (this.f10673d == -1) {
            long b = this.f10674e.m3587b();
            this.f10673d = b;
            this.f10671b.w(b);
        }
        try {
            String responseMessage = this.f10670a.getResponseMessage();
            this.f10671b.m(this.f10670a.getResponseCode());
            return responseMessage;
        } catch (IOException e) {
            this.f10671b.v(this.f10674e.m3587b());
            C2439h.m3589d(this.f10671b);
            throw e;
        }
    }

    /* renamed from: K */
    public URL m3636K() {
        return this.f10670a.getURL();
    }

    /* renamed from: L */
    public boolean m3635L() {
        return this.f10670a.getUseCaches();
    }

    /* renamed from: M */
    public void m3634M(boolean z) {
        this.f10670a.setAllowUserInteraction(z);
    }

    /* renamed from: N */
    public void m3633N(int i) {
        this.f10670a.setChunkedStreamingMode(i);
    }

    /* renamed from: O */
    public void m3632O(int i) {
        this.f10670a.setConnectTimeout(i);
    }

    /* renamed from: P */
    public void m3631P(boolean z) {
        this.f10670a.setDefaultUseCaches(z);
    }

    /* renamed from: Q */
    public void m3630Q(boolean z) {
        this.f10670a.setDoInput(z);
    }

    /* renamed from: R */
    public void m3629R(boolean z) {
        this.f10670a.setDoOutput(z);
    }

    /* renamed from: S */
    public void m3628S(int i) {
        this.f10670a.setFixedLengthStreamingMode(i);
    }

    /* renamed from: T */
    public void m3627T(long j) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f10670a.setFixedLengthStreamingMode(j);
        }
    }

    /* renamed from: U */
    public void m3626U(long j) {
        this.f10670a.setIfModifiedSince(j);
    }

    /* renamed from: V */
    public void m3625V(boolean z) {
        this.f10670a.setInstanceFollowRedirects(z);
    }

    /* renamed from: W */
    public void m3624W(int i) {
        this.f10670a.setReadTimeout(i);
    }

    /* renamed from: X */
    public void m3623X(String str) {
        this.f10670a.setRequestMethod(str);
    }

    /* renamed from: Y */
    public void m3622Y(String str, String str2) {
        if ("User-Agent".equalsIgnoreCase(str)) {
            this.f10671b.y(str2);
        }
        this.f10670a.setRequestProperty(str, str2);
    }

    /* renamed from: Z */
    public void m3621Z(boolean z) {
        this.f10670a.setUseCaches(z);
    }

    /* renamed from: a */
    public void m3620a(String str, String str2) {
        this.f10670a.addRequestProperty(str, str2);
    }

    /* renamed from: b */
    public void m3618b() {
        if (this.f10672c == -1) {
            this.f10674e.m3584e();
            long d = this.f10674e.m3585d();
            this.f10672c = d;
            this.f10671b.p(d);
        }
        try {
            this.f10670a.connect();
        } catch (IOException e) {
            this.f10671b.v(this.f10674e.m3587b());
            C2439h.m3589d(this.f10671b);
            throw e;
        }
    }

    /* renamed from: b0 */
    public boolean m3617b0() {
        return this.f10670a.usingProxy();
    }

    /* renamed from: c */
    public void m3616c() {
        this.f10671b.v(this.f10674e.m3587b());
        this.f10671b.b();
        this.f10670a.disconnect();
    }

    /* renamed from: d */
    public boolean m3615d() {
        return this.f10670a.getAllowUserInteraction();
    }

    /* renamed from: e */
    public int m3614e() {
        return this.f10670a.getConnectTimeout();
    }

    public boolean equals(Object obj) {
        return this.f10670a.equals(obj);
    }

    /* renamed from: f */
    public Object m3613f() {
        m3619a0();
        this.f10671b.m(this.f10670a.getResponseCode());
        try {
            Object content = this.f10670a.getContent();
            if (content instanceof InputStream) {
                this.f10671b.q(this.f10670a.getContentType());
                content = new C2432a((InputStream) content, this.f10671b, this.f10674e);
            } else {
                this.f10671b.q(this.f10670a.getContentType());
                this.f10671b.s(this.f10670a.getContentLength());
                this.f10671b.v(this.f10674e.m3587b());
                this.f10671b.b();
            }
            return content;
        } catch (IOException e) {
            this.f10671b.v(this.f10674e.m3587b());
            C2439h.m3589d(this.f10671b);
            throw e;
        }
    }

    /* renamed from: g */
    public Object m3612g(Class[] clsArr) {
        m3619a0();
        this.f10671b.m(this.f10670a.getResponseCode());
        try {
            Object content = this.f10670a.getContent(clsArr);
            if (content instanceof InputStream) {
                this.f10671b.q(this.f10670a.getContentType());
                content = new C2432a((InputStream) content, this.f10671b, this.f10674e);
            } else {
                this.f10671b.q(this.f10670a.getContentType());
                this.f10671b.s(this.f10670a.getContentLength());
                this.f10671b.v(this.f10674e.m3587b());
                this.f10671b.b();
            }
            return content;
        } catch (IOException e) {
            this.f10671b.v(this.f10674e.m3587b());
            C2439h.m3589d(this.f10671b);
            throw e;
        }
    }

    /* renamed from: h */
    public String m3611h() {
        m3619a0();
        return this.f10670a.getContentEncoding();
    }

    public int hashCode() {
        return this.f10670a.hashCode();
    }

    /* renamed from: i */
    public int m3610i() {
        m3619a0();
        return this.f10670a.getContentLength();
    }

    /* renamed from: j */
    public long m3609j() {
        m3619a0();
        return Build.VERSION.SDK_INT >= 24 ? this.f10670a.getContentLengthLong() : 0L;
    }

    /* renamed from: k */
    public String m3608k() {
        m3619a0();
        return this.f10670a.getContentType();
    }

    /* renamed from: l */
    public long m3607l() {
        m3619a0();
        return this.f10670a.getDate();
    }

    /* renamed from: m */
    public boolean m3606m() {
        return this.f10670a.getDefaultUseCaches();
    }

    /* renamed from: n */
    public boolean m3605n() {
        return this.f10670a.getDoInput();
    }

    /* renamed from: o */
    public boolean m3604o() {
        return this.f10670a.getDoOutput();
    }

    /* renamed from: p */
    public InputStream m3603p() {
        m3619a0();
        try {
            this.f10671b.m(this.f10670a.getResponseCode());
        } catch (IOException e) {
            f10669f.a("IOException thrown trying to obtain the response code");
        }
        InputStream errorStream = this.f10670a.getErrorStream();
        return errorStream != null ? new C2432a(errorStream, this.f10671b, this.f10674e) : errorStream;
    }

    /* renamed from: q */
    public long m3602q() {
        m3619a0();
        return this.f10670a.getExpiration();
    }

    /* renamed from: r */
    public String m3601r(int i) {
        m3619a0();
        return this.f10670a.getHeaderField(i);
    }

    /* renamed from: s */
    public String m3600s(String str) {
        m3619a0();
        return this.f10670a.getHeaderField(str);
    }

    /* renamed from: t */
    public long m3599t(String str, long j) {
        m3619a0();
        return this.f10670a.getHeaderFieldDate(str, j);
    }

    public String toString() {
        return this.f10670a.toString();
    }

    /* renamed from: u */
    public int m3598u(String str, int i) {
        m3619a0();
        return this.f10670a.getHeaderFieldInt(str, i);
    }

    /* renamed from: v */
    public String m3597v(int i) {
        m3619a0();
        return this.f10670a.getHeaderFieldKey(i);
    }

    /* renamed from: w */
    public long m3596w(String str, long j) {
        m3619a0();
        return Build.VERSION.SDK_INT >= 24 ? this.f10670a.getHeaderFieldLong(str, j) : 0L;
    }

    /* renamed from: x */
    public Map<String, List<String>> m3595x() {
        m3619a0();
        return this.f10670a.getHeaderFields();
    }

    /* renamed from: y */
    public long m3594y() {
        return this.f10670a.getIfModifiedSince();
    }

    /* renamed from: z */
    public InputStream m3593z() {
        m3619a0();
        this.f10671b.m(this.f10670a.getResponseCode());
        this.f10671b.q(this.f10670a.getContentType());
        try {
            return new C2432a(this.f10670a.getInputStream(), this.f10671b, this.f10674e);
        } catch (IOException e) {
            this.f10671b.v(this.f10674e.m3587b());
            C2439h.m3589d(this.f10671b);
            throw e;
        }
    }
}
