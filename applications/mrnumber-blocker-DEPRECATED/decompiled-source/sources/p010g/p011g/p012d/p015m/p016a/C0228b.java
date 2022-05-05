package p010g.p011g.p012d.p015m.p016a;

import g.g.a.f.b.d;
import i.a.c.a.c;
import i.a.d.a;
import i.a.d.b;
import i.a.d.g.p;
import kotlin.w.c.k;
import p033i.p034a.p035a.p039i.AbstractC0333x;
import p033i.p034a.p046d.p056g.C0417q;
/* renamed from: g.g.d.m.a.b */
/* loaded from: classes2-dex2jar.jar:g/g/d/m/a/b.class */
public final class C0228b {

    /* renamed from: a */
    private a f462a = m642a();

    /* renamed from: b */
    private final String f463b;

    /* renamed from: c */
    private final String f464c;

    /* renamed from: d */
    private final d f465d;

    /* renamed from: e */
    private final a f466e;

    public C0228b(String str, String str2, d dVar, a aVar) {
        k.g(str, "serviceName");
        k.g(str2, "endpoint");
        k.g(aVar, "randomIdGenerator");
        this.f463b = str;
        this.f464c = str2;
        this.f465d = dVar;
        this.f466e = aVar;
        m639d();
    }

    /* renamed from: a */
    private final a m642a() {
        a aVar;
        if (m640c()) {
            C0417q b = p.b();
            b.m213b(this.f466e);
            p a = b.m214a();
            b c = a.c();
            c.c(a);
            aVar = c.b();
        } else {
            aVar = null;
        }
        return aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if ((r3.f464c.length() > 0) != false) goto L_0x0028;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m640c() {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = 23
            if (r0 <= r1) goto L_0x0026
            r0 = r3
            java.lang.String r0 = r0.f464c
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x001d
            r0 = 1
            r4 = r0
            goto L_0x001f
        L_0x001d:
            r0 = 0
            r4 = r0
        L_0x001f:
            r0 = r4
            if (r0 == 0) goto L_0x0026
            goto L_0x0028
        L_0x0026:
            r0 = 0
            r5 = r0
        L_0x0028:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p010g.p011g.p012d.p015m.p016a.C0228b.m640c():boolean");
    }

    /* renamed from: d */
    private final void m639d() {
        a aVar = this.f462a;
        if (aVar != null) {
            c c = i.a.c.a.b.c();
            c.m(this.f465d);
            c.n(this.f463b);
            aVar.d().m215a(i.a.d.g.y.b.f(c.j()).j());
        }
    }

    /* renamed from: b */
    public final AbstractC0333x m641b() {
        a aVar = this.f462a;
        return aVar != null ? aVar.m465b(this.f463b) : null;
    }
}
