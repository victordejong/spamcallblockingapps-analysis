package p136j6;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.security.Permission;
import java.util.Objects;
import p104g6.C2905a;
import p115h6.C3013b;
import p180n6.C3729e;
/* renamed from: j6.e */
/* loaded from: classes-dex2jar.jar:j6/e.class */
public class C3281e {

    /* renamed from: f */
    public static final C2905a f11111f = C2905a.m2869b();

    /* renamed from: a */
    public final HttpURLConnection f11112a;

    /* renamed from: b */
    public final C3013b f11113b;

    /* renamed from: c */
    public long f11114c = -1;

    /* renamed from: d */
    public long f11115d = -1;

    /* renamed from: e */
    public final C3729e f11116e;

    public C3281e(HttpURLConnection httpURLConnection, C3729e c3729e, C3013b c3013b) {
        this.f11112a = httpURLConnection;
        this.f11113b = c3013b;
        this.f11116e = c3729e;
        c3013b.m2738m(httpURLConnection.getURL().toString());
    }

    /* renamed from: a */
    public void m2443a() throws IOException {
        if (this.f11114c == -1) {
            this.f11116e.m1838c();
            long j = this.f11116e.f12119a;
            this.f11114c = j;
            this.f11113b.m2743g(j);
        }
        try {
            this.f11112a.connect();
        } catch (IOException e) {
            this.f11113b.m2740j(this.f11116e.m1840a());
            C3284h.m2427c(this.f11113b);
            throw e;
        }
    }

    /* renamed from: b */
    public Object m2442b() throws IOException {
        m2432l();
        this.f11113b.m2745e(this.f11112a.getResponseCode());
        try {
            C3277a content = this.f11112a.getContent();
            if (content instanceof InputStream) {
                this.f11113b.m2742h(this.f11112a.getContentType());
                content = new C3277a((InputStream) content, this.f11113b, this.f11116e);
            } else {
                this.f11113b.m2742h(this.f11112a.getContentType());
                this.f11113b.m2741i(this.f11112a.getContentLength());
                this.f11113b.m2740j(this.f11116e.m1840a());
                this.f11113b.m2747b();
            }
            return content;
        } catch (IOException e) {
            this.f11113b.m2740j(this.f11116e.m1840a());
            C3284h.m2427c(this.f11113b);
            throw e;
        }
    }

    /* renamed from: c */
    public Object m2441c(Class[] clsArr) throws IOException {
        m2432l();
        this.f11113b.m2745e(this.f11112a.getResponseCode());
        try {
            C3277a content = this.f11112a.getContent(clsArr);
            if (content instanceof InputStream) {
                this.f11113b.m2742h(this.f11112a.getContentType());
                content = new C3277a((InputStream) content, this.f11113b, this.f11116e);
            } else {
                this.f11113b.m2742h(this.f11112a.getContentType());
                this.f11113b.m2741i(this.f11112a.getContentLength());
                this.f11113b.m2740j(this.f11116e.m1840a());
                this.f11113b.m2747b();
            }
            return content;
        } catch (IOException e) {
            this.f11113b.m2740j(this.f11116e.m1840a());
            C3284h.m2427c(this.f11113b);
            throw e;
        }
    }

    /* renamed from: d */
    public boolean m2440d() {
        return this.f11112a.getDoOutput();
    }

    /* renamed from: e */
    public InputStream m2439e() {
        m2432l();
        try {
            this.f11113b.m2745e(this.f11112a.getResponseCode());
        } catch (IOException e) {
            C2905a c2905a = f11111f;
            if (c2905a.f9793b) {
                Objects.requireNonNull(c2905a.f9792a);
            }
        }
        InputStream errorStream = this.f11112a.getErrorStream();
        return errorStream != null ? new C3277a(errorStream, this.f11113b, this.f11116e) : errorStream;
    }

    public boolean equals(Object obj) {
        return this.f11112a.equals(obj);
    }

    /* renamed from: f */
    public InputStream m2438f() throws IOException {
        m2432l();
        this.f11113b.m2745e(this.f11112a.getResponseCode());
        this.f11113b.m2742h(this.f11112a.getContentType());
        try {
            return new C3277a(this.f11112a.getInputStream(), this.f11113b, this.f11116e);
        } catch (IOException e) {
            this.f11113b.m2740j(this.f11116e.m1840a());
            C3284h.m2427c(this.f11113b);
            throw e;
        }
    }

    /* renamed from: g */
    public OutputStream m2437g() throws IOException {
        try {
            return new C3278b(this.f11112a.getOutputStream(), this.f11113b, this.f11116e);
        } catch (IOException e) {
            this.f11113b.m2740j(this.f11116e.m1840a());
            C3284h.m2427c(this.f11113b);
            throw e;
        }
    }

    /* renamed from: h */
    public Permission m2436h() throws IOException {
        try {
            return this.f11112a.getPermission();
        } catch (IOException e) {
            this.f11113b.m2740j(this.f11116e.m1840a());
            C3284h.m2427c(this.f11113b);
            throw e;
        }
    }

    public int hashCode() {
        return this.f11112a.hashCode();
    }

    /* renamed from: i */
    public String m2435i() {
        return this.f11112a.getRequestMethod();
    }

    /* renamed from: j */
    public int m2434j() throws IOException {
        m2432l();
        if (this.f11115d == -1) {
            long m1840a = this.f11116e.m1840a();
            this.f11115d = m1840a;
            this.f11113b.m2739l(m1840a);
        }
        try {
            int responseCode = this.f11112a.getResponseCode();
            this.f11113b.m2745e(responseCode);
            return responseCode;
        } catch (IOException e) {
            this.f11113b.m2740j(this.f11116e.m1840a());
            C3284h.m2427c(this.f11113b);
            throw e;
        }
    }

    /* renamed from: k */
    public String m2433k() throws IOException {
        m2432l();
        if (this.f11115d == -1) {
            long m1840a = this.f11116e.m1840a();
            this.f11115d = m1840a;
            this.f11113b.m2739l(m1840a);
        }
        try {
            String responseMessage = this.f11112a.getResponseMessage();
            this.f11113b.m2745e(this.f11112a.getResponseCode());
            return responseMessage;
        } catch (IOException e) {
            this.f11113b.m2740j(this.f11116e.m1840a());
            C3284h.m2427c(this.f11113b);
            throw e;
        }
    }

    /* renamed from: l */
    public final void m2432l() {
        if (this.f11114c == -1) {
            this.f11116e.m1838c();
            long j = this.f11116e.f12119a;
            this.f11114c = j;
            this.f11113b.m2743g(j);
        }
        String m2435i = m2435i();
        if (m2435i != null) {
            this.f11113b.m2746c(m2435i);
        } else if (m2440d()) {
            this.f11113b.m2746c("POST");
        } else {
            this.f11113b.m2746c("GET");
        }
    }

    public String toString() {
        return this.f11112a.toString();
    }
}
