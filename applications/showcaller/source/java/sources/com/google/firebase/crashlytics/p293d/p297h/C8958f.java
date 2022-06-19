package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/f.class */
final class C8958f extends AbstractC9004v.AbstractC9012d {

    /* renamed from: a */
    private final String f39048a;

    /* renamed from: b */
    private final String f39049b;

    /* renamed from: c */
    private final long f39050c;

    /* renamed from: d */
    private final Long f39051d;

    /* renamed from: e */
    private final boolean f39052e;

    /* renamed from: f */
    private final AbstractC9004v.AbstractC9012d.AbstractC9013a f39053f;

    /* renamed from: g */
    private final AbstractC9004v.AbstractC9012d.AbstractC9041f f39054g;

    /* renamed from: h */
    private final AbstractC9004v.AbstractC9012d.AbstractC9039e f39055h;

    /* renamed from: i */
    private final AbstractC9004v.AbstractC9012d.AbstractC9017c f39056i;

    /* renamed from: j */
    private final C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d> f39057j;

    /* renamed from: k */
    private final int f39058k;

    /* renamed from: com.google.firebase.crashlytics.d.h.f$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/f$b.class */
    public static final class C8960b extends AbstractC9004v.AbstractC9012d.AbstractC9016b {

        /* renamed from: a */
        private String f39059a;

        /* renamed from: b */
        private String f39060b;

        /* renamed from: c */
        private Long f39061c;

        /* renamed from: d */
        private Long f39062d;

        /* renamed from: e */
        private Boolean f39063e;

        /* renamed from: f */
        private AbstractC9004v.AbstractC9012d.AbstractC9013a f39064f;

        /* renamed from: g */
        private AbstractC9004v.AbstractC9012d.AbstractC9041f f39065g;

        /* renamed from: h */
        private AbstractC9004v.AbstractC9012d.AbstractC9039e f39066h;

        /* renamed from: i */
        private AbstractC9004v.AbstractC9012d.AbstractC9017c f39067i;

        /* renamed from: j */
        private C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d> f39068j;

        /* renamed from: k */
        private Integer f39069k;

        public C8960b() {
        }

        private C8960b(AbstractC9004v.AbstractC9012d abstractC9012d) {
            this.f39059a = abstractC9012d.mo2264f();
            this.f39060b = abstractC9012d.mo2262h();
            this.f39061c = Long.valueOf(abstractC9012d.mo2259k());
            this.f39062d = abstractC9012d.mo2266d();
            this.f39063e = Boolean.valueOf(abstractC9012d.mo2257m());
            this.f39064f = abstractC9012d.mo2268b();
            this.f39065g = abstractC9012d.mo2258l();
            this.f39066h = abstractC9012d.mo2260j();
            this.f39067i = abstractC9012d.mo2267c();
            this.f39068j = abstractC9012d.mo2265e();
            this.f39069k = Integer.valueOf(abstractC9012d.mo2263g());
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d mo2237a() {
            String str = "";
            if (this.f39059a == null) {
                str = " generator";
            }
            String str2 = str;
            if (this.f39060b == null) {
                str2 = str + " identifier";
            }
            String str3 = str2;
            if (this.f39061c == null) {
                str3 = str2 + " startedAt";
            }
            String str4 = str3;
            if (this.f39063e == null) {
                str4 = str3 + " crashed";
            }
            String str5 = str4;
            if (this.f39064f == null) {
                str5 = str4 + " app";
            }
            String str6 = str5;
            if (this.f39069k == null) {
                str6 = str5 + " generatorType";
            }
            if (str6.isEmpty()) {
                return new C8958f(this.f39059a, this.f39060b, this.f39061c.longValue(), this.f39062d, this.f39063e.booleanValue(), this.f39064f, this.f39065g, this.f39066h, this.f39067i, this.f39068j, this.f39069k.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str6);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2236b(AbstractC9004v.AbstractC9012d.AbstractC9013a abstractC9013a) {
            Objects.requireNonNull(abstractC9013a, "Null app");
            this.f39064f = abstractC9013a;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2235c(boolean z) {
            this.f39063e = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2234d(AbstractC9004v.AbstractC9012d.AbstractC9017c abstractC9017c) {
            this.f39067i = abstractC9017c;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2233e(Long l) {
            this.f39062d = l;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: f */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2232f(C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d> c9043w) {
            this.f39068j = c9043w;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: g */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2231g(String str) {
            Objects.requireNonNull(str, "Null generator");
            this.f39059a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: h */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2230h(int i) {
            this.f39069k = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: i */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2229i(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.f39060b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: k */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2227k(AbstractC9004v.AbstractC9012d.AbstractC9039e abstractC9039e) {
            this.f39066h = abstractC9039e;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: l */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2226l(long j) {
            this.f39061c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9016b
        /* renamed from: m */
        public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2225m(AbstractC9004v.AbstractC9012d.AbstractC9041f abstractC9041f) {
            this.f39065g = abstractC9041f;
            return this;
        }
    }

    private C8958f(String str, String str2, long j, Long l, boolean z, AbstractC9004v.AbstractC9012d.AbstractC9013a abstractC9013a, AbstractC9004v.AbstractC9012d.AbstractC9041f abstractC9041f, AbstractC9004v.AbstractC9012d.AbstractC9039e abstractC9039e, AbstractC9004v.AbstractC9012d.AbstractC9017c abstractC9017c, C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d> c9043w, int i) {
        this.f39048a = str;
        this.f39049b = str2;
        this.f39050c = j;
        this.f39051d = l;
        this.f39052e = z;
        this.f39053f = abstractC9013a;
        this.f39054g = abstractC9041f;
        this.f39055h = abstractC9039e;
        this.f39056i = abstractC9017c;
        this.f39057j = c9043w;
        this.f39058k = i;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: b */
    public AbstractC9004v.AbstractC9012d.AbstractC9013a mo2268b() {
        return this.f39053f;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: c */
    public AbstractC9004v.AbstractC9012d.AbstractC9017c mo2267c() {
        return this.f39056i;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: d */
    public Long mo2266d() {
        return this.f39051d;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: e */
    public C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d> mo2265e() {
        return this.f39057j;
    }

    public boolean equals(Object obj) {
        Long l;
        AbstractC9004v.AbstractC9012d.AbstractC9041f abstractC9041f;
        AbstractC9004v.AbstractC9012d.AbstractC9039e abstractC9039e;
        AbstractC9004v.AbstractC9012d.AbstractC9017c abstractC9017c;
        C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d> c9043w;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d abstractC9012d = (AbstractC9004v.AbstractC9012d) obj;
        if (!this.f39048a.equals(abstractC9012d.mo2264f()) || !this.f39049b.equals(abstractC9012d.mo2262h()) || this.f39050c != abstractC9012d.mo2259k() || ((l = this.f39051d) != null ? !l.equals(abstractC9012d.mo2266d()) : abstractC9012d.mo2266d() != null) || this.f39052e != abstractC9012d.mo2257m() || !this.f39053f.equals(abstractC9012d.mo2268b()) || ((abstractC9041f = this.f39054g) != null ? !abstractC9041f.equals(abstractC9012d.mo2258l()) : abstractC9012d.mo2258l() != null) || ((abstractC9039e = this.f39055h) != null ? !abstractC9039e.equals(abstractC9012d.mo2260j()) : abstractC9012d.mo2260j() != null) || ((abstractC9017c = this.f39056i) != null ? !abstractC9017c.equals(abstractC9012d.mo2267c()) : abstractC9012d.mo2267c() != null) || ((c9043w = this.f39057j) != null ? !c9043w.equals(abstractC9012d.mo2265e()) : abstractC9012d.mo2265e() != null) || this.f39058k != abstractC9012d.mo2263g()) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: f */
    public String mo2264f() {
        return this.f39048a;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: g */
    public int mo2263g() {
        return this.f39058k;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: h */
    public String mo2262h() {
        return this.f39049b;
    }

    public int hashCode() {
        int hashCode = this.f39048a.hashCode();
        int hashCode2 = this.f39049b.hashCode();
        long j = this.f39050c;
        int i = (int) (j ^ (j >>> 32));
        Long l = this.f39051d;
        int i2 = 0;
        int hashCode3 = l == null ? 0 : l.hashCode();
        int i3 = this.f39052e ? 1231 : 1237;
        int hashCode4 = this.f39053f.hashCode();
        AbstractC9004v.AbstractC9012d.AbstractC9041f abstractC9041f = this.f39054g;
        int hashCode5 = abstractC9041f == null ? 0 : abstractC9041f.hashCode();
        AbstractC9004v.AbstractC9012d.AbstractC9039e abstractC9039e = this.f39055h;
        int hashCode6 = abstractC9039e == null ? 0 : abstractC9039e.hashCode();
        AbstractC9004v.AbstractC9012d.AbstractC9017c abstractC9017c = this.f39056i;
        int hashCode7 = abstractC9017c == null ? 0 : abstractC9017c.hashCode();
        C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d> c9043w = this.f39057j;
        if (c9043w != null) {
            i2 = c9043w.hashCode();
        }
        return ((((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ hashCode3) * 1000003) ^ i3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ hashCode7) * 1000003) ^ i2) * 1000003) ^ this.f39058k;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: j */
    public AbstractC9004v.AbstractC9012d.AbstractC9039e mo2260j() {
        return this.f39055h;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: k */
    public long mo2259k() {
        return this.f39050c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: l */
    public AbstractC9004v.AbstractC9012d.AbstractC9041f mo2258l() {
        return this.f39054g;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: m */
    public boolean mo2257m() {
        return this.f39052e;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d
    /* renamed from: n */
    public AbstractC9004v.AbstractC9012d.AbstractC9016b mo2256n() {
        return new C8960b(this);
    }

    public String toString() {
        return "Session{generator=" + this.f39048a + ", identifier=" + this.f39049b + ", startedAt=" + this.f39050c + ", endedAt=" + this.f39051d + ", crashed=" + this.f39052e + ", app=" + this.f39053f + ", user=" + this.f39054g + ", os=" + this.f39055h + ", device=" + this.f39056i + ", events=" + this.f39057j + ", generatorType=" + this.f39058k + "}";
    }
}
