package p092e.p096e.p097a.p098d0;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import p092e.p096e.p097a.p102h0.C3056c;
/* renamed from: e.e.a.d0.c */
/* loaded from: classes2-dex2jar.jar:e/e/a/d0/c.class */
public class C3021c implements AbstractC3020b {

    /* renamed from: a */
    protected URLConnection f12643a;

    /* renamed from: e.e.a.d0.c$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/d0/c$a.class */
    public static class C3022a {

        /* renamed from: a */
        private Proxy f12644a;

        /* renamed from: b */
        private Integer f12645b;

        /* renamed from: c */
        private Integer f12646c;
    }

    /* renamed from: e.e.a.d0.c$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/d0/c$b.class */
    public static class C3023b implements C3056c.AbstractC3058b {

        /* renamed from: a */
        private final C3022a f12647a;

        public C3023b() {
            this(null);
        }

        public C3023b(C3022a aVar) {
        }

        @Override // p092e.p096e.p097a.p102h0.C3056c.AbstractC3058b
        /* renamed from: a */
        public AbstractC3020b mo420a(String str) {
            return new C3021c(str, this.f12647a);
        }
    }

    public C3021c(String str, C3022a aVar) {
        this(new URL(str), aVar);
    }

    public C3021c(URL url, C3022a aVar) {
        this.f12643a = (URLConnection) FirebasePerfUrlConnection.instrument((aVar == null || aVar.f12644a == null) ? url.openConnection() : url.openConnection(aVar.f12644a));
        if (aVar != null) {
            if (aVar.f12645b != null) {
                this.f12643a.setReadTimeout(aVar.f12645b.intValue());
            }
            if (aVar.f12646c != null) {
                this.f12643a.setConnectTimeout(aVar.f12646c.intValue());
            }
        }
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    /* renamed from: a */
    public InputStream mo526a() {
        return this.f12643a.getInputStream();
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    public void addHeader(String str, String str2) {
        this.f12643a.addRequestProperty(str, str2);
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    /* renamed from: b */
    public Map<String, List<String>> mo525b() {
        return this.f12643a.getHeaderFields();
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    /* renamed from: c */
    public boolean mo524c(String str, long j) {
        return false;
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    /* renamed from: d */
    public int mo523d() {
        URLConnection uRLConnection = this.f12643a;
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return 0;
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    /* renamed from: e */
    public String mo522e(String str) {
        return this.f12643a.getHeaderField(str);
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    public void execute() {
        this.f12643a.connect();
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    /* renamed from: f */
    public void mo521f() {
        try {
            this.f12643a.getInputStream().close();
        } catch (IOException e) {
        }
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    /* renamed from: g */
    public boolean mo520g(String str) {
        URLConnection uRLConnection = this.f12643a;
        if (!(uRLConnection instanceof HttpURLConnection)) {
            return false;
        }
        ((HttpURLConnection) uRLConnection).setRequestMethod(str);
        return true;
    }

    @Override // p092e.p096e.p097a.p098d0.AbstractC3020b
    /* renamed from: h */
    public Map<String, List<String>> mo519h() {
        return this.f12643a.getRequestProperties();
    }
}
