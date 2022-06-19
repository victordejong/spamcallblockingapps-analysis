package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q;
/* renamed from: e.m.a.b.i.e.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/k.class */
public final class C24012k extends AbstractC24023q {

    /* renamed from: a */
    public final long f66543a;

    /* renamed from: b */
    public final Integer f66544b;

    /* renamed from: c */
    public final long f66545c;

    /* renamed from: d */
    public final byte[] f66546d;

    /* renamed from: e */
    public final String f66547e;

    /* renamed from: f */
    public final long f66548f;

    /* renamed from: g */
    public final AbstractC24027t f66549g;

    /* renamed from: e.m.a.b.i.e.k$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/k$b.class */
    public static final class C24014b extends AbstractC24023q.AbstractC24024a {

        /* renamed from: a */
        public Long f66550a;

        /* renamed from: b */
        public Integer f66551b;

        /* renamed from: c */
        public Long f66552c;

        /* renamed from: d */
        public byte[] f66553d;

        /* renamed from: e */
        public String f66554e;

        /* renamed from: f */
        public Long f66555f;

        /* renamed from: g */
        public AbstractC24027t f66556g;
    }

    public C24012k(long j, Integer num, long j2, byte[] bArr, String str, long j3, AbstractC24027t abstractC24027t, C24013a c24013a) {
        this.f66543a = j;
        this.f66544b = num;
        this.f66545c = j2;
        this.f66546d = bArr;
        this.f66547e = str;
        this.f66548f = j3;
        this.f66549g = abstractC24027t;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q
    /* renamed from: a */
    public Integer mo5612a() {
        return this.f66544b;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q
    /* renamed from: b */
    public long mo5611b() {
        return this.f66543a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q
    /* renamed from: c */
    public long mo5610c() {
        return this.f66545c;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q
    /* renamed from: d */
    public AbstractC24027t mo5609d() {
        return this.f66549g;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q
    /* renamed from: e */
    public byte[] mo5608e() {
        return this.f66546d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        if (r5.f66548f != r0.mo5606g()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        if ((r0 = r5.f66549g) != null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r6
            boolean r0 = r0 instanceof p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q
            if (r0 == 0) goto Lc0
            r0 = r6
            e.m.a.b.i.e.q r0 = (p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q) r0
            r8 = r0
            r0 = r5
            long r0 = r0.f66543a
            r1 = r8
            long r1 = r1.mo5611b()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            java.lang.Integer r0 = r0.f66544b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L34
            r0 = r8
            java.lang.Integer r0 = r0.mo5612a()
            if (r0 != 0) goto Lbc
            goto L3f
        L34:
            r0 = r6
            r1 = r8
            java.lang.Integer r1 = r1.mo5612a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L3f:
            r0 = r5
            long r0 = r0.f66545c
            r1 = r8
            long r1 = r1.mo5610c()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            byte[] r0 = r0.f66546d
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24012k
            if (r0 == 0) goto L63
            r0 = r8
            e.m.a.b.i.e.k r0 = (p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24012k) r0
            byte[] r0 = r0.f66546d
            r6 = r0
            goto L68
        L63:
            r0 = r8
            byte[] r0 = r0.mo5608e()
            r6 = r0
        L68:
            r0 = r9
            r1 = r6
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto Lbc
            r0 = r5
            java.lang.String r0 = r0.f66547e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L84
            r0 = r8
            java.lang.String r0 = r0.mo5607f()
            if (r0 != 0) goto Lbc
            goto L8f
        L84:
            r0 = r6
            r1 = r8
            java.lang.String r1 = r1.mo5607f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
        L8f:
            r0 = r5
            long r0 = r0.f66548f
            r1 = r8
            long r1 = r1.mo5606g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lbc
            r0 = r5
            e.m.a.b.i.e.t r0 = r0.f66549g
            r6 = r0
            r0 = r6
            if (r0 != 0) goto Lae
            r0 = r8
            e.m.a.b.i.e.t r0 = r0.mo5609d()
            if (r0 != 0) goto Lbc
            goto Lbe
        Lae:
            r0 = r6
            r1 = r8
            e.m.a.b.i.e.t r1 = r1.mo5609d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lbc
            goto Lbe
        Lbc:
            r0 = 0
            r7 = r0
        Lbe:
            r0 = r7
            return r0
        Lc0:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1580b.p1581i.p1582e.C24012k.equals(java.lang.Object):boolean");
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q
    /* renamed from: f */
    public String mo5607f() {
        return this.f66547e;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1581i.p1582e.AbstractC24023q
    /* renamed from: g */
    public long mo5606g() {
        return this.f66548f;
    }

    public int hashCode() {
        long j = this.f66543a;
        int i = (int) (j ^ (j >>> 32));
        Integer num = this.f66544b;
        int i2 = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f66545c;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        int hashCode2 = Arrays.hashCode(this.f66546d);
        String str = this.f66547e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f66548f;
        int i4 = (int) ((j3 >>> 32) ^ j3);
        AbstractC24027t abstractC24027t = this.f66549g;
        if (abstractC24027t != null) {
            i2 = abstractC24027t.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i4) * 1000003) ^ i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LogEvent{eventTimeMs=");
        m8728C.append(this.f66543a);
        m8728C.append(", eventCode=");
        m8728C.append(this.f66544b);
        m8728C.append(", eventUptimeMs=");
        m8728C.append(this.f66545c);
        m8728C.append(", sourceExtension=");
        m8728C.append(Arrays.toString(this.f66546d));
        m8728C.append(", sourceExtensionJsonProto3=");
        m8728C.append(this.f66547e);
        m8728C.append(", timezoneOffsetSeconds=");
        m8728C.append(this.f66548f);
        m8728C.append(", networkConnectionInfo=");
        m8728C.append(this.f66549g);
        m8728C.append("}");
        return m8728C.toString();
    }
}
