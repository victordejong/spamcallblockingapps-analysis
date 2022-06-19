package p193e.p1577m.p1578a.p1580b.p1583j.p1593y;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n;
/* renamed from: e.m.a.b.j.y.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/y/a.class */
public final class C24166a extends AbstractC24172f {

    /* renamed from: a */
    public final Iterable<AbstractC24151n> f66903a;

    /* renamed from: b */
    public final byte[] f66904b;

    public C24166a(Iterable iterable, byte[] bArr, C24167a c24167a) {
        this.f66903a = iterable;
        this.f66904b = bArr;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24172f
    /* renamed from: a */
    public Iterable<AbstractC24151n> mo5514a() {
        return this.f66903a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24172f
    /* renamed from: b */
    public byte[] mo5513b() {
        return this.f66904b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (java.util.Arrays.equals(r3.f66904b, r0 instanceof p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24166a ? ((p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24166a) r0).f66904b : r0.mo5513b()) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24172f
            if (r0 == 0) goto L4e
            r0 = r4
            e.m.a.b.j.y.f r0 = (p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24172f) r0
            r4 = r0
            r0 = r3
            java.lang.Iterable<e.m.a.b.j.n> r0 = r0.f66903a
            r1 = r4
            java.lang.Iterable r1 = r1.mo5514a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            r0 = r3
            byte[] r0 = r0.f66904b
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24166a
            if (r0 == 0) goto L3a
            r0 = r4
            e.m.a.b.j.y.a r0 = (p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24166a) r0
            byte[] r0 = r0.f66904b
            r4 = r0
            goto L3f
        L3a:
            r0 = r4
            byte[] r0 = r0.mo5513b()
            r4 = r0
        L3f:
            r0 = r6
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L4a
            goto L4c
        L4a:
            r0 = 0
            r5 = r0
        L4c:
            r0 = r5
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24166a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((this.f66903a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f66904b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BackendRequest{events=");
        m8728C.append(this.f66903a);
        m8728C.append(", extras=");
        m8728C.append(Arrays.toString(this.f66904b));
        m8728C.append("}");
        return m8728C.toString();
    }
}
