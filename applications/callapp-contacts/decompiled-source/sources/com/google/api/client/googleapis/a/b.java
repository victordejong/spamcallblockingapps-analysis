package com.google.api.client.googleapis.a;

import com.google.api.client.a.aa;
import com.google.api.client.a.ac;
import com.google.api.client.http.ab;
import com.google.api.client.http.f;
import com.google.api.client.http.h;
import com.google.api.client.http.i;
import com.google.api.client.http.j;
import com.google.api.client.http.n;
import com.google.api.client.http.q;
import com.google.api.client.http.r;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.w;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public j f31719b;
    public boolean e;
    public boolean g;
    private final com.google.api.client.http.b i;
    private final r j;
    private final w k;
    private long l;
    private boolean m;
    private q n;
    private InputStream o;
    private long p;
    private Byte r;
    private long s;
    private int t;
    private byte[] u;

    /* renamed from: a  reason: collision with root package name */
    public int f31718a = a.f31722a;

    /* renamed from: c  reason: collision with root package name */
    public String f31720c = "POST";

    /* renamed from: d  reason: collision with root package name */
    public n f31721d = new n();
    String f = "*";
    private int q = Constants.TEN_MB;
    ac h = ac.f31602a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/b$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f31722a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f31723b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f31724c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f31725d = 4;
        public static final int e = 5;
        private static final /* synthetic */ int[] f = {1, 2, 3, 4, 5};

        private a(String str, int i) {
        }
    }

    public b(com.google.api.client.http.b bVar, w wVar, s sVar) {
        this.i = (com.google.api.client.http.b) aa.a(bVar);
        this.k = (w) aa.a(wVar);
        this.j = sVar == null ? wVar.createRequestFactory() : wVar.createRequestFactory(sVar);
    }

    private static t a(q qVar) throws IOException {
        new com.google.api.client.googleapis.b().intercept(qVar);
        qVar.a(false);
        return qVar.o();
    }

    private t b(q qVar) throws IOException {
        if (!this.g && !(qVar.d() instanceof f)) {
            qVar.a(new h());
        }
        return a(qVar);
    }

    private boolean b() throws IOException {
        return c() >= 0;
    }

    private long c() throws IOException {
        if (!this.m) {
            this.l = this.i.getLength();
            this.m = true;
        }
        return this.l;
    }

    private t c(i iVar) throws IOException {
        this.f31718a = a.f31723b;
        iVar.put("uploadType", "resumable");
        j jVar = this.f31719b;
        j jVar2 = jVar;
        if (jVar == null) {
            jVar2 = new f();
        }
        q a2 = this.j.a(this.f31720c, iVar, jVar2);
        this.f31721d.set("X-Upload-Content-Type", this.i.getType());
        if (b()) {
            this.f31721d.set("X-Upload-Content-Length", Long.valueOf(c()));
        }
        a2.g().putAll(this.f31721d);
        t b2 = b(a2);
        try {
            this.f31718a = a.f31724c;
            return b2;
        } catch (Throwable th) {
            b2.j();
            throw th;
        }
    }

    public final t a(i iVar) throws IOException {
        this.f31718a = a.f31725d;
        j jVar = this.i;
        if (this.f31719b != null) {
            jVar = new ab().a(Arrays.asList(this.f31719b, this.i));
            iVar.put("uploadType", "multipart");
        } else {
            iVar.put("uploadType", "media");
        }
        q a2 = this.j.a(this.f31720c, iVar, jVar);
        a2.g().putAll(this.f31721d);
        t b2 = b(a2);
        try {
            if (b()) {
                this.p = c();
            }
            this.f31718a = a.e;
            return b2;
        } catch (Throwable th) {
            b2.j();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() throws IOException {
        aa.a(this.n, "The current request should not be null");
        this.n.a(new f());
        n g = this.n.g();
        g.c("bytes */" + this.f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0289, code lost:
        r7.p = c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0298, code lost:
        if (r7.i.b() == false) goto L_0x02a2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x029b, code lost:
        r7.o.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02a3, code lost:
        r7.f31718a = com.google.api.client.googleapis.a.b.a.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x02aa, code lost:
        return r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.api.client.http.t b(com.google.api.client.http.i r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.a.b.b(com.google.api.client.http.i):com.google.api.client.http.t");
    }
}
