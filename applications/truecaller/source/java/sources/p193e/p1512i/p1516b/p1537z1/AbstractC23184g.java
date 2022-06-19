package p193e.p1512i.p1516b.p1537z1;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1537z1.AbstractC23211x;
/* renamed from: e.i.b.z1.g */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/g.class */
public abstract class AbstractC23184g extends AbstractC23211x {

    /* renamed from: a */
    public final Long f64162a;

    /* renamed from: b */
    public final Long f64163b;

    /* renamed from: c */
    public final boolean f64164c;

    /* renamed from: d */
    public final boolean f64165d;

    /* renamed from: e */
    public final Long f64166e;

    /* renamed from: f */
    public final String f64167f;

    /* renamed from: g */
    public final String f64168g;

    /* renamed from: h */
    public final Integer f64169h;

    /* renamed from: i */
    public final Integer f64170i;

    /* renamed from: j */
    public final boolean f64171j;

    /* renamed from: e.i.b.z1.g$b */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/g$b.class */
    public static class C23186b extends AbstractC23211x.AbstractC23212a {

        /* renamed from: a */
        public Long f64172a;

        /* renamed from: b */
        public Long f64173b;

        /* renamed from: c */
        public Boolean f64174c;

        /* renamed from: d */
        public Boolean f64175d;

        /* renamed from: e */
        public Long f64176e;

        /* renamed from: f */
        public String f64177f;

        /* renamed from: g */
        public String f64178g;

        /* renamed from: h */
        public Integer f64179h;

        /* renamed from: i */
        public Integer f64180i;

        /* renamed from: j */
        public Boolean f64181j;

        public C23186b() {
        }

        public C23186b(AbstractC23211x abstractC23211x, C23185a c23185a) {
            AbstractC23184g abstractC23184g = (AbstractC23184g) abstractC23211x;
            this.f64172a = abstractC23184g.f64162a;
            this.f64173b = abstractC23184g.f64163b;
            this.f64174c = Boolean.valueOf(abstractC23184g.f64164c);
            this.f64175d = Boolean.valueOf(abstractC23184g.f64165d);
            this.f64176e = abstractC23184g.f64166e;
            this.f64177f = abstractC23184g.f64167f;
            this.f64178g = abstractC23184g.f64168g;
            this.f64179h = abstractC23184g.f64169h;
            this.f64180i = abstractC23184g.f64170i;
            this.f64181j = Boolean.valueOf(abstractC23184g.f64171j);
        }

        @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x.AbstractC23212a
        /* renamed from: a */
        public AbstractC23211x.AbstractC23212a mo7361a(boolean z) {
            this.f64175d = Boolean.valueOf(z);
            return this;
        }

        @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x.AbstractC23212a
        /* renamed from: b */
        public AbstractC23211x mo7360b() {
            String str = this.f64174c == null ? " cdbCallTimeout" : "";
            String str2 = str;
            if (this.f64175d == null) {
                str2 = C22128a.m8543z2(str, " cachedBidUsed");
            }
            String str3 = str2;
            if (this.f64177f == null) {
                str3 = C22128a.m8543z2(str2, " impressionId");
            }
            String str4 = str3;
            if (this.f64181j == null) {
                str4 = C22128a.m8543z2(str3, " readyToSend");
            }
            if (str4.isEmpty()) {
                return new n(this.f64172a, this.f64173b, this.f64174c.booleanValue(), this.f64175d.booleanValue(), this.f64176e, this.f64177f, this.f64178g, this.f64179h, this.f64180i, this.f64181j.booleanValue());
            }
            throw new IllegalStateException(C22128a.m8543z2("Missing required properties:", str4));
        }

        @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x.AbstractC23212a
        /* renamed from: c */
        public AbstractC23211x.AbstractC23212a mo7359c(boolean z) {
            this.f64174c = Boolean.valueOf(z);
            return this;
        }

        @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x.AbstractC23212a
        /* renamed from: d */
        public AbstractC23211x.AbstractC23212a mo7358d(boolean z) {
            this.f64181j = Boolean.valueOf(z);
            return this;
        }
    }

    public AbstractC23184g(Long l, Long l2, boolean z, boolean z2, Long l3, String str, String str2, Integer num, Integer num2, boolean z3) {
        this.f64162a = l;
        this.f64163b = l2;
        this.f64164c = z;
        this.f64165d = z2;
        this.f64166e = l3;
        Objects.requireNonNull(str, "Null impressionId");
        this.f64167f = str;
        this.f64168g = str2;
        this.f64169h = num;
        this.f64170i = num2;
        this.f64171j = z3;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: a */
    public Long mo7372a() {
        return this.f64163b;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: b */
    public Long mo7371b() {
        return this.f64162a;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: c */
    public Long mo7370c() {
        return this.f64166e;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: d */
    public String mo7369d() {
        return this.f64167f;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: e */
    public Integer mo7368e() {
        return this.f64170i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        if (r3.f64167f.equals(r0.mo7369d()) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0099, code lost:
        if ((r0 = r3.f64168g) != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
        if ((r0 = r3.f64169h) != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d5, code lost:
        if ((r0 = r3.f64170i) != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f5, code lost:
        if (r3.f64171j != r0.mo7363j()) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1537z1.AbstractC23184g.equals(java.lang.Object):boolean");
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: f */
    public String mo7367f() {
        return this.f64168g;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: g */
    public Integer mo7366g() {
        return this.f64169h;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: h */
    public boolean mo7365h() {
        return this.f64165d;
    }

    public int hashCode() {
        Long l = this.f64162a;
        int i = 0;
        int hashCode = l == null ? 0 : l.hashCode();
        Long l2 = this.f64163b;
        int hashCode2 = l2 == null ? 0 : l2.hashCode();
        int i2 = 1231;
        int i3 = this.f64164c ? 1231 : 1237;
        int i4 = this.f64165d ? 1231 : 1237;
        Long l3 = this.f64166e;
        int hashCode3 = l3 == null ? 0 : l3.hashCode();
        int hashCode4 = this.f64167f.hashCode();
        String str = this.f64168g;
        int hashCode5 = str == null ? 0 : str.hashCode();
        Integer num = this.f64169h;
        int hashCode6 = num == null ? 0 : num.hashCode();
        Integer num2 = this.f64170i;
        if (num2 != null) {
            i = num2.hashCode();
        }
        if (!this.f64171j) {
            i2 = 1237;
        }
        return ((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i) * 1000003) ^ i2;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: i */
    public boolean mo7364i() {
        return this.f64164c;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: j */
    public boolean mo7363j() {
        return this.f64171j;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23211x
    /* renamed from: k */
    public AbstractC23211x.AbstractC23212a mo7362k() {
        return new C23186b(this, null);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Metric{cdbCallStartTimestamp=");
        m8728C.append(this.f64162a);
        m8728C.append(", cdbCallEndTimestamp=");
        m8728C.append(this.f64163b);
        m8728C.append(", cdbCallTimeout=");
        m8728C.append(this.f64164c);
        m8728C.append(", cachedBidUsed=");
        m8728C.append(this.f64165d);
        m8728C.append(", elapsedTimestamp=");
        m8728C.append(this.f64166e);
        m8728C.append(", impressionId=");
        m8728C.append(this.f64167f);
        m8728C.append(", requestGroupId=");
        m8728C.append(this.f64168g);
        m8728C.append(", zoneId=");
        m8728C.append(this.f64169h);
        m8728C.append(", profileId=");
        m8728C.append(this.f64170i);
        m8728C.append(", readyToSend=");
        return C22128a.m8590o(m8728C, this.f64171j, "}");
    }
}
