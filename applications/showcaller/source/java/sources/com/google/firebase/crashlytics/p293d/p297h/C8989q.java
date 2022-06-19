package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.q */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/q.class */
final class C8989q extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b {

    /* renamed from: a */
    private final long f39159a;

    /* renamed from: b */
    private final String f39160b;

    /* renamed from: c */
    private final String f39161c;

    /* renamed from: d */
    private final long f39162d;

    /* renamed from: e */
    private final int f39163e;

    /* renamed from: com.google.firebase.crashlytics.d.h.q$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/q$b.class */
    public static final class C8991b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a {

        /* renamed from: a */
        private Long f39164a;

        /* renamed from: b */
        private String f39165b;

        /* renamed from: c */
        private String f39166c;

        /* renamed from: d */
        private Long f39167d;

        /* renamed from: e */
        private Integer f39168e;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b mo2130a() {
            String str = "";
            if (this.f39164a == null) {
                str = " pc";
            }
            String str2 = str;
            if (this.f39165b == null) {
                str2 = str + " symbol";
            }
            String str3 = str2;
            if (this.f39167d == null) {
                str3 = str2 + " offset";
            }
            String str4 = str3;
            if (this.f39168e == null) {
                str4 = str3 + " importance";
            }
            if (str4.isEmpty()) {
                return new C8989q(this.f39164a.longValue(), this.f39165b, this.f39166c, this.f39167d.longValue(), this.f39168e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a mo2129b(String str) {
            this.f39166c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a mo2128c(int i) {
            this.f39168e = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a mo2127d(long j) {
            this.f39167d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a mo2126e(long j) {
            this.f39164a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a
        /* renamed from: f */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b.AbstractC9033a mo2125f(String str) {
            Objects.requireNonNull(str, "Null symbol");
            this.f39165b = str;
            return this;
        }
    }

    private C8989q(long j, String str, String str2, long j2, int i) {
        this.f39159a = j;
        this.f39160b = str;
        this.f39161c = str2;
        this.f39162d = j2;
        this.f39163e = i;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b
    /* renamed from: b */
    public String mo2135b() {
        return this.f39161c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b
    /* renamed from: c */
    public int mo2134c() {
        return this.f39163e;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b
    /* renamed from: d */
    public long mo2133d() {
        return this.f39162d;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b
    /* renamed from: e */
    public long mo2132e() {
        return this.f39159a;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b abstractC9032b = (AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b) obj;
        if (this.f39159a != abstractC9032b.mo2132e() || !this.f39160b.equals(abstractC9032b.mo2131f()) || ((str = this.f39161c) != null ? !str.equals(abstractC9032b.mo2135b()) : abstractC9032b.mo2135b() != null) || this.f39162d != abstractC9032b.mo2133d() || this.f39163e != abstractC9032b.mo2134c()) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b
    /* renamed from: f */
    public String mo2131f() {
        return this.f39160b;
    }

    public int hashCode() {
        long j = this.f39159a;
        int i = (int) (j ^ (j >>> 32));
        int hashCode = this.f39160b.hashCode();
        String str = this.f39161c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j2 = this.f39162d;
        return this.f39163e ^ ((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "Frame{pc=" + this.f39159a + ", symbol=" + this.f39160b + ", file=" + this.f39161c + ", offset=" + this.f39162d + ", importance=" + this.f39163e + "}";
    }
}
