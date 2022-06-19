package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.o */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/o.class */
final class C8983o extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d {

    /* renamed from: a */
    private final String f39147a;

    /* renamed from: b */
    private final String f39148b;

    /* renamed from: c */
    private final long f39149c;

    /* renamed from: com.google.firebase.crashlytics.d.h.o$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/o$b.class */
    public static final class C8985b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a {

        /* renamed from: a */
        private String f39150a;

        /* renamed from: b */
        private String f39151b;

        /* renamed from: c */
        private Long f39152c;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d mo2148a() {
            String str = "";
            if (this.f39150a == null) {
                str = " name";
            }
            String str2 = str;
            if (this.f39151b == null) {
                str2 = str + " code";
            }
            String str3 = str2;
            if (this.f39152c == null) {
                str3 = str2 + " address";
            }
            if (str3.isEmpty()) {
                return new C8983o(this.f39150a, this.f39151b, this.f39152c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a mo2147b(long j) {
            this.f39152c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a mo2146c(String str) {
            Objects.requireNonNull(str, "Null code");
            this.f39151b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d.AbstractC9029a mo2145d(String str) {
            Objects.requireNonNull(str, "Null name");
            this.f39150a = str;
            return this;
        }
    }

    private C8983o(String str, String str2, long j) {
        this.f39147a = str;
        this.f39148b = str2;
        this.f39149c = j;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d
    /* renamed from: b */
    public long mo2151b() {
        return this.f39149c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d
    /* renamed from: c */
    public String mo2150c() {
        return this.f39148b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d
    /* renamed from: d */
    public String mo2149d() {
        return this.f39147a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d abstractC9028d = (AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d) obj;
        if (!this.f39147a.equals(abstractC9028d.mo2149d()) || !this.f39148b.equals(abstractC9028d.mo2150c()) || this.f39149c != abstractC9028d.mo2151b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f39147a.hashCode();
        int hashCode2 = this.f39148b.hashCode();
        long j = this.f39149c;
        return ((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f39147a + ", code=" + this.f39148b + ", address=" + this.f39149c + "}";
    }
}
