package p193e.p1577m.p1578a.p1580b.p1583j;

import java.util.Arrays;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.EnumC23989d;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
/* renamed from: e.m.a.b.j.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/j.class */
public final class C24144j extends AbstractC24158r {

    /* renamed from: a */
    public final String f66860a;

    /* renamed from: b */
    public final byte[] f66861b;

    /* renamed from: c */
    public final EnumC23989d f66862c;

    /* renamed from: e.m.a.b.j.j$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/j$b.class */
    public static final class C24146b extends AbstractC24158r.AbstractC24159a {

        /* renamed from: a */
        public String f66863a;

        /* renamed from: b */
        public byte[] f66864b;

        /* renamed from: c */
        public EnumC23989d f66865c;

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r.AbstractC24159a
        /* renamed from: a */
        public AbstractC24158r mo5523a() {
            String str = this.f66863a == null ? " backendName" : "";
            String str2 = str;
            if (this.f66865c == null) {
                str2 = C22128a.m8543z2(str, " priority");
            }
            if (str2.isEmpty()) {
                return new C24144j(this.f66863a, this.f66864b, this.f66865c, null);
            }
            throw new IllegalStateException(C22128a.m8543z2("Missing required properties:", str2));
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r.AbstractC24159a
        /* renamed from: b */
        public AbstractC24158r.AbstractC24159a mo5522b(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.f66863a = str;
            return this;
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r.AbstractC24159a
        /* renamed from: c */
        public AbstractC24158r.AbstractC24159a mo5521c(EnumC23989d enumC23989d) {
            Objects.requireNonNull(enumC23989d, "Null priority");
            this.f66865c = enumC23989d;
            return this;
        }
    }

    public C24144j(String str, byte[] bArr, EnumC23989d enumC23989d, C24145a c24145a) {
        this.f66860a = str;
        this.f66861b = bArr;
        this.f66862c = enumC23989d;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r
    /* renamed from: b */
    public String mo5526b() {
        return this.f66860a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r
    /* renamed from: c */
    public byte[] mo5525c() {
        return this.f66861b;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r
    /* renamed from: d */
    public EnumC23989d mo5524d() {
        return this.f66862c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r3.f66862c.equals(r0.mo5524d()) != false) goto L18;
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
            boolean r0 = r0 instanceof p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r
            if (r0 == 0) goto L5e
            r0 = r4
            e.m.a.b.j.r r0 = (p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r) r0
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.f66860a
            r1 = r6
            java.lang.String r1 = r1.mo5526b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            r0 = r3
            byte[] r0 = r0.f66861b
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p1577m.p1578a.p1580b.p1583j.C24144j
            if (r0 == 0) goto L3b
            r0 = r6
            e.m.a.b.j.j r0 = (p193e.p1577m.p1578a.p1580b.p1583j.C24144j) r0
            byte[] r0 = r0.f66861b
            r4 = r0
            goto L40
        L3b:
            r0 = r6
            byte[] r0 = r0.mo5525c()
            r4 = r0
        L40:
            r0 = r7
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L5a
            r0 = r3
            e.m.a.b.d r0 = r0.f66862c
            r1 = r6
            e.m.a.b.d r1 = r1.mo5524d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            goto L5c
        L5a:
            r0 = 0
            r5 = r0
        L5c:
            r0 = r5
            return r0
        L5e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1580b.p1583j.C24144j.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((((this.f66860a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f66861b)) * 1000003) ^ this.f66862c.hashCode();
    }
}
