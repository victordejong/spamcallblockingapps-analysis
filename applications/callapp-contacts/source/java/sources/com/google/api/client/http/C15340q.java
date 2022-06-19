package com.google.api.client.http;

import com.google.api.client.p379a.AbstractC15209ac;
import com.google.api.client.p379a.AbstractC15254x;
import com.google.common.base.C15391m;
import io.opencensus.trace.AbstractC17997a;
import io.opencensus.trace.AbstractC18035o;
import io.opencensus.trace.AbstractC18054w;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* renamed from: com.google.api.client.http.q */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/q.class */
public final class C15340q {

    /* renamed from: a */
    public static final String f55356a;

    /* renamed from: b */
    public static final String f55357b;

    /* renamed from: B */
    private boolean f55359B;

    /* renamed from: c */
    public AbstractC15334m f55362c;

    /* renamed from: h */
    AbstractC15331j f55367h;

    /* renamed from: i */
    String f55368i;

    /* renamed from: j */
    C15330i f55369j;

    /* renamed from: m */
    public AbstractC15347x f55372m;

    /* renamed from: n */
    public AbstractC15254x f55373n;

    /* renamed from: s */
    private final AbstractC15346w f55378s;

    /* renamed from: u */
    private AbstractC15338o f55380u;

    /* renamed from: v */
    private AbstractC15344u f55381v;

    /* renamed from: w */
    private AbstractC15332k f55382w;
    @Deprecated

    /* renamed from: x */
    private AbstractC15323c f55383x;

    /* renamed from: d */
    public C15335n f55363d = new C15335n();

    /* renamed from: e */
    public C15335n f55364e = new C15335n();

    /* renamed from: q */
    private int f55376q = 10;

    /* renamed from: f */
    int f55365f = 16384;

    /* renamed from: g */
    boolean f55366g = true;

    /* renamed from: r */
    private boolean f55377r = true;

    /* renamed from: k */
    public int f55370k = 20000;

    /* renamed from: l */
    public int f55371l = 20000;

    /* renamed from: t */
    private int f55379t = 0;

    /* renamed from: y */
    private boolean f55384y = true;

    /* renamed from: z */
    private boolean f55385z = false;

    /* renamed from: o */
    public boolean f55374o = true;
    @Deprecated

    /* renamed from: A */
    private boolean f55358A = false;

    /* renamed from: C */
    private AbstractC15209ac f55360C = AbstractC15209ac.f55052a;

    /* renamed from: D */
    private final AbstractC18054w f55361D = C15316ac.m9136a();

    /* renamed from: p */
    boolean f55375p = false;

    static {
        String m9030p = m9030p();
        f55356a = m9030p;
        f55357b = "Google-HTTP-Java-Client/" + m9030p + " (gzip)";
    }

    public C15340q(AbstractC15346w abstractC15346w, String str) {
        this.f55378s = abstractC15346w;
        m9046a(str);
    }

    /* renamed from: a */
    private static void m9047a(AbstractC18035o abstractC18035o, String str, String str2) {
        if (str2 != null) {
            abstractC18035o.mo4521a(str, AbstractC17997a.AbstractC17999b.m4560a(str2));
        }
    }

    /* renamed from: p */
    private static String m9030p() {
        String str = "unknown-version";
        try {
            InputStream resourceAsStream = C15340q.class.getResourceAsStream("/com/google/api/client/http/google-http-client.properties");
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

    /* renamed from: a */
    public final C15340q m9055a(AbstractC15254x abstractC15254x) {
        this.f55373n = abstractC15254x;
        return this;
    }

    /* renamed from: a */
    public final C15340q m9054a(C15330i c15330i) {
        this.f55369j = (C15330i) C15391m.m8946a(c15330i);
        return this;
    }

    /* renamed from: a */
    public final C15340q m9053a(AbstractC15331j abstractC15331j) {
        this.f55367h = abstractC15331j;
        return this;
    }

    /* renamed from: a */
    public final C15340q m9052a(AbstractC15332k abstractC15332k) {
        this.f55382w = abstractC15332k;
        return this;
    }

    /* renamed from: a */
    public final C15340q m9051a(AbstractC15334m abstractC15334m) {
        this.f55362c = abstractC15334m;
        return this;
    }

    /* renamed from: a */
    public final C15340q m9050a(AbstractC15338o abstractC15338o) {
        this.f55380u = abstractC15338o;
        return this;
    }

    /* renamed from: a */
    public final C15340q m9049a(AbstractC15344u abstractC15344u) {
        this.f55381v = abstractC15344u;
        return this;
    }

    /* renamed from: a */
    public final C15340q m9048a(AbstractC15347x abstractC15347x) {
        this.f55372m = abstractC15347x;
        return this;
    }

    /* renamed from: a */
    public final C15340q m9046a(String str) {
        C15391m.m8943a(str == null || C15339p.m9062c(str));
        this.f55368i = str;
        return this;
    }

    /* renamed from: a */
    public final C15340q m9045a(boolean z) {
        this.f55374o = z;
        return this;
    }

    /* renamed from: a */
    public final AbstractC15346w m9057a() {
        return this.f55378s;
    }

    /* renamed from: a */
    public final boolean m9056a(int i, C15335n c15335n) {
        String m9073j = c15335n.m9073j();
        if (!this.f55384y || !C15345v.m9004b(i) || m9073j == null) {
            return false;
        }
        m9054a(new C15330i(this.f55369j.m9111a(m9073j), this.f55385z));
        if (i == 303) {
            m9046a("GET");
            this.f55367h = null;
        }
        this.f55363d.m9092a((String) null);
        this.f55363d.m9078f();
        this.f55363d.m9076g();
        this.f55363d.m9080e();
        this.f55363d.m9075h();
        this.f55363d.m9074i();
        return true;
    }

    /* renamed from: b */
    public final String m9044b() {
        return this.f55368i;
    }

    /* renamed from: c */
    public final C15330i m9043c() {
        return this.f55369j;
    }

    /* renamed from: d */
    public final AbstractC15331j m9042d() {
        return this.f55367h;
    }

    @Deprecated
    /* renamed from: e */
    public final AbstractC15323c m9041e() {
        return this.f55383x;
    }

    /* renamed from: f */
    public final C15340q m9040f() {
        this.f55366g = false;
        return this;
    }

    /* renamed from: g */
    public final C15335n m9039g() {
        return this.f55363d;
    }

    /* renamed from: h */
    public final AbstractC15334m m9038h() {
        return this.f55362c;
    }

    /* renamed from: i */
    public final AbstractC15347x m9037i() {
        return this.f55372m;
    }

    /* renamed from: j */
    public final AbstractC15338o m9036j() {
        return this.f55380u;
    }

    /* renamed from: k */
    public final AbstractC15344u m9035k() {
        return this.f55381v;
    }

    /* renamed from: l */
    public final int m9034l() {
        return this.f55376q;
    }

    /* renamed from: m */
    public final AbstractC15254x m9033m() {
        return this.f55373n;
    }

    /* renamed from: n */
    public final boolean m9032n() {
        return this.f55374o;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(40:7|(1:9)|10|(1:12)|13|(1:15)(1:16)|17|(1:22)(1:21)|23|(2:25|(29:27|(1:29)|32|(2:34|(1:36)(1:37))|38|(1:40)|41|(1:46)(1:45)|47|(9:49|(1:51)|52|(1:54)(1:55)|56|(6:58|(2:60|(1:62))|63|(2:65|(1:67))|68|(1:70))|71|(1:73)|74)(1:75)|76|(2:78|(3:80|(1:82)|83))|84|(1:89)(1:88)|90|192|91|(1:93)|188|94|95|96|119|(3:190|121|(8:123|(1:125)(1:126)|127|(4:129|(2:133|(3:135|136|(3:138|139|(3:141|142|(2:193|144)))))|131|132)|145|(2:147|148)|160|(5:200|162|(1:164)(1:165)|166|(4:168|(1:170)|171|(2:180|181)(3:196|175|176))(2:182|183))(1:184)))|155|(1:157)(1:158)|159|160|(0)(0)))(1:30)|31|32|(0)|38|(0)|41|(1:43)|46|47|(0)(0)|76|(0)|84|(1:86)|89|90|192|91|(0)|188|94|95|96|119|(0)|155|(0)(0)|159|160|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x050b, code lost:
        r13 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0512, code lost:
        if (r7.f55358A == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x053d, code lost:
        if (r17 != false) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0540, code lost:
        r0.log(java.util.logging.Level.WARNING, "exception thrown while executing request", (java.lang.Throwable) r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x054f, code lost:
        r0.close();
        r8 = null;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
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
    /* JADX WARN: Type inference failed for: r0v260, types: [com.google.api.client.http.l] */
    /* JADX WARN: Type inference failed for: r0v264, types: [long] */
    /* JADX WARN: Type inference failed for: r0v266, types: [com.google.api.client.a.v] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.api.client.http.C15343t m9031o() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.http.C15340q.m9031o():com.google.api.client.http.t");
    }
}
