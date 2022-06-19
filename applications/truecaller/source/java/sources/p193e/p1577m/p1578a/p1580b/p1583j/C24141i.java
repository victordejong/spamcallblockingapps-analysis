package p193e.p1577m.p1578a.p1580b.p1583j;

import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n;
/* renamed from: e.m.a.b.j.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/i.class */
public final class C24141i extends AbstractC24151n {

    /* renamed from: a */
    public final String f66848a;

    /* renamed from: b */
    public final Integer f66849b;

    /* renamed from: c */
    public final C24150m f66850c;

    /* renamed from: d */
    public final long f66851d;

    /* renamed from: e */
    public final long f66852e;

    /* renamed from: f */
    public final Map<String, String> f66853f;

    /* renamed from: e.m.a.b.j.i$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/i$b.class */
    public static final class C24143b extends AbstractC24151n.AbstractC24152a {

        /* renamed from: a */
        public String f66854a;

        /* renamed from: b */
        public Integer f66855b;

        /* renamed from: c */
        public C24150m f66856c;

        /* renamed from: d */
        public Long f66857d;

        /* renamed from: e */
        public Long f66858e;

        /* renamed from: f */
        public Map<String, String> f66859f;

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n.AbstractC24152a
        /* renamed from: b */
        public AbstractC24151n mo5534b() {
            String str = this.f66854a == null ? " transportName" : "";
            String str2 = str;
            if (this.f66856c == null) {
                str2 = C22128a.m8543z2(str, " encodedPayload");
            }
            String str3 = str2;
            if (this.f66857d == null) {
                str3 = C22128a.m8543z2(str2, " eventMillis");
            }
            String str4 = str3;
            if (this.f66858e == null) {
                str4 = C22128a.m8543z2(str3, " uptimeMillis");
            }
            String str5 = str4;
            if (this.f66859f == null) {
                str5 = C22128a.m8543z2(str4, " autoMetadata");
            }
            if (str5.isEmpty()) {
                return new C24141i(this.f66854a, this.f66855b, this.f66856c, this.f66857d.longValue(), this.f66858e.longValue(), this.f66859f, null);
            }
            throw new IllegalStateException(C22128a.m8543z2("Missing required properties:", str5));
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n.AbstractC24152a
        /* renamed from: c */
        public Map<String, String> mo5533c() {
            Map<String, String> map = this.f66859f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n.AbstractC24152a
        /* renamed from: d */
        public AbstractC24151n.AbstractC24152a mo5532d(C24150m c24150m) {
            Objects.requireNonNull(c24150m, "Null encodedPayload");
            this.f66856c = c24150m;
            return this;
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n.AbstractC24152a
        /* renamed from: e */
        public AbstractC24151n.AbstractC24152a mo5531e(long j) {
            this.f66857d = Long.valueOf(j);
            return this;
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n.AbstractC24152a
        /* renamed from: f */
        public AbstractC24151n.AbstractC24152a mo5530f(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f66854a = str;
            return this;
        }

        @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n.AbstractC24152a
        /* renamed from: g */
        public AbstractC24151n.AbstractC24152a mo5529g(long j) {
            this.f66858e = Long.valueOf(j);
            return this;
        }
    }

    public C24141i(String str, Integer num, C24150m c24150m, long j, long j2, Map map, C24142a c24142a) {
        this.f66848a = str;
        this.f66849b = num;
        this.f66850c = c24150m;
        this.f66851d = j;
        this.f66852e = j2;
        this.f66853f = map;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n
    /* renamed from: c */
    public Map<String, String> mo5543c() {
        return this.f66853f;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n
    /* renamed from: d */
    public Integer mo5542d() {
        return this.f66849b;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n
    /* renamed from: e */
    public C24150m mo5541e() {
        return this.f66850c;
    }

    public boolean equals(Object obj) {
        Integer num;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24151n)) {
            return false;
        }
        AbstractC24151n abstractC24151n = (AbstractC24151n) obj;
        if (!this.f66848a.equals(abstractC24151n.mo5538h()) || ((num = this.f66849b) != null ? !num.equals(abstractC24151n.mo5542d()) : abstractC24151n.mo5542d() != null) || !this.f66850c.equals(abstractC24151n.mo5541e()) || this.f66851d != abstractC24151n.mo5540f() || this.f66852e != abstractC24151n.mo5537i() || !this.f66853f.equals(abstractC24151n.mo5543c())) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n
    /* renamed from: f */
    public long mo5540f() {
        return this.f66851d;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n
    /* renamed from: h */
    public String mo5538h() {
        return this.f66848a;
    }

    public int hashCode() {
        int hashCode = this.f66848a.hashCode();
        Integer num = this.f66849b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int hashCode3 = this.f66850c.hashCode();
        long j = this.f66851d;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f66852e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f66853f.hashCode();
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n
    /* renamed from: i */
    public long mo5537i() {
        return this.f66852e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EventInternal{transportName=");
        m8728C.append(this.f66848a);
        m8728C.append(", code=");
        m8728C.append(this.f66849b);
        m8728C.append(", encodedPayload=");
        m8728C.append(this.f66850c);
        m8728C.append(", eventMillis=");
        m8728C.append(this.f66851d);
        m8728C.append(", uptimeMillis=");
        m8728C.append(this.f66852e);
        m8728C.append(", autoMetadata=");
        m8728C.append(this.f66853f);
        m8728C.append("}");
        return m8728C.toString();
    }
}
