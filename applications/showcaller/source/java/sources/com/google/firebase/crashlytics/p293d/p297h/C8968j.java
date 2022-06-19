package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.j */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/j.class */
final class C8968j extends AbstractC9004v.AbstractC9012d.AbstractC9019d {

    /* renamed from: a */
    private final long f39103a;

    /* renamed from: b */
    private final String f39104b;

    /* renamed from: c */
    private final AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a f39105c;

    /* renamed from: d */
    private final AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c f39106d;

    /* renamed from: e */
    private final AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d f39107e;

    /* renamed from: com.google.firebase.crashlytics.d.h.j$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/j$b.class */
    public static final class C8970b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b {

        /* renamed from: a */
        private Long f39108a;

        /* renamed from: b */
        private String f39109b;

        /* renamed from: c */
        private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a f39110c;

        /* renamed from: d */
        private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c f39111d;

        /* renamed from: e */
        private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d f39112e;

        public C8970b() {
        }

        private C8970b(AbstractC9004v.AbstractC9012d.AbstractC9019d abstractC9019d) {
            this.f39108a = Long.valueOf(abstractC9019d.mo2200e());
            this.f39109b = abstractC9019d.mo2199f();
            this.f39110c = abstractC9019d.mo2203b();
            this.f39111d = abstractC9019d.mo2202c();
            this.f39112e = abstractC9019d.mo2201d();
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d mo2124a() {
            String str = "";
            if (this.f39108a == null) {
                str = " timestamp";
            }
            String str2 = str;
            if (this.f39109b == null) {
                str2 = str + " type";
            }
            String str3 = str2;
            if (this.f39110c == null) {
                str3 = str2 + " app";
            }
            String str4 = str3;
            if (this.f39111d == null) {
                str4 = str3 + " device";
            }
            if (str4.isEmpty()) {
                return new C8968j(this.f39108a.longValue(), this.f39109b, this.f39110c, this.f39111d, this.f39112e);
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b mo2123b(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a abstractC9020a) {
            Objects.requireNonNull(abstractC9020a, "Null app");
            this.f39110c = abstractC9020a;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b mo2122c(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c abstractC9035c) {
            Objects.requireNonNull(abstractC9035c, "Null device");
            this.f39111d = abstractC9035c;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b mo2121d(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d abstractC9037d) {
            this.f39112e = abstractC9037d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b mo2120e(long j) {
            this.f39108a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b
        /* renamed from: f */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b mo2119f(String str) {
            Objects.requireNonNull(str, "Null type");
            this.f39109b = str;
            return this;
        }
    }

    private C8968j(long j, String str, AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a abstractC9020a, AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c abstractC9035c, AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d abstractC9037d) {
        this.f39103a = j;
        this.f39104b = str;
        this.f39105c = abstractC9020a;
        this.f39106d = abstractC9035c;
        this.f39107e = abstractC9037d;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d
    /* renamed from: b */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a mo2203b() {
        return this.f39105c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d
    /* renamed from: c */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c mo2202c() {
        return this.f39106d;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d
    /* renamed from: d */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d mo2201d() {
        return this.f39107e;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d
    /* renamed from: e */
    public long mo2200e() {
        return this.f39103a;
    }

    public boolean equals(Object obj) {
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d abstractC9037d;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d abstractC9019d = (AbstractC9004v.AbstractC9012d.AbstractC9019d) obj;
        if (this.f39103a != abstractC9019d.mo2200e() || !this.f39104b.equals(abstractC9019d.mo2199f()) || !this.f39105c.equals(abstractC9019d.mo2203b()) || !this.f39106d.equals(abstractC9019d.mo2202c()) || ((abstractC9037d = this.f39107e) != null ? !abstractC9037d.equals(abstractC9019d.mo2201d()) : abstractC9019d.mo2201d() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d
    /* renamed from: f */
    public String mo2199f() {
        return this.f39104b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d
    /* renamed from: g */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9034b mo2198g() {
        return new C8970b(this);
    }

    public int hashCode() {
        long j = this.f39103a;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.f39104b.hashCode();
        int hashCode2 = this.f39105c.hashCode();
        int hashCode3 = this.f39106d.hashCode();
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d abstractC9037d = this.f39107e;
        return (abstractC9037d == null ? 0 : abstractC9037d.hashCode()) ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003);
    }

    public String toString() {
        return "Event{timestamp=" + this.f39103a + ", type=" + this.f39104b + ", app=" + this.f39105c + ", device=" + this.f39106d + ", log=" + this.f39107e + "}";
    }
}
