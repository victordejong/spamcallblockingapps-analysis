package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.p */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/p.class */
final class C8986p extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e {

    /* renamed from: a */
    private final String f39153a;

    /* renamed from: b */
    private final int f39154b;

    /* renamed from: c */
    private final C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> f39155c;

    /* renamed from: com.google.firebase.crashlytics.d.h.p$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/p$b.class */
    public static final class C8988b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a {

        /* renamed from: a */
        private String f39156a;

        /* renamed from: b */
        private Integer f39157b;

        /* renamed from: c */
        private C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> f39158c;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e mo2140a() {
            String str = "";
            if (this.f39156a == null) {
                str = " name";
            }
            String str2 = str;
            if (this.f39157b == null) {
                str2 = str + " importance";
            }
            String str3 = str2;
            if (this.f39158c == null) {
                str3 = str2 + " frames";
            }
            if (str3.isEmpty()) {
                return new C8986p(this.f39156a, this.f39157b.intValue(), this.f39158c);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a mo2139b(C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> c9043w) {
            Objects.requireNonNull(c9043w, "Null frames");
            this.f39158c = c9043w;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a mo2138c(int i) {
            this.f39157b = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9031a mo2137d(String str) {
            Objects.requireNonNull(str, "Null name");
            this.f39156a = str;
            return this;
        }
    }

    private C8986p(String str, int i, C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> c9043w) {
        this.f39153a = str;
        this.f39154b = i;
        this.f39155c = c9043w;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e
    /* renamed from: b */
    public C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> mo2143b() {
        return this.f39155c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e
    /* renamed from: c */
    public int mo2142c() {
        return this.f39154b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e
    /* renamed from: d */
    public String mo2141d() {
        return this.f39153a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e abstractC9030e = (AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e) obj;
        if (!this.f39153a.equals(abstractC9030e.mo2141d()) || this.f39154b != abstractC9030e.mo2142c() || !this.f39155c.equals(abstractC9030e.mo2143b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f39153a.hashCode() ^ 1000003) * 1000003) ^ this.f39154b) * 1000003) ^ this.f39155c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f39153a + ", importance=" + this.f39154b + ", frames=" + this.f39155c + "}";
    }
}
