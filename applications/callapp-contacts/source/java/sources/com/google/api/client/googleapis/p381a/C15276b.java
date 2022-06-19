package com.google.api.client.googleapis.p381a;

import com.google.api.client.googleapis.C15285b;
import com.google.api.client.http.AbstractC15322b;
import com.google.api.client.http.AbstractC15331j;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.C15314ab;
import com.google.api.client.http.C15326f;
import com.google.api.client.http.C15328h;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15335n;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15341r;
import com.google.api.client.http.C15343t;
import com.google.api.client.p379a.AbstractC15209ac;
import com.google.api.client.p379a.C15207aa;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* renamed from: com.google.api.client.googleapis.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/b.class */
public final class C15276b {

    /* renamed from: b */
    public AbstractC15331j f55205b;

    /* renamed from: e */
    public boolean f55208e;

    /* renamed from: g */
    public boolean f55210g;

    /* renamed from: i */
    private final AbstractC15322b f55212i;

    /* renamed from: j */
    private final C15341r f55213j;

    /* renamed from: k */
    private final AbstractC15346w f55214k;

    /* renamed from: l */
    private long f55215l;

    /* renamed from: m */
    private boolean f55216m;

    /* renamed from: n */
    private C15340q f55217n;

    /* renamed from: o */
    private InputStream f55218o;

    /* renamed from: p */
    private long f55219p;

    /* renamed from: r */
    private Byte f55221r;

    /* renamed from: s */
    private long f55222s;

    /* renamed from: t */
    private int f55223t;

    /* renamed from: u */
    private byte[] f55224u;

    /* renamed from: a */
    public int f55204a = EnumC15277a.f55225a;

    /* renamed from: c */
    public String f55206c = "POST";

    /* renamed from: d */
    public C15335n f55207d = new C15335n();

    /* renamed from: f */
    String f55209f = "*";

    /* renamed from: q */
    private int f55220q = Constants.TEN_MB;

    /* renamed from: h */
    AbstractC15209ac f55211h = AbstractC15209ac.f55052a;

    /* renamed from: com.google.api.client.googleapis.a.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/b$a.class */
    public static final class EnumC15277a extends Enum<EnumC15277a> {

        /* renamed from: a */
        public static final int f55225a = 1;

        /* renamed from: b */
        public static final int f55226b = 2;

        /* renamed from: c */
        public static final int f55227c = 3;

        /* renamed from: d */
        public static final int f55228d = 4;

        /* renamed from: e */
        public static final int f55229e = 5;

        /* renamed from: f */
        private static final /* synthetic */ int[] f55230f = {1, 2, 3, 4, 5};

        private EnumC15277a(String str, int i) {
            super(str, i);
        }
    }

    public C15276b(AbstractC15322b abstractC15322b, AbstractC15346w abstractC15346w, AbstractC15342s abstractC15342s) {
        this.f55212i = (AbstractC15322b) C15207aa.m9283a(abstractC15322b);
        this.f55214k = (AbstractC15346w) C15207aa.m9283a(abstractC15346w);
        this.f55213j = abstractC15342s == null ? abstractC15346w.createRequestFactory() : abstractC15346w.createRequestFactory(abstractC15342s);
    }

    /* renamed from: a */
    private static C15343t m9177a(C15340q c15340q) throws IOException {
        new C15285b().intercept(c15340q);
        c15340q.m9045a(false);
        return c15340q.m9031o();
    }

    /* renamed from: b */
    private C15343t m9174b(C15340q c15340q) throws IOException {
        if (!this.f55210g && !(c15340q.m9042d() instanceof C15326f)) {
            c15340q.m9052a(new C15328h());
        }
        return m9177a(c15340q);
    }

    /* renamed from: b */
    private boolean m9176b() throws IOException {
        return m9173c() >= 0;
    }

    /* renamed from: c */
    private long m9173c() throws IOException {
        if (!this.f55216m) {
            this.f55215l = this.f55212i.getLength();
            this.f55216m = true;
        }
        return this.f55215l;
    }

    /* renamed from: c */
    private C15343t m9172c(C15330i c15330i) throws IOException {
        this.f55204a = EnumC15277a.f55226b;
        c15330i.put("uploadType", "resumable");
        AbstractC15331j abstractC15331j = this.f55205b;
        C15326f c15326f = abstractC15331j;
        if (abstractC15331j == null) {
            c15326f = new C15326f();
        }
        C15340q m9026a = this.f55213j.m9026a(this.f55206c, c15330i, c15326f);
        this.f55207d.set("X-Upload-Content-Type", this.f55212i.getType());
        if (m9176b()) {
            this.f55207d.set("X-Upload-Content-Length", Long.valueOf(m9173c()));
        }
        m9026a.m9039g().putAll(this.f55207d);
        C15343t m9174b = m9174b(m9026a);
        try {
            this.f55204a = EnumC15277a.f55227c;
            return m9174b;
        } catch (Throwable th) {
            m9174b.m9010j();
            throw th;
        }
    }

    /* renamed from: a */
    public final C15343t m9178a(C15330i c15330i) throws IOException {
        this.f55204a = EnumC15277a.f55228d;
        C15314ab c15314ab = this.f55212i;
        if (this.f55205b != null) {
            c15314ab = new C15314ab().m9137a(Arrays.asList(this.f55205b, this.f55212i));
            c15330i.put("uploadType", "multipart");
        } else {
            c15330i.put("uploadType", "media");
        }
        C15340q m9026a = this.f55213j.m9026a(this.f55206c, c15330i, c15314ab);
        m9026a.m9039g().putAll(this.f55207d);
        C15343t m9174b = m9174b(m9026a);
        try {
            if (m9176b()) {
                this.f55219p = m9173c();
            }
            this.f55204a = EnumC15277a.f55229e;
            return m9174b;
        } catch (Throwable th) {
            m9174b.m9010j();
            throw th;
        }
    }

    /* renamed from: a */
    public final void m9179a() throws IOException {
        C15207aa.m9282a(this.f55217n, "The current request should not be null");
        this.f55217n.m9053a(new C15326f());
        C15335n m9039g = this.f55217n.m9039g();
        m9039g.m9083c("bytes */" + this.f55209f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0289, code lost:
        r7.f55219p = m9173c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0298, code lost:
        if (r7.f55212i.m9115b() == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x029b, code lost:
        r7.f55218o.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02a3, code lost:
        r7.f55204a = com.google.api.client.googleapis.p381a.C15276b.EnumC15277a.f55229e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x02aa, code lost:
        return r9;
     */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.api.client.http.C15343t m9175b(com.google.api.client.http.C15330i r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.p381a.C15276b.m9175b(com.google.api.client.http.i):com.google.api.client.http.t");
    }
}
