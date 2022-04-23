package p131c.p161d.p282e.p340u.p347j;

import android.os.Build;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import p131c.p161d.p282e.p340u.p343f.C5954a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
/* renamed from: c.d.e.u.j.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/j/e.class */
public class C5976e {

    /* renamed from: f */
    public static final C5969a f19399f = C5969a.m22496a();

    /* renamed from: a */
    public final HttpURLConnection f19400a;

    /* renamed from: b */
    public final C5954a f19401b;

    /* renamed from: c */
    public long f19402c = -1;

    /* renamed from: d */
    public long f19403d = -1;

    /* renamed from: e */
    public final Timer f19404e;

    public C5976e(HttpURLConnection httpURLConnection, Timer timer, C5954a aVar) {
        this.f19400a = httpURLConnection;
        this.f19401b = aVar;
        this.f19404e = timer;
        aVar.m22558c(httpURLConnection.getURL().toString());
    }

    /* renamed from: A */
    public String m22484A() throws IOException {
        m22481D();
        if (this.f19403d == -1) {
            long b = this.f19404e.m7217b();
            this.f19403d = b;
            this.f19401b.m22550f(b);
        }
        try {
            String responseMessage = this.f19400a.getResponseMessage();
            this.f19401b.m22567a(this.f19400a.getResponseCode());
            return responseMessage;
        } catch (IOException e) {
            this.f19401b.m22553e(this.f19404e.m7217b());
            C5979h.m22430a(this.f19401b);
            throw e;
        }
    }

    /* renamed from: B */
    public URL m22483B() {
        return this.f19400a.getURL();
    }

    /* renamed from: C */
    public boolean m22482C() {
        return this.f19400a.getUseCaches();
    }

    /* renamed from: D */
    public final void m22481D() {
        if (this.f19402c == -1) {
            this.f19404e.m7215d();
            long c = this.f19404e.m7216c();
            this.f19402c = c;
            this.f19401b.m22562b(c);
        }
        String x = m22433x();
        if (x != null) {
            this.f19401b.m22564a(x);
        } else if (m22444m()) {
            this.f19401b.m22564a("POST");
        } else {
            this.f19401b.m22564a("GET");
        }
    }

    /* renamed from: E */
    public boolean m22480E() {
        return this.f19400a.usingProxy();
    }

    /* renamed from: a */
    public int m22475a(String str, int i) {
        m22481D();
        return this.f19400a.getHeaderFieldInt(str, i);
    }

    /* renamed from: a */
    public long m22474a(String str, long j) {
        m22481D();
        return this.f19400a.getHeaderFieldDate(str, j);
    }

    /* renamed from: a */
    public Object m22471a(Class[] clsArr) throws IOException {
        m22481D();
        this.f19401b.m22567a(this.f19400a.getResponseCode());
        try {
            Object content = this.f19400a.getContent(clsArr);
            if (content instanceof InputStream) {
                this.f19401b.m22561b(this.f19400a.getContentType());
                content = new C5972a((InputStream) content, this.f19401b, this.f19404e);
            } else {
                this.f19401b.m22561b(this.f19400a.getContentType());
                this.f19401b.m22559c(this.f19400a.getContentLength());
                this.f19401b.m22553e(this.f19404e.m7217b());
                this.f19401b.m22568a();
            }
            return content;
        } catch (IOException e) {
            this.f19401b.m22553e(this.f19404e.m7217b());
            C5979h.m22430a(this.f19401b);
            throw e;
        }
    }

    /* renamed from: a */
    public String m22478a(int i) {
        m22481D();
        return this.f19400a.getHeaderField(i);
    }

    /* renamed from: a */
    public String m22476a(String str) {
        m22481D();
        return this.f19400a.getHeaderField(str);
    }

    /* renamed from: a */
    public void m22479a() throws IOException {
        if (this.f19402c == -1) {
            this.f19404e.m7215d();
            long c = this.f19404e.m7216c();
            this.f19402c = c;
            this.f19401b.m22562b(c);
        }
        try {
            this.f19400a.connect();
        } catch (IOException e) {
            this.f19401b.m22553e(this.f19404e.m7217b());
            C5979h.m22430a(this.f19401b);
            throw e;
        }
    }

    /* renamed from: a */
    public void m22477a(long j) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f19400a.setFixedLengthStreamingMode(j);
        }
    }

    /* renamed from: a */
    public void m22473a(String str, String str2) {
        this.f19400a.addRequestProperty(str, str2);
    }

    /* renamed from: a */
    public void m22472a(boolean z) {
        this.f19400a.setAllowUserInteraction(z);
    }

    /* renamed from: b */
    public long m22466b(String str, long j) {
        m22481D();
        return Build.VERSION.SDK_INT >= 24 ? this.f19400a.getHeaderFieldLong(str, j) : 0L;
    }

    /* renamed from: b */
    public String m22469b(int i) {
        m22481D();
        return this.f19400a.getHeaderFieldKey(i);
    }

    /* renamed from: b */
    public String m22467b(String str) {
        return this.f19400a.getRequestProperty(str);
    }

    /* renamed from: b */
    public void m22470b() {
        this.f19401b.m22553e(this.f19404e.m7217b());
        this.f19401b.m22568a();
        this.f19400a.disconnect();
    }

    /* renamed from: b */
    public void m22468b(long j) {
        this.f19400a.setIfModifiedSince(j);
    }

    /* renamed from: b */
    public void m22465b(String str, String str2) {
        if ("User-Agent".equalsIgnoreCase(str)) {
            this.f19401b.m22555d(str2);
        }
        this.f19400a.setRequestProperty(str, str2);
    }

    /* renamed from: b */
    public void m22464b(boolean z) {
        this.f19400a.setDefaultUseCaches(z);
    }

    /* renamed from: c */
    public void m22462c(int i) {
        this.f19400a.setChunkedStreamingMode(i);
    }

    /* renamed from: c */
    public void m22461c(String str) throws ProtocolException {
        this.f19400a.setRequestMethod(str);
    }

    /* renamed from: c */
    public void m22460c(boolean z) {
        this.f19400a.setDoInput(z);
    }

    /* renamed from: c */
    public boolean m22463c() {
        return this.f19400a.getAllowUserInteraction();
    }

    /* renamed from: d */
    public int m22459d() {
        return this.f19400a.getConnectTimeout();
    }

    /* renamed from: d */
    public void m22458d(int i) {
        this.f19400a.setConnectTimeout(i);
    }

    /* renamed from: d */
    public void m22457d(boolean z) {
        this.f19400a.setDoOutput(z);
    }

    /* renamed from: e */
    public Object m22456e() throws IOException {
        m22481D();
        this.f19401b.m22567a(this.f19400a.getResponseCode());
        try {
            Object content = this.f19400a.getContent();
            if (content instanceof InputStream) {
                this.f19401b.m22561b(this.f19400a.getContentType());
                content = new C5972a((InputStream) content, this.f19401b, this.f19404e);
            } else {
                this.f19401b.m22561b(this.f19400a.getContentType());
                this.f19401b.m22559c(this.f19400a.getContentLength());
                this.f19401b.m22553e(this.f19404e.m7217b());
                this.f19401b.m22568a();
            }
            return content;
        } catch (IOException e) {
            this.f19401b.m22553e(this.f19404e.m7217b());
            C5979h.m22430a(this.f19401b);
            throw e;
        }
    }

    /* renamed from: e */
    public void m22455e(int i) {
        this.f19400a.setFixedLengthStreamingMode(i);
    }

    /* renamed from: e */
    public void m22454e(boolean z) {
        this.f19400a.setInstanceFollowRedirects(z);
    }

    public boolean equals(Object obj) {
        return this.f19400a.equals(obj);
    }

    /* renamed from: f */
    public String m22453f() {
        m22481D();
        return this.f19400a.getContentEncoding();
    }

    /* renamed from: f */
    public void m22452f(int i) {
        this.f19400a.setReadTimeout(i);
    }

    /* renamed from: f */
    public void m22451f(boolean z) {
        this.f19400a.setUseCaches(z);
    }

    /* renamed from: g */
    public int m22450g() {
        m22481D();
        return this.f19400a.getContentLength();
    }

    /* renamed from: h */
    public long m22449h() {
        m22481D();
        return Build.VERSION.SDK_INT >= 24 ? this.f19400a.getContentLengthLong() : 0L;
    }

    public int hashCode() {
        return this.f19400a.hashCode();
    }

    /* renamed from: i */
    public String m22448i() {
        m22481D();
        return this.f19400a.getContentType();
    }

    /* renamed from: j */
    public long m22447j() {
        m22481D();
        return this.f19400a.getDate();
    }

    /* renamed from: k */
    public boolean m22446k() {
        return this.f19400a.getDefaultUseCaches();
    }

    /* renamed from: l */
    public boolean m22445l() {
        return this.f19400a.getDoInput();
    }

    /* renamed from: m */
    public boolean m22444m() {
        return this.f19400a.getDoOutput();
    }

    /* renamed from: n */
    public InputStream m22443n() {
        m22481D();
        try {
            this.f19401b.m22567a(this.f19400a.getResponseCode());
        } catch (IOException e) {
            f19399f.m22495a("IOException thrown trying to obtain the response code", new Object[0]);
        }
        InputStream errorStream = this.f19400a.getErrorStream();
        return errorStream != null ? new C5972a(errorStream, this.f19401b, this.f19404e) : errorStream;
    }

    /* renamed from: o */
    public long m22442o() {
        m22481D();
        return this.f19400a.getExpiration();
    }

    /* renamed from: p */
    public Map<String, List<String>> m22441p() {
        m22481D();
        return this.f19400a.getHeaderFields();
    }

    /* renamed from: q */
    public long m22440q() {
        return this.f19400a.getIfModifiedSince();
    }

    /* renamed from: r */
    public InputStream m22439r() throws IOException {
        m22481D();
        this.f19401b.m22567a(this.f19400a.getResponseCode());
        this.f19401b.m22561b(this.f19400a.getContentType());
        try {
            return new C5972a(this.f19400a.getInputStream(), this.f19401b, this.f19404e);
        } catch (IOException e) {
            this.f19401b.m22553e(this.f19404e.m7217b());
            C5979h.m22430a(this.f19401b);
            throw e;
        }
    }

    /* renamed from: s */
    public boolean m22438s() {
        return this.f19400a.getInstanceFollowRedirects();
    }

    /* renamed from: t */
    public long m22437t() {
        m22481D();
        return this.f19400a.getLastModified();
    }

    public String toString() {
        return this.f19400a.toString();
    }

    /* renamed from: u */
    public OutputStream m22436u() throws IOException {
        try {
            return new C5973b(this.f19400a.getOutputStream(), this.f19401b, this.f19404e);
        } catch (IOException e) {
            this.f19401b.m22553e(this.f19404e.m7217b());
            C5979h.m22430a(this.f19401b);
            throw e;
        }
    }

    /* renamed from: v */
    public Permission m22435v() throws IOException {
        try {
            return this.f19400a.getPermission();
        } catch (IOException e) {
            this.f19401b.m22553e(this.f19404e.m7217b());
            C5979h.m22430a(this.f19401b);
            throw e;
        }
    }

    /* renamed from: w */
    public int m22434w() {
        return this.f19400a.getReadTimeout();
    }

    /* renamed from: x */
    public String m22433x() {
        return this.f19400a.getRequestMethod();
    }

    /* renamed from: y */
    public Map<String, List<String>> m22432y() {
        return this.f19400a.getRequestProperties();
    }

    /* renamed from: z */
    public int m22431z() throws IOException {
        m22481D();
        if (this.f19403d == -1) {
            long b = this.f19404e.m7217b();
            this.f19403d = b;
            this.f19401b.m22550f(b);
        }
        try {
            int responseCode = this.f19400a.getResponseCode();
            this.f19401b.m22567a(responseCode);
            return responseCode;
        } catch (IOException e) {
            this.f19401b.m22553e(this.f19404e.m7217b());
            C5979h.m22430a(this.f19401b);
            throw e;
        }
    }
}
