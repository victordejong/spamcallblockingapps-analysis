package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.l */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/l.class */
final class C8974l extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b {

    /* renamed from: a */
    private final C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e> f39121a;

    /* renamed from: b */
    private final AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c f39122b;

    /* renamed from: c */
    private final AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d f39123c;

    /* renamed from: d */
    private final C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a> f39124d;

    /* renamed from: com.google.firebase.crashlytics.d.h.l$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/l$b.class */
    public static final class C8976b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b {

        /* renamed from: a */
        private C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e> f39125a;

        /* renamed from: b */
        private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c f39126b;

        /* renamed from: c */
        private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d f39127c;

        /* renamed from: d */
        private C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a> f39128d;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b mo2169a() {
            String str = "";
            if (this.f39125a == null) {
                str = " threads";
            }
            String str2 = str;
            if (this.f39126b == null) {
                str2 = str + " exception";
            }
            String str3 = str2;
            if (this.f39127c == null) {
                str3 = str2 + " signal";
            }
            String str4 = str3;
            if (this.f39128d == null) {
                str4 = str3 + " binaries";
            }
            if (str4.isEmpty()) {
                return new C8974l(this.f39125a, this.f39126b, this.f39127c, this.f39128d);
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b mo2168b(C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a> c9043w) {
            Objects.requireNonNull(c9043w, "Null binaries");
            this.f39128d = c9043w;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b mo2167c(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c abstractC9026c) {
            Objects.requireNonNull(abstractC9026c, "Null exception");
            this.f39126b = abstractC9026c;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b mo2166d(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d abstractC9028d) {
            Objects.requireNonNull(abstractC9028d, "Null signal");
            this.f39127c = abstractC9028d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9025b mo2165e(C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e> c9043w) {
            Objects.requireNonNull(c9043w, "Null threads");
            this.f39125a = c9043w;
            return this;
        }
    }

    private C8974l(C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e> c9043w, AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c abstractC9026c, AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d abstractC9028d, C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a> c9043w2) {
        this.f39121a = c9043w;
        this.f39122b = abstractC9026c;
        this.f39123c = abstractC9028d;
        this.f39124d = c9043w2;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b
    /* renamed from: b */
    public C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a> mo2185b() {
        return this.f39124d;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b
    /* renamed from: c */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c mo2184c() {
        return this.f39122b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b
    /* renamed from: d */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9028d mo2183d() {
        return this.f39123c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b
    /* renamed from: e */
    public C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e> mo2182e() {
        return this.f39121a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b abstractC9022b = (AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b) obj;
        if (!this.f39121a.equals(abstractC9022b.mo2182e()) || !this.f39122b.equals(abstractC9022b.mo2184c()) || !this.f39123c.equals(abstractC9022b.mo2183d()) || !this.f39124d.equals(abstractC9022b.mo2185b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f39121a.hashCode() ^ 1000003) * 1000003) ^ this.f39122b.hashCode()) * 1000003) ^ this.f39123c.hashCode()) * 1000003) ^ this.f39124d.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f39121a + ", exception=" + this.f39122b + ", signal=" + this.f39123c + ", binaries=" + this.f39124d + "}";
    }
}
