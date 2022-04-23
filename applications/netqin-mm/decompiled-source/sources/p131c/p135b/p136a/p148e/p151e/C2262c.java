package p131c.p135b.p136a.p148e.p151e;

import android.app.Activity;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.p490c.C7042c;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2389h;
/* renamed from: c.b.a.e.e.c */
/* loaded from: classes-dex2jar.jar:c/b/a/e/e/c.class */
public class C2262c {

    /* renamed from: a */
    public final C2341l f8857a;

    /* renamed from: b */
    public final C2268g f8858b;

    /* renamed from: c */
    public final C7042c.C7047e f8859c;

    /* renamed from: d */
    public final Object f8860d = new Object();

    /* renamed from: e */
    public final long f8861e;

    /* renamed from: f */
    public long f8862f;

    /* renamed from: g */
    public long f8863g;

    /* renamed from: h */
    public long f8864h;

    public C2262c(AppLovinAdBase appLovinAdBase, C2341l lVar) {
        if (appLovinAdBase == null) {
            throw new IllegalArgumentException("No ad specified");
        } else if (lVar != null) {
            this.f8857a = lVar;
            this.f8858b = lVar.m30248k();
            C7042c.C7047e a = lVar.m30237v().m18855a(appLovinAdBase);
            this.f8859c = a;
            a.m18830a(C2261b.f8832d, appLovinAdBase.getSource().ordinal());
            a.m18832a();
            this.f8861e = appLovinAdBase.getCreatedAtMillis();
        } else {
            throw new IllegalArgumentException("No sdk specified");
        }
    }

    /* renamed from: a */
    public static void m30557a(long j, AppLovinAdBase appLovinAdBase, C2341l lVar) {
        if (appLovinAdBase != null && lVar != null) {
            C7042c.C7047e a = lVar.m30237v().m18855a(appLovinAdBase);
            a.m18830a(C2261b.f8833e, j);
            a.m18832a();
        }
    }

    /* renamed from: a */
    public static void m30555a(C2263d dVar, AppLovinAdBase appLovinAdBase, C2341l lVar) {
        if (appLovinAdBase != null && lVar != null && dVar != null) {
            C7042c.C7047e a = lVar.m30237v().m18855a(appLovinAdBase);
            a.m18830a(C2261b.f8836h, dVar.m30540c());
            a.m18830a(C2261b.f8837i, dVar.m30539d());
            a.m18830a(C2261b.f8852x, dVar.m30536g());
            a.m18830a(C2261b.f8853y, dVar.m30535h());
            a.m18830a(C2261b.f8854z, dVar.m30542b() ? 1L : 0L);
            a.m18832a();
        }
    }

    /* renamed from: a */
    public static void m30554a(AppLovinAdBase appLovinAdBase, C2341l lVar) {
        if (appLovinAdBase != null && lVar != null) {
            C7042c.C7047e a = lVar.m30237v().m18855a(appLovinAdBase);
            a.m18830a(C2261b.f8834f, appLovinAdBase.getFetchLatencyMillis());
            a.m18830a(C2261b.f8835g, appLovinAdBase.getFetchResponseSize());
            a.m18832a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* renamed from: a */
    public void m30559a() {
        long a = this.f8858b.m30522a(C2267f.f8881e);
        long a2 = this.f8858b.m30522a(C2267f.f8883g);
        C7042c.C7047e eVar = this.f8859c;
        eVar.m18830a(C2261b.f8841m, a);
        eVar.m18830a(C2261b.f8840l, a2);
        synchronized (this.f8860d) {
            if (this.f8861e > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                this.f8862f = currentTimeMillis;
                long f = this.f8857a.m30258f();
                long j = this.f8862f;
                long j2 = this.f8861e;
                long j3 = C2389h.m29964a(this.f8857a.m30264d()) ? 1L : 0L;
                Activity a3 = this.f8857a.m30234y().m30676a();
                long j4 = 0;
                if (C2388g.m29969f()) {
                    j4 = 0;
                    if (a3 != null) {
                        j4 = 0;
                        if (a3.isInMultiWindowMode()) {
                            j4 = 1;
                        }
                    }
                }
                C7042c.C7047e eVar2 = this.f8859c;
                eVar2.m18830a(C2261b.f8839k, currentTimeMillis - f);
                eVar2.m18830a(C2261b.f8838j, j - j2);
                eVar2.m18830a(C2261b.f8847s, j3);
                eVar2.m18830a(C2261b.f8824A, j4);
            }
        }
        this.f8859c.m18832a();
    }

    /* renamed from: a */
    public void m30558a(long j) {
        C7042c.C7047e eVar = this.f8859c;
        eVar.m18830a(C2261b.f8849u, j);
        eVar.m18832a();
    }

    /* renamed from: a */
    public final void m30556a(C2261b bVar) {
        synchronized (this.f8860d) {
            if (this.f8862f > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                long j = this.f8862f;
                C7042c.C7047e eVar = this.f8859c;
                eVar.m18830a(bVar, currentTimeMillis - j);
                eVar.m18832a();
            }
        }
    }

    /* renamed from: b */
    public void m30553b() {
        synchronized (this.f8860d) {
            if (this.f8863g < 1) {
                long currentTimeMillis = System.currentTimeMillis();
                this.f8863g = currentTimeMillis;
                if (this.f8862f > 0) {
                    long j = this.f8862f;
                    C7042c.C7047e eVar = this.f8859c;
                    eVar.m18830a(C2261b.f8844p, currentTimeMillis - j);
                    eVar.m18832a();
                }
            }
        }
    }

    /* renamed from: b */
    public void m30552b(long j) {
        C7042c.C7047e eVar = this.f8859c;
        eVar.m18830a(C2261b.f8848t, j);
        eVar.m18832a();
    }

    /* renamed from: c */
    public void m30551c() {
        m30556a(C2261b.f8842n);
    }

    /* renamed from: c */
    public void m30550c(long j) {
        C7042c.C7047e eVar = this.f8859c;
        eVar.m18830a(C2261b.f8850v, j);
        eVar.m18832a();
    }

    /* renamed from: d */
    public void m30549d() {
        m30556a(C2261b.f8845q);
    }

    /* renamed from: d */
    public void m30548d(long j) {
        synchronized (this.f8860d) {
            if (this.f8864h < 1) {
                this.f8864h = j;
                C7042c.C7047e eVar = this.f8859c;
                eVar.m18830a(C2261b.f8851w, j);
                eVar.m18832a();
            }
        }
    }

    /* renamed from: e */
    public void m30547e() {
        m30556a(C2261b.f8846r);
    }

    /* renamed from: f */
    public void m30546f() {
        m30556a(C2261b.f8843o);
    }

    /* renamed from: g */
    public void m30545g() {
        C7042c.C7047e eVar = this.f8859c;
        eVar.m18831a(C2261b.f8825B);
        eVar.m18832a();
    }
}
