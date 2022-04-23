package p012b.p076s.p078b.p079a.p086s0.p090u;

import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1361p;
import p012b.p076s.p078b.p079a.p086s0.p090u.C1388e;
/* renamed from: b.s.b.a.s0.u.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/u/f.class */
public final class C1390f implements C1388e.AbstractC1389a {

    /* renamed from: a */
    public final long[] f5562a;

    /* renamed from: b */
    public final long[] f5563b;

    /* renamed from: c */
    public final long f5564c;

    /* renamed from: d */
    public final long f5565d;

    public C1390f(long[] jArr, long[] jArr2, long j, long j2) {
        this.f5562a = jArr;
        this.f5563b = jArr2;
        this.f5564c = j;
        this.f5565d = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012b.p076s.p078b.p079a.p086s0.p090u.C1390f m33499a(long r9, long r11, p012b.p076s.p078b.p079a.p086s0.C1356m r13, p012b.p076s.p078b.p079a.p080a1.C1184p r14) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p090u.C1390f.m33499a(long, long, b.s.b.a.s0.m, b.s.b.a.a1.p):b.s.b.a.s0.u.f");
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p090u.C1388e.AbstractC1389a
    /* renamed from: a */
    public long mo33497a(long j) {
        return this.f5562a[C1167d0.m34449b(this.f5563b, j, true, true)];
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public AbstractC1358o.C1359a mo33118b(long j) {
        int b = C1167d0.m34449b(this.f5562a, j, true, true);
        C1361p pVar = new C1361p(this.f5562a[b], this.f5563b[b]);
        if (pVar.f5361a >= j || b == this.f5562a.length - 1) {
            return new AbstractC1358o.C1359a(pVar);
        }
        int i = b + 1;
        return new AbstractC1358o.C1359a(pVar, new C1361p(this.f5562a[i], this.f5563b[i]));
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public boolean mo33119b() {
        return true;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: c */
    public long mo33117c() {
        return this.f5564c;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p090u.C1388e.AbstractC1389a
    /* renamed from: d */
    public long mo33495d() {
        return this.f5565d;
    }
}
