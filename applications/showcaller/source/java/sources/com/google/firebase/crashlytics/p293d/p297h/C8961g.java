package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/g.class */
final class C8961g extends AbstractC9004v.AbstractC9012d.AbstractC9013a {

    /* renamed from: a */
    private final String f39070a;

    /* renamed from: b */
    private final String f39071b;

    /* renamed from: c */
    private final String f39072c;

    /* renamed from: d */
    private final AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b f39073d;

    /* renamed from: e */
    private final String f39074e;

    /* renamed from: f */
    private final String f39075f;

    /* renamed from: g */
    private final String f39076g;

    /* renamed from: com.google.firebase.crashlytics.d.h.g$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/g$b.class */
    public static final class C8963b extends AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a {

        /* renamed from: a */
        private String f39077a;

        /* renamed from: b */
        private String f39078b;

        /* renamed from: c */
        private String f39079c;

        /* renamed from: d */
        private AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b f39080d;

        /* renamed from: e */
        private String f39081e;

        /* renamed from: f */
        private String f39082f;

        /* renamed from: g */
        private String f39083g;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9013a mo2245a() {
            String str = "";
            if (this.f39077a == null) {
                str = " identifier";
            }
            String str2 = str;
            if (this.f39078b == null) {
                str2 = str + " version";
            }
            if (str2.isEmpty()) {
                return new C8961g(this.f39077a, this.f39078b, this.f39079c, this.f39080d, this.f39081e, this.f39082f, this.f39083g);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a mo2244b(String str) {
            this.f39082f = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a mo2243c(String str) {
            this.f39083g = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a mo2242d(String str) {
            this.f39079c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a mo2241e(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.f39077a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a
        /* renamed from: f */
        public AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a mo2240f(String str) {
            this.f39081e = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a
        /* renamed from: g */
        public AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9014a mo2239g(String str) {
            Objects.requireNonNull(str, "Null version");
            this.f39078b = str;
            return this;
        }
    }

    private C8961g(String str, String str2, String str3, AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b abstractC9015b, String str4, String str5, String str6) {
        this.f39070a = str;
        this.f39071b = str2;
        this.f39072c = str3;
        this.f39073d = abstractC9015b;
        this.f39074e = str4;
        this.f39075f = str5;
        this.f39076g = str6;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a
    /* renamed from: b */
    public String mo2252b() {
        return this.f39075f;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a
    /* renamed from: c */
    public String mo2251c() {
        return this.f39076g;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a
    /* renamed from: d */
    public String mo2250d() {
        return this.f39072c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a
    /* renamed from: e */
    public String mo2249e() {
        return this.f39070a;
    }

    public boolean equals(Object obj) {
        String str;
        AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b abstractC9015b;
        String str2;
        String str3;
        String str4;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9013a)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9013a abstractC9013a = (AbstractC9004v.AbstractC9012d.AbstractC9013a) obj;
        if (!this.f39070a.equals(abstractC9013a.mo2249e()) || !this.f39071b.equals(abstractC9013a.mo2246h()) || ((str = this.f39072c) != null ? !str.equals(abstractC9013a.mo2250d()) : abstractC9013a.mo2250d() != null) || ((abstractC9015b = this.f39073d) != null ? !abstractC9015b.equals(abstractC9013a.mo2247g()) : abstractC9013a.mo2247g() != null) || ((str2 = this.f39074e) != null ? !str2.equals(abstractC9013a.mo2248f()) : abstractC9013a.mo2248f() != null) || ((str3 = this.f39075f) != null ? !str3.equals(abstractC9013a.mo2252b()) : abstractC9013a.mo2252b() != null) || ((str4 = this.f39076g) != null ? !str4.equals(abstractC9013a.mo2251c()) : abstractC9013a.mo2251c() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a
    /* renamed from: f */
    public String mo2248f() {
        return this.f39074e;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a
    /* renamed from: g */
    public AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b mo2247g() {
        return this.f39073d;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a
    /* renamed from: h */
    public String mo2246h() {
        return this.f39071b;
    }

    public int hashCode() {
        int hashCode = this.f39070a.hashCode();
        int hashCode2 = this.f39071b.hashCode();
        String str = this.f39072c;
        int i = 0;
        int hashCode3 = str == null ? 0 : str.hashCode();
        AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b abstractC9015b = this.f39073d;
        int hashCode4 = abstractC9015b == null ? 0 : abstractC9015b.hashCode();
        String str2 = this.f39074e;
        int hashCode5 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f39075f;
        int hashCode6 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f39076g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i;
    }

    public String toString() {
        return "Application{identifier=" + this.f39070a + ", version=" + this.f39071b + ", displayVersion=" + this.f39072c + ", organization=" + this.f39073d + ", installationUuid=" + this.f39074e + ", developmentPlatform=" + this.f39075f + ", developmentPlatformVersion=" + this.f39076g + "}";
    }
}
