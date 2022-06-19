package com.google.android.datatransport.p232h;

import com.google.android.datatransport.p232h.AbstractC4664h;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.h.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/a.class */
final class C4649a extends AbstractC4664h {

    /* renamed from: a */
    private final String f14190a;

    /* renamed from: b */
    private final Integer f14191b;

    /* renamed from: c */
    private final C4663g f14192c;

    /* renamed from: d */
    private final long f14193d;

    /* renamed from: e */
    private final long f14194e;

    /* renamed from: f */
    private final Map<String, String> f14195f;

    /* renamed from: com.google.android.datatransport.h.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/a$b.class */
    public static final class C4651b extends AbstractC4664h.AbstractC4665a {

        /* renamed from: a */
        private String f14196a;

        /* renamed from: b */
        private Integer f14197b;

        /* renamed from: c */
        private C4663g f14198c;

        /* renamed from: d */
        private Long f14199d;

        /* renamed from: e */
        private Long f14200e;

        /* renamed from: f */
        private Map<String, String> f14201f;

        @Override // com.google.android.datatransport.p232h.AbstractC4664h.AbstractC4665a
        /* renamed from: d */
        public AbstractC4664h mo22050d() {
            String str = "";
            if (this.f14196a == null) {
                str = " transportName";
            }
            String str2 = str;
            if (this.f14198c == null) {
                str2 = str + " encodedPayload";
            }
            String str3 = str2;
            if (this.f14199d == null) {
                str3 = str2 + " eventMillis";
            }
            String str4 = str3;
            if (this.f14200e == null) {
                str4 = str3 + " uptimeMillis";
            }
            String str5 = str4;
            if (this.f14201f == null) {
                str5 = str4 + " autoMetadata";
            }
            if (str5.isEmpty()) {
                return new C4649a(this.f14196a, this.f14197b, this.f14198c, this.f14199d.longValue(), this.f14200e.longValue(), this.f14201f);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4664h.AbstractC4665a
        /* renamed from: e */
        protected Map<String, String> mo22049e() {
            Map<String, String> map = this.f14201f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4664h.AbstractC4665a
        /* renamed from: f */
        public AbstractC4664h.AbstractC4665a mo22048f(Map<String, String> map) {
            Objects.requireNonNull(map, "Null autoMetadata");
            this.f14201f = map;
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4664h.AbstractC4665a
        /* renamed from: g */
        public AbstractC4664h.AbstractC4665a mo22047g(Integer num) {
            this.f14197b = num;
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4664h.AbstractC4665a
        /* renamed from: h */
        public AbstractC4664h.AbstractC4665a mo22046h(C4663g c4663g) {
            Objects.requireNonNull(c4663g, "Null encodedPayload");
            this.f14198c = c4663g;
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4664h.AbstractC4665a
        /* renamed from: i */
        public AbstractC4664h.AbstractC4665a mo22045i(long j) {
            this.f14199d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4664h.AbstractC4665a
        /* renamed from: j */
        public AbstractC4664h.AbstractC4665a mo22044j(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f14196a = str;
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4664h.AbstractC4665a
        /* renamed from: k */
        public AbstractC4664h.AbstractC4665a mo22043k(long j) {
            this.f14200e = Long.valueOf(j);
            return this;
        }
    }

    private C4649a(String str, Integer num, C4663g c4663g, long j, long j2, Map<String, String> map) {
        this.f14190a = str;
        this.f14191b = num;
        this.f14192c = c4663g;
        this.f14193d = j;
        this.f14194e = j2;
        this.f14195f = map;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4664h
    /* renamed from: c */
    public Map<String, String> mo22063c() {
        return this.f14195f;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4664h
    /* renamed from: d */
    public Integer mo22062d() {
        return this.f14191b;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4664h
    /* renamed from: e */
    public C4663g mo22061e() {
        return this.f14192c;
    }

    public boolean equals(Object obj) {
        Integer num;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4664h)) {
            return false;
        }
        AbstractC4664h abstractC4664h = (AbstractC4664h) obj;
        if (!this.f14190a.equals(abstractC4664h.mo22056j()) || ((num = this.f14191b) != null ? !num.equals(abstractC4664h.mo22062d()) : abstractC4664h.mo22062d() != null) || !this.f14192c.equals(abstractC4664h.mo22061e()) || this.f14193d != abstractC4664h.mo22060f() || this.f14194e != abstractC4664h.mo22055k() || !this.f14195f.equals(abstractC4664h.mo22063c())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4664h
    /* renamed from: f */
    public long mo22060f() {
        return this.f14193d;
    }

    public int hashCode() {
        int hashCode = this.f14190a.hashCode();
        Integer num = this.f14191b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int hashCode3 = this.f14192c.hashCode();
        long j = this.f14193d;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f14194e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f14195f.hashCode();
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4664h
    /* renamed from: j */
    public String mo22056j() {
        return this.f14190a;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4664h
    /* renamed from: k */
    public long mo22055k() {
        return this.f14194e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f14190a + ", code=" + this.f14191b + ", encodedPayload=" + this.f14192c + ", eventMillis=" + this.f14193d + ", uptimeMillis=" + this.f14194e + ", autoMetadata=" + this.f14195f + "}";
    }
}
