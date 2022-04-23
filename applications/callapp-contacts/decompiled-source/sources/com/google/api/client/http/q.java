package com.google.api.client.http;

import com.google.api.client.a.ac;
import com.google.api.client.a.x;
import com.google.common.base.m;
import io.opencensus.trace.a;
import io.opencensus.trace.o;
import io.opencensus.trace.w;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public static final String f31822a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f31823b;
    private boolean B;

    /* renamed from: c  reason: collision with root package name */
    public m f31824c;
    j h;
    String i;
    i j;
    public x m;
    public x n;
    private final w s;
    private o u;
    private u v;
    private k w;
    @Deprecated
    private c x;

    /* renamed from: d  reason: collision with root package name */
    public n f31825d = new n();
    public n e = new n();
    private int q = 10;
    int f = 16384;
    boolean g = true;
    private boolean r = true;
    public int k = 20000;
    public int l = 20000;
    private int t = 0;
    private boolean y = true;
    private boolean z = false;
    public boolean o = true;
    @Deprecated
    private boolean A = false;
    private ac C = ac.f31602a;
    private final w D = ac.a();
    boolean p = false;

    static {
        String p = p();
        f31822a = p;
        f31823b = "Google-HTTP-Java-Client/" + p + " (gzip)";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(w wVar, String str) {
        this.s = wVar;
        a(str);
    }

    private static void a(o oVar, String str, String str2) {
        if (str2 != null) {
            oVar.a(str, a.b.a(str2));
        }
    }

    private static String p() {
        String str = "unknown-version";
        try {
            InputStream resourceAsStream = q.class.getResourceAsStream("/com/google/api/client/http/google-http-client.properties");
            String str2 = "unknown-version";
            if (resourceAsStream != null) {
                Properties properties = new Properties();
                properties.load(resourceAsStream);
                str2 = properties.getProperty("google-http-client.version");
            }
            str = str2;
            if (resourceAsStream != null) {
                str = str2;
                resourceAsStream.close();
                str = str2;
            }
        } catch (IOException e) {
        }
        return str;
    }

    public final q a(x xVar) {
        this.n = xVar;
        return this;
    }

    public final q a(i iVar) {
        this.j = (i) m.a(iVar);
        return this;
    }

    public final q a(j jVar) {
        this.h = jVar;
        return this;
    }

    public final q a(k kVar) {
        this.w = kVar;
        return this;
    }

    public final q a(m mVar) {
        this.f31824c = mVar;
        return this;
    }

    public final q a(o oVar) {
        this.u = oVar;
        return this;
    }

    public final q a(u uVar) {
        this.v = uVar;
        return this;
    }

    public final q a(x xVar) {
        this.m = xVar;
        return this;
    }

    public final q a(String str) {
        m.a(str == null || p.c(str));
        this.i = str;
        return this;
    }

    public final q a(boolean z) {
        this.o = z;
        return this;
    }

    public final w a() {
        return this.s;
    }

    public final boolean a(int i, n nVar) {
        String j = nVar.j();
        if (!this.y || !v.b(i) || j == null) {
            return false;
        }
        a(new i(this.j.a(j), this.z));
        if (i == 303) {
            a("GET");
            this.h = null;
        }
        this.f31825d.a((String) null);
        this.f31825d.f();
        this.f31825d.g();
        this.f31825d.e();
        this.f31825d.h();
        this.f31825d.i();
        return true;
    }

    public final String b() {
        return this.i;
    }

    public final i c() {
        return this.j;
    }

    public final j d() {
        return this.h;
    }

    @Deprecated
    public final c e() {
        return this.x;
    }

    public final q f() {
        this.g = false;
        return this;
    }

    public final n g() {
        return this.f31825d;
    }

    public final m h() {
        return this.f31824c;
    }

    public final x i() {
        return this.m;
    }

    public final o j() {
        return this.u;
    }

    public final u k() {
        return this.v;
    }

    public final int l() {
        return this.q;
    }

    public final x m() {
        return this.n;
    }

    public final boolean n() {
        return this.o;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(40:7|(1:9)|10|(1:12)|13|(1:15)(1:16)|17|(1:22)(1:21)|23|(2:25|(29:27|(1:29)|32|(2:34|(1:36)(1:37))|38|(1:40)|41|(1:46)(1:45)|47|(9:49|(1:51)|52|(1:54)(1:55)|56|(6:58|(2:60|(1:62))|63|(2:65|(1:67))|68|(1:70))|71|(1:73)|74)(1:75)|76|(2:78|(3:80|(1:82)|83))|84|(1:89)(1:88)|90|192|91|(1:93)|188|94|95|96|119|(3:190|121|(8:123|(1:125)(1:126)|127|(4:129|(2:133|(3:135|136|(3:138|139|(3:141|142|(2:193|144)))))|131|132)|145|(2:147|148)|160|(5:200|162|(1:164)(1:165)|166|(4:168|(1:170)|171|(2:180|181)(3:196|175|176))(2:182|183))(1:184)))|155|(1:157)(1:158)|159|160|(0)(0)))(1:30)|31|32|(0)|38|(0)|41|(1:43)|46|47|(0)(0)|76|(0)|84|(1:86)|89|90|192|91|(0)|188|94|95|96|119|(0)|155|(0)(0)|159|160|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x050b, code lost:
        r13 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0512, code lost:
        if (r7.A == false) goto L_0x0515;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x053d, code lost:
        if (r17 != false) goto L_0x0540;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0540, code lost:
        r0.log(java.util.logging.Level.WARNING, "exception thrown while executing request", (java.lang.Throwable) r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x054f, code lost:
        r0.close();
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0617  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x061c  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x068d A[LOOP:0: B:7:0x0050->B:184:0x068d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x055a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0627 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x04a9 A[Catch: all -> 0x0507, IOException -> 0x050b, TRY_ENTER, TryCatch #4 {IOException -> 0x050b, blocks: (B:91:0x049d, B:93:0x04a9, B:94:0x04da, B:98:0x04f4, B:100:0x0500, B:102:0x0506), top: B:192:0x049d, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.api.client.http.t o() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.http.q.o():com.google.api.client.http.t");
    }
}
