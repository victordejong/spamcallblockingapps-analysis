package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.k */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/k.class */
final class C8971k extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a {

    /* renamed from: a */
    private final AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b f39113a;

    /* renamed from: b */
    private final C9043w<AbstractC9004v.AbstractC9006b> f39114b;

    /* renamed from: c */
    private final Boolean f39115c;

    /* renamed from: d */
    private final int f39116d;

    /* renamed from: com.google.firebase.crashlytics.d.h.k$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/k$b.class */
    public static final class C8973b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a {

        /* renamed from: a */
        private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b f39117a;

        /* renamed from: b */
        private C9043w<AbstractC9004v.AbstractC9006b> f39118b;

        /* renamed from: c */
        private Boolean f39119c;

        /* renamed from: d */
        private Integer f39120d;

        public C8973b() {
        }

        private C8973b(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a abstractC9020a) {
            this.f39117a = abstractC9020a.mo2194d();
            this.f39118b = abstractC9020a.mo2195c();
            this.f39119c = abstractC9020a.mo2196b();
            this.f39120d = Integer.valueOf(abstractC9020a.mo2193e());
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a mo2191a() {
            String str = "";
            if (this.f39117a == null) {
                str = " execution";
            }
            String str2 = str;
            if (this.f39120d == null) {
                str2 = str + " uiOrientation";
            }
            if (str2.isEmpty()) {
                return new C8971k(this.f39117a, this.f39118b, this.f39119c, this.f39120d.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a mo2190b(Boolean bool) {
            this.f39119c = bool;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a mo2189c(C9043w<AbstractC9004v.AbstractC9006b> c9043w) {
            this.f39118b = c9043w;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a mo2188d(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b abstractC9022b) {
            Objects.requireNonNull(abstractC9022b, "Null execution");
            this.f39117a = abstractC9022b;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a mo2187e(int i) {
            this.f39120d = Integer.valueOf(i);
            return this;
        }
    }

    private C8971k(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b abstractC9022b, C9043w<AbstractC9004v.AbstractC9006b> c9043w, Boolean bool, int i) {
        this.f39113a = abstractC9022b;
        this.f39114b = c9043w;
        this.f39115c = bool;
        this.f39116d = i;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a
    /* renamed from: b */
    public Boolean mo2196b() {
        return this.f39115c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a
    /* renamed from: c */
    public C9043w<AbstractC9004v.AbstractC9006b> mo2195c() {
        return this.f39114b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a
    /* renamed from: d */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b mo2194d() {
        return this.f39113a;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a
    /* renamed from: e */
    public int mo2193e() {
        return this.f39116d;
    }

    public boolean equals(Object obj) {
        C9043w<AbstractC9004v.AbstractC9006b> c9043w;
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a abstractC9020a = (AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a) obj;
        if (!this.f39113a.equals(abstractC9020a.mo2194d()) || ((c9043w = this.f39114b) != null ? !c9043w.equals(abstractC9020a.mo2195c()) : abstractC9020a.mo2195c() != null) || ((bool = this.f39115c) != null ? !bool.equals(abstractC9020a.mo2196b()) : abstractC9020a.mo2196b() != null) || this.f39116d != abstractC9020a.mo2193e()) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a
    /* renamed from: f */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9021a mo2192f() {
        return new C8973b(this);
    }

    public int hashCode() {
        int hashCode = this.f39113a.hashCode();
        C9043w<AbstractC9004v.AbstractC9006b> c9043w = this.f39114b;
        int i = 0;
        int hashCode2 = c9043w == null ? 0 : c9043w.hashCode();
        Boolean bool = this.f39115c;
        if (bool != null) {
            i = bool.hashCode();
        }
        return ((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ this.f39116d;
    }

    public String toString() {
        return "Application{execution=" + this.f39113a + ", customAttributes=" + this.f39114b + ", background=" + this.f39115c + ", uiOrientation=" + this.f39116d + "}";
    }
}
