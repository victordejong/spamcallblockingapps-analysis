package p012b.p076s.p078b.p079a.p086s0.p093x;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/e.class */
public final class C1453e implements AbstractC1350g {

    /* renamed from: a */
    public final long f5840a;

    /* renamed from: b */
    public final C1455f f5841b;

    /* renamed from: c */
    public final C1184p f5842c;

    /* renamed from: d */
    public boolean f5843d;

    static {
        AbstractC1353j jVar = C1450d.f5836a;
    }

    public C1453e() {
        this(0L);
    }

    public C1453e(long j) {
        this.f5840a = j;
        this.f5841b = new C1455f();
        this.f5842c = new C1184p(16384);
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC1350g[] m33287b() {
        return new AbstractC1350g[]{new C1453e()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        int read = hVar.read(this.f5842c.f4738a, 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.f5842c.m34358e(0);
        this.f5842c.m34360d(read);
        if (!this.f5843d) {
            this.f5841b.mo33169a(this.f5840a, 4);
            this.f5843d = true;
        }
        this.f5841b.mo33168a(this.f5842c);
        return 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f5843d = false;
        this.f5841b.mo33170a();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5841b.mo33167a(iVar, new AbstractC1462h0.C1466d(0, 1));
        iVar.mo32639e();
        iVar.mo32656a(new AbstractC1358o.C1360b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0060, code lost:
        r6.mo33614c();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0070, code lost:
        if ((r9 - r8) < 8192) goto L_0x0075;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0073, code lost:
        return false;
     */
    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo32616a(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            b.s.b.a.a1.p r0 = new b.s.b.a.a1.p
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f4738a
            r2 = 0
            r3 = 10
            r0.mo33619a(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m34358e(r1)
            r0 = r7
            int r0 = r0.m34341u()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 == r1) goto L_0x00ac
            r0 = r6
            r0.mo33614c()
            r0 = r6
            r1 = r8
            r0.mo33621a(r1)
            r0 = r8
            r9 = r0
        L_0x0037:
            r0 = 0
            r10 = r0
        L_0x003a:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f4738a
            r2 = 0
            r3 = 7
            r0.mo33619a(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m34358e(r1)
            r0 = r7
            int r0 = r0.m34338x()
            r11 = r0
            r0 = r11
            r1 = 44096(0xac40, float:6.1792E-41)
            if (r0 == r1) goto L_0x0080
            r0 = r11
            r1 = 44097(0xac41, float:6.1793E-41)
            if (r0 == r1) goto L_0x0080
            r0 = r6
            r0.mo33614c()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x0075
            r0 = 0
            return r0
        L_0x0075:
            r0 = r6
            r1 = r9
            r0.mo33621a(r1)
            goto L_0x0037
        L_0x0080:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L_0x008b
            r0 = 1
            return r0
        L_0x008b:
            r0 = r7
            byte[] r0 = r0.f4738a
            r1 = r11
            int r0 = p012b.p076s.p078b.p079a.p083p0.C1268b.m33936a(r0, r1)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x009e
            r0 = 0
            return r0
        L_0x009e:
            r0 = r6
            r1 = r11
            r2 = 7
            int r1 = r1 - r2
            r0.mo33621a(r1)
            goto L_0x003a
        L_0x00ac:
            r0 = r7
            r1 = 3
            r0.m34356f(r1)
            r0 = r7
            int r0 = r0.m34345q()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.mo33621a(r1)
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p093x.C1453e.mo32616a(b.s.b.a.s0.h):boolean");
    }
}
