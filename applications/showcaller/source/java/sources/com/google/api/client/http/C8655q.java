package com.google.api.client.http;

import com.google.api.client.util.AbstractC8726u;
import com.google.api.client.util.AbstractC8733y;
import com.google.api.client.util.C8731w;
import io.opencensus.trace.AbstractC9493a;
import io.opencensus.trace.AbstractC9529r;
import io.opencensus.trace.Span;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* renamed from: com.google.api.client.http.q */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/q.class */
public final class C8655q {

    /* renamed from: a */
    public static final String f38377a;

    /* renamed from: b */
    public static final String f38378b;

    /* renamed from: A */
    private boolean f38379A;

    /* renamed from: c */
    private AbstractC8649m f38383c;

    /* renamed from: j */
    private AbstractC8646j f38390j;

    /* renamed from: k */
    private final AbstractC8661w f38391k;

    /* renamed from: l */
    private String f38392l;

    /* renamed from: m */
    private C8645i f38393m;

    /* renamed from: q */
    private AbstractC8662x f38397q;

    /* renamed from: r */
    private AbstractC8653o f38398r;

    /* renamed from: s */
    private AbstractC8659u f38399s;

    /* renamed from: t */
    private AbstractC8726u f38400t;

    /* renamed from: u */
    private AbstractC8647k f38401u;
    @Deprecated

    /* renamed from: v */
    private AbstractC8619c f38402v;

    /* renamed from: d */
    private C8650n f38384d = new C8650n();

    /* renamed from: e */
    private C8650n f38385e = new C8650n();

    /* renamed from: f */
    private int f38386f = 10;

    /* renamed from: g */
    private int f38387g = 16384;

    /* renamed from: h */
    private boolean f38388h = true;

    /* renamed from: i */
    private boolean f38389i = true;

    /* renamed from: n */
    private int f38394n = 20000;

    /* renamed from: o */
    private int f38395o = 20000;

    /* renamed from: p */
    private int f38396p = 0;

    /* renamed from: w */
    private boolean f38403w = true;

    /* renamed from: x */
    private boolean f38404x = false;

    /* renamed from: y */
    private boolean f38405y = true;
    @Deprecated

    /* renamed from: z */
    private boolean f38406z = false;

    /* renamed from: B */
    private AbstractC8733y f38380B = AbstractC8733y.f38567a;

    /* renamed from: C */
    private final AbstractC9529r f38381C = C8620c0.m3217b();

    /* renamed from: D */
    private boolean f38382D = false;

    static {
        String m3088r = m3088r();
        f38377a = m3088r;
        f38378b = "Google-HTTP-Java-Client/" + m3088r + " (gzip)";
    }

    public C8655q(AbstractC8661w abstractC8661w, String str) {
        this.f38391k = abstractC8661w;
        m3080z(str);
    }

    /* renamed from: a */
    private static void m3105a(Span span, String str, String str2) {
        if (str2 != null) {
            span.mo436i(str, AbstractC9493a.m468a(str2));
        }
    }

    /* renamed from: r */
    private static String m3088r() {
        String str = "unknown-version";
        try {
            InputStream resourceAsStream = C8655q.class.getResourceAsStream("/google-http-client.properties");
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

    /* renamed from: A */
    public C8655q m3110A(AbstractC8659u abstractC8659u) {
        this.f38399s = abstractC8659u;
        return this;
    }

    /* renamed from: B */
    public C8655q m3109B(boolean z) {
        this.f38382D = z;
        return this;
    }

    /* renamed from: C */
    public C8655q m3108C(boolean z) {
        this.f38405y = z;
        return this;
    }

    /* renamed from: D */
    public C8655q m3107D(AbstractC8662x abstractC8662x) {
        this.f38397q = abstractC8662x;
        return this;
    }

    /* renamed from: E */
    public C8655q m3106E(C8645i c8645i) {
        this.f38393m = (C8645i) C8731w.m2836d(c8645i);
        return this;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(4:(12:(2:24|(29:26|(1:28)|31|(2:33|(1:35)(1:36))|37|(1:39)|40|(1:45)(1:44)|46|(9:48|(1:50)|51|(1:53)(1:54)|55|(6:57|(2:59|(1:61))|62|(2:64|(1:66))|67|(1:69))|70|(1:72)|73)|74|(2:76|(3:78|(1:80)|81))|82|(1:87)(1:86)|88|182|89|(1:91)|184|92|93|94|117|(3:188|119|(8:121|(1:123)(1:124)|125|(4:127|(2:131|(3:133|134|(3:136|137|(3:139|140|(2:186|142)))))|129|130)|143|(2:145|146)|155|(5:194|157|(1:159)|160|(4:162|(1:164)|165|(2:174|175)(3:191|169|170))(2:176|177))(1:178)))|150|(1:152)(1:153)|154|155|(0)(0)))(1:29)|184|92|93|94|117|(0)|150|(0)(0)|154|155|(0)(0))|182|89|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x04f9, code lost:
        r13 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0500, code lost:
        if (r7.f38406z == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x051d, code lost:
        r0.mo437g(com.google.api.client.http.C8620c0.m3218a(null));
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0528, code lost:
        throw r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x052b, code lost:
        if (r17 != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x052e, code lost:
        r0.log(java.util.logging.Level.WARNING, "exception thrown while executing request", (java.lang.Throwable) r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x053d, code lost:
        r0.close();
        r8 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0602  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0607  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0678 A[LOOP:0: B:10:0x0052->B:178:0x0678, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x054b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0618 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x04be A[Catch: all -> 0x04f5, IOException -> 0x04f9, TRY_ENTER, TryCatch #0 {IOException -> 0x04f9, blocks: (B:89:0x04b2, B:91:0x04be, B:92:0x04c8, B:96:0x04e2, B:98:0x04ee, B:100:0x04f4), top: B:182:0x04b2, outer: #4 }] */
    /* JADX WARN: Type inference failed for: r0v261, types: [com.google.api.client.http.l] */
    /* JADX WARN: Type inference failed for: r0v265, types: [long] */
    /* JADX WARN: Type inference failed for: r0v267, types: [com.google.api.client.util.s] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.api.client.http.C8658t m3104b() {
        /*
            Method dump skipped, instructions count: 1686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.http.C8655q.m3104b():com.google.api.client.http.t");
    }

    /* renamed from: c */
    public AbstractC8646j m3103c() {
        return this.f38390j;
    }

    /* renamed from: d */
    public int m3102d() {
        return this.f38387g;
    }

    /* renamed from: e */
    public boolean m3101e() {
        return this.f38403w;
    }

    /* renamed from: f */
    public C8650n m3100f() {
        return this.f38384d;
    }

    /* renamed from: g */
    public AbstractC8653o m3099g() {
        return this.f38398r;
    }

    /* renamed from: h */
    public AbstractC8649m m3098h() {
        return this.f38383c;
    }

    /* renamed from: i */
    public final AbstractC8726u m3097i() {
        return this.f38400t;
    }

    /* renamed from: j */
    public String m3096j() {
        return this.f38392l;
    }

    /* renamed from: k */
    public C8650n m3095k() {
        return this.f38385e;
    }

    /* renamed from: l */
    public AbstractC8659u m3094l() {
        return this.f38399s;
    }

    /* renamed from: m */
    public boolean m3093m() {
        return this.f38382D;
    }

    /* renamed from: n */
    public boolean m3092n() {
        return this.f38405y;
    }

    /* renamed from: o */
    public AbstractC8661w m3091o() {
        return this.f38391k;
    }

    /* renamed from: p */
    public AbstractC8662x m3090p() {
        return this.f38397q;
    }

    /* renamed from: q */
    public C8645i m3089q() {
        return this.f38393m;
    }

    /* renamed from: s */
    public boolean m3087s(int i, C8650n c8650n) {
        String location = c8650n.getLocation();
        if (!m3101e() || !C8660v.m3056a(i) || location == null) {
            return false;
        }
        m3106E(new C8645i(this.f38393m.m3162r(location), this.f38404x));
        if (i == 303) {
            m3080z("GET");
            m3085u(null);
        }
        this.f38384d.m3131v(null);
        this.f38384d.m3156C(null);
        this.f38384d.m3154E(null);
        this.f38384d.m3155D(null);
        this.f38384d.m3152G(null);
        this.f38384d.m3153F(null);
        return true;
    }

    /* renamed from: t */
    public boolean m3086t() {
        return this.f38388h;
    }

    /* renamed from: u */
    public C8655q m3085u(AbstractC8646j abstractC8646j) {
        this.f38390j = abstractC8646j;
        return this;
    }

    /* renamed from: v */
    public C8655q m3084v(AbstractC8647k abstractC8647k) {
        this.f38401u = abstractC8647k;
        return this;
    }

    /* renamed from: w */
    public C8655q m3083w(AbstractC8653o abstractC8653o) {
        this.f38398r = abstractC8653o;
        return this;
    }

    /* renamed from: x */
    public C8655q m3082x(AbstractC8649m abstractC8649m) {
        this.f38383c = abstractC8649m;
        return this;
    }

    /* renamed from: y */
    public C8655q m3081y(AbstractC8726u abstractC8726u) {
        this.f38400t = abstractC8726u;
        return this;
    }

    /* renamed from: z */
    public C8655q m3080z(String str) {
        C8731w.m2839a(str == null || C8654p.m3117i(str));
        this.f38392l = str;
        return this;
    }
}
