package p078c.p122d.p123a.p124e0;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import p078c.p122d.p123a.p128i0.C2031c;
/* renamed from: c.d.a.e0.c */
/* loaded from: classes2-dex2jar.jar:c/d/a/e0/c.class */
public class C1996c implements AbstractC1995b {

    /* renamed from: a */
    protected URLConnection f7114a;

    /* renamed from: c.d.a.e0.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/e0/c$a.class */
    public static class C1997a {
        /* renamed from: a */
        static /* synthetic */ Proxy m28342a(C1997a c1997a) {
            throw null;
        }

        /* renamed from: b */
        static /* synthetic */ Integer m28341b(C1997a c1997a) {
            throw null;
        }

        /* renamed from: c */
        static /* synthetic */ Integer m28340c(C1997a c1997a) {
            throw null;
        }
    }

    /* renamed from: c.d.a.e0.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/e0/c$b.class */
    public static class C1998b implements C2031c.AbstractC2033b {

        /* renamed from: a */
        private final C1997a f7115a;

        public C1998b() {
            this(null);
        }

        public C1998b(C1997a c1997a) {
        }

        @Override // p078c.p122d.p123a.p128i0.C2031c.AbstractC2033b
        /* renamed from: a */
        public AbstractC1995b mo28256a(String str) {
            return new C1996c(str, this.f7115a);
        }
    }

    public C1996c(String str, C1997a c1997a) {
        this(new URL(str), c1997a);
    }

    public C1996c(URL url, C1997a c1997a) {
        if (c1997a == null || C1997a.m28342a(c1997a) == null) {
            this.f7114a = url.openConnection();
        } else {
            this.f7114a = url.openConnection(C1997a.m28342a(c1997a));
        }
        if (c1997a != null) {
            if (C1997a.m28341b(c1997a) != null) {
                this.f7114a.setReadTimeout(C1997a.m28341b(c1997a).intValue());
            }
            if (C1997a.m28340c(c1997a) == null) {
                return;
            }
            this.f7114a.setConnectTimeout(C1997a.m28340c(c1997a).intValue());
        }
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    /* renamed from: a */
    public InputStream mo28349a() {
        return this.f7114a.getInputStream();
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    public void addHeader(String str, String str2) {
        this.f7114a.addRequestProperty(str, str2);
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    /* renamed from: b */
    public Map<String, List<String>> mo28348b() {
        return this.f7114a.getHeaderFields();
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    /* renamed from: c */
    public boolean mo28347c(String str, long j) {
        return false;
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    /* renamed from: d */
    public String mo28346d(String str) {
        return this.f7114a.getHeaderField(str);
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    /* renamed from: e */
    public void mo28345e() {
        try {
            this.f7114a.getInputStream().close();
        } catch (IOException e) {
        }
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    public void execute() {
        this.f7114a.connect();
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    /* renamed from: f */
    public boolean mo28344f(String str) {
        URLConnection uRLConnection = this.f7114a;
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).setRequestMethod(str);
            return true;
        }
        return false;
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    /* renamed from: g */
    public Map<String, List<String>> mo28343g() {
        return this.f7114a.getRequestProperties();
    }

    @Override // p078c.p122d.p123a.p124e0.AbstractC1995b
    public int getResponseCode() {
        URLConnection uRLConnection = this.f7114a;
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return 0;
    }
}
