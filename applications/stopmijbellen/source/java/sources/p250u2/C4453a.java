package p250u2;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Map;
import java.util.Objects;
import p250u2.AbstractC4463f;
/* renamed from: u2.a */
/* loaded from: classes-dex2jar.jar:u2/a.class */
public final class C4453a extends AbstractC4463f {

    /* renamed from: a */
    public final String f13819a;

    /* renamed from: b */
    public final Integer f13820b;

    /* renamed from: c */
    public final C4462e f13821c;

    /* renamed from: d */
    public final long f13822d;

    /* renamed from: e */
    public final long f13823e;

    /* renamed from: f */
    public final Map<String, String> f13824f;

    /* renamed from: u2.a$b */
    /* loaded from: classes-dex2jar.jar:u2/a$b.class */
    public static final class C4455b extends AbstractC4463f.AbstractC4464a {

        /* renamed from: a */
        public String f13825a;

        /* renamed from: b */
        public Integer f13826b;

        /* renamed from: c */
        public C4462e f13827c;

        /* renamed from: d */
        public Long f13828d;

        /* renamed from: e */
        public Long f13829e;

        /* renamed from: f */
        public Map<String, String> f13830f;

        @Override // p250u2.AbstractC4463f.AbstractC4464a
        /* renamed from: b */
        public AbstractC4463f mo895b() {
            String str = this.f13825a == null ? " transportName" : "";
            String str2 = str;
            if (this.f13827c == null) {
                str2 = C1676a.m4789h(str, " encodedPayload");
            }
            String str3 = str2;
            if (this.f13828d == null) {
                str3 = C1676a.m4789h(str2, " eventMillis");
            }
            String str4 = str3;
            if (this.f13829e == null) {
                str4 = C1676a.m4789h(str3, " uptimeMillis");
            }
            String str5 = str4;
            if (this.f13830f == null) {
                str5 = C1676a.m4789h(str4, " autoMetadata");
            }
            if (str5.isEmpty()) {
                return new C4453a(this.f13825a, this.f13826b, this.f13827c, this.f13828d.longValue(), this.f13829e.longValue(), this.f13830f, null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str5));
        }

        @Override // p250u2.AbstractC4463f.AbstractC4464a
        /* renamed from: c */
        public Map<String, String> mo894c() {
            Map<String, String> map = this.f13830f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        /* renamed from: d */
        public AbstractC4463f.AbstractC4464a m909d(C4462e c4462e) {
            Objects.requireNonNull(c4462e, "Null encodedPayload");
            this.f13827c = c4462e;
            return this;
        }

        /* renamed from: e */
        public AbstractC4463f.AbstractC4464a m908e(long j) {
            this.f13828d = Long.valueOf(j);
            return this;
        }

        /* renamed from: f */
        public AbstractC4463f.AbstractC4464a m907f(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f13825a = str;
            return this;
        }

        /* renamed from: g */
        public AbstractC4463f.AbstractC4464a m906g(long j) {
            this.f13829e = Long.valueOf(j);
            return this;
        }
    }

    public C4453a(String str, Integer num, C4462e c4462e, long j, long j2, Map map, C4454a c4454a) {
        this.f13819a = str;
        this.f13820b = num;
        this.f13821c = c4462e;
        this.f13822d = j;
        this.f13823e = j2;
        this.f13824f = map;
    }

    @Override // p250u2.AbstractC4463f
    /* renamed from: b */
    public Map<String, String> mo904b() {
        return this.f13824f;
    }

    @Override // p250u2.AbstractC4463f
    /* renamed from: c */
    public Integer mo903c() {
        return this.f13820b;
    }

    @Override // p250u2.AbstractC4463f
    /* renamed from: d */
    public C4462e mo902d() {
        return this.f13821c;
    }

    @Override // p250u2.AbstractC4463f
    /* renamed from: e */
    public long mo901e() {
        return this.f13822d;
    }

    public boolean equals(Object obj) {
        Integer num;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4463f)) {
            return false;
        }
        AbstractC4463f abstractC4463f = (AbstractC4463f) obj;
        if (!this.f13819a.equals(abstractC4463f.mo899g()) || ((num = this.f13820b) != null ? !num.equals(abstractC4463f.mo903c()) : abstractC4463f.mo903c() != null) || !this.f13821c.equals(abstractC4463f.mo902d()) || this.f13822d != abstractC4463f.mo901e() || this.f13823e != abstractC4463f.mo898h() || !this.f13824f.equals(abstractC4463f.mo904b())) {
            z = false;
        }
        return z;
    }

    @Override // p250u2.AbstractC4463f
    /* renamed from: g */
    public String mo899g() {
        return this.f13819a;
    }

    @Override // p250u2.AbstractC4463f
    /* renamed from: h */
    public long mo898h() {
        return this.f13823e;
    }

    public int hashCode() {
        int hashCode = this.f13819a.hashCode();
        Integer num = this.f13820b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int hashCode3 = this.f13821c.hashCode();
        long j = this.f13822d;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f13823e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f13824f.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("EventInternal{transportName=");
        m8752j.append(this.f13819a);
        m8752j.append(", code=");
        m8752j.append(this.f13820b);
        m8752j.append(", encodedPayload=");
        m8752j.append(this.f13821c);
        m8752j.append(", eventMillis=");
        m8752j.append(this.f13822d);
        m8752j.append(", uptimeMillis=");
        m8752j.append(this.f13823e);
        m8752j.append(", autoMetadata=");
        m8752j.append(this.f13824f);
        m8752j.append("}");
        return m8752j.toString();
    }
}
