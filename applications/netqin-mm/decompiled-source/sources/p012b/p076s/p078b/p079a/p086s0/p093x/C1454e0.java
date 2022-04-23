package p012b.p076s.p078b.p079a.p086s0.p093x;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
/* renamed from: b.s.b.a.s0.x.e0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/e0.class */
public final class C1454e0 {

    /* renamed from: c */
    public boolean f5846c;

    /* renamed from: d */
    public boolean f5847d;

    /* renamed from: e */
    public boolean f5848e;

    /* renamed from: a */
    public final C1196z f5844a = new C1196z(0);

    /* renamed from: f */
    public long f5849f = -9223372036854775807L;

    /* renamed from: g */
    public long f5850g = -9223372036854775807L;

    /* renamed from: h */
    public long f5851h = -9223372036854775807L;

    /* renamed from: b */
    public final C1184p f5845b = new C1184p();

    /* renamed from: a */
    public final int m33284a(AbstractC1351h hVar) {
        this.f5845b.m34368a(C1167d0.f4693f);
        this.f5846c = true;
        hVar.mo33614c();
        return 0;
    }

    /* renamed from: a */
    public int m33283a(AbstractC1351h hVar, C1357n nVar, int i) throws IOException, InterruptedException {
        if (i <= 0) {
            return m33284a(hVar);
        }
        if (!this.f5848e) {
            return m33278c(hVar, nVar, i);
        }
        if (this.f5850g == -9223372036854775807L) {
            return m33284a(hVar);
        }
        if (!this.f5847d) {
            return m33280b(hVar, nVar, i);
        }
        long j = this.f5849f;
        if (j == -9223372036854775807L) {
            return m33284a(hVar);
        }
        this.f5851h = this.f5844a.m34292b(this.f5850g) - this.f5844a.m34292b(j);
        return m33284a(hVar);
    }

    /* renamed from: a */
    public long m33286a() {
        return this.f5851h;
    }

    /* renamed from: a */
    public final long m33285a(C1184p pVar, int i) {
        int d = pVar.m34361d();
        for (int c = pVar.m34363c(); c < d; c++) {
            if (pVar.f4738a[c] == 71) {
                long a = C1468i0.m33225a(pVar, c, i);
                if (a != -9223372036854775807L) {
                    return a;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public final int m33280b(AbstractC1351h hVar, C1357n nVar, int i) throws IOException, InterruptedException {
        int min = (int) Math.min(112800L, hVar.mo33622a());
        long j = 0;
        if (hVar.getPosition() != j) {
            nVar.f5355a = j;
            return 1;
        }
        this.f5845b.m34362c(min);
        hVar.mo33614c();
        hVar.mo33619a(this.f5845b.f4738a, 0, min);
        this.f5849f = m33285a(this.f5845b, i);
        this.f5847d = true;
        return 0;
    }

    /* renamed from: b */
    public final long m33281b(C1184p pVar, int i) {
        int c = pVar.m34363c();
        for (int d = pVar.m34361d() - 1; d >= c; d--) {
            if (pVar.f4738a[d] == 71) {
                long a = C1468i0.m33225a(pVar, d, i);
                if (a != -9223372036854775807L) {
                    return a;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public C1196z m33282b() {
        return this.f5844a;
    }

    /* renamed from: c */
    public final int m33278c(AbstractC1351h hVar, C1357n nVar, int i) throws IOException, InterruptedException {
        long a = hVar.mo33622a();
        int min = (int) Math.min(112800L, a);
        long j = a - min;
        if (hVar.getPosition() != j) {
            nVar.f5355a = j;
            return 1;
        }
        this.f5845b.m34362c(min);
        hVar.mo33614c();
        hVar.mo33619a(this.f5845b.f4738a, 0, min);
        this.f5850g = m33281b(this.f5845b, i);
        this.f5848e = true;
        return 0;
    }

    /* renamed from: c */
    public boolean m33279c() {
        return this.f5846c;
    }
}
