package p193e.p1577m.p1578a.p1596c.p1602g1;

import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24787m;
/* renamed from: e.m.a.c.g1.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/l.class */
public final class C24413l implements AbstractC24418q {

    /* renamed from: a */
    public final C24787m f68096a;

    /* renamed from: b */
    public final long f68097b;

    public C24413l(C24787m c24787m, long j) {
        this.f68096a = c24787m;
        this.f68097b = j;
    }

    /* renamed from: a */
    public final C24421r m5152a(long j, long j2) {
        return new C24421r((j * 1000000) / this.f68096a.f69467e, this.f68097b + j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v9, types: [long[]] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [long] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [e.m.a.c.g1.l] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: b */
    public AbstractC24418q.C24419a mo5144b(long j) {
        Objects.requireNonNull(this.f68096a.f69473k);
        C24787m c24787m = this.f68096a;
        C24787m.C24788a c24788a = c24787m.f69473k;
        ?? r0 = c24788a.f69475a;
        ?? r02 = c24788a.f69476b;
        int m4621c = C24773d0.m4621c(r0, c24787m.m4578g(j), true, false);
        ?? r16 = false;
        ?? r18 = m4621c == -1 ? (char) 0 : r0[m4621c];
        if (m4621c != -1) {
            r16 = r02[m4621c];
        }
        C24421r m5152a = m5152a(r18, r16 == true ? 1L : 0L);
        if (m5152a.f68122a == j || m4621c == r0.length - 1) {
            return new AbstractC24418q.C24419a(m5152a);
        }
        int i = m4621c + 1;
        return new AbstractC24418q.C24419a(m5152a, m5152a(r0[i], r02[i]));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: c */
    public boolean mo5143c() {
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: g */
    public long mo5142g() {
        return this.f68096a.m4581d();
    }
}
