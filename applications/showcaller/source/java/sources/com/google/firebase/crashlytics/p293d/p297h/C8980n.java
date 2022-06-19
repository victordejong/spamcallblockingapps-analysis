package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.n */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/n.class */
final class C8980n extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c {

    /* renamed from: a */
    private final String f39137a;

    /* renamed from: b */
    private final String f39138b;

    /* renamed from: c */
    private final C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> f39139c;

    /* renamed from: d */
    private final AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c f39140d;

    /* renamed from: e */
    private final int f39141e;

    /* renamed from: com.google.firebase.crashlytics.d.h.n$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/n$b.class */
    public static final class C8982b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a {

        /* renamed from: a */
        private String f39142a;

        /* renamed from: b */
        private String f39143b;

        /* renamed from: c */
        private C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> f39144c;

        /* renamed from: d */
        private AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c f39145d;

        /* renamed from: e */
        private Integer f39146e;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c mo2158a() {
            String str = "";
            if (this.f39142a == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f39144c == null) {
                str2 = str + " frames";
            }
            String str3 = str2;
            if (this.f39146e == null) {
                str3 = str2 + " overflowCount";
            }
            if (str3.isEmpty()) {
                return new C8980n(this.f39142a, this.f39143b, this.f39144c, this.f39145d, this.f39146e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a mo2157b(AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c abstractC9026c) {
            this.f39145d = abstractC9026c;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a mo2156c(C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> c9043w) {
            Objects.requireNonNull(c9043w, "Null frames");
            this.f39144c = c9043w;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a mo2155d(int i) {
            this.f39146e = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a mo2154e(String str) {
            this.f39143b = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a
        /* renamed from: f */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c.AbstractC9027a mo2153f(String str) {
            Objects.requireNonNull(str, "Null type");
            this.f39142a = str;
            return this;
        }
    }

    private C8980n(String str, String str2, C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> c9043w, AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c abstractC9026c, int i) {
        this.f39137a = str;
        this.f39138b = str2;
        this.f39139c = c9043w;
        this.f39140d = abstractC9026c;
        this.f39141e = i;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c
    /* renamed from: b */
    public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c mo2163b() {
        return this.f39140d;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c
    /* renamed from: c */
    public C9043w<AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9030e.AbstractC9032b> mo2162c() {
        return this.f39139c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c
    /* renamed from: d */
    public int mo2161d() {
        return this.f39141e;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c
    /* renamed from: e */
    public String mo2160e() {
        return this.f39138b;
    }

    public boolean equals(Object obj) {
        String str;
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c abstractC9026c;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c abstractC9026c2 = (AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c) obj;
        if (!this.f39137a.equals(abstractC9026c2.mo2159f()) || ((str = this.f39138b) != null ? !str.equals(abstractC9026c2.mo2160e()) : abstractC9026c2.mo2160e() != null) || !this.f39139c.equals(abstractC9026c2.mo2162c()) || ((abstractC9026c = this.f39140d) != null ? !abstractC9026c.equals(abstractC9026c2.mo2163b()) : abstractC9026c2.mo2163b() != null) || this.f39141e != abstractC9026c2.mo2161d()) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c
    /* renamed from: f */
    public String mo2159f() {
        return this.f39137a;
    }

    public int hashCode() {
        int hashCode = this.f39137a.hashCode();
        String str = this.f39138b;
        int i = 0;
        int hashCode2 = str == null ? 0 : str.hashCode();
        int hashCode3 = this.f39139c.hashCode();
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9026c abstractC9026c = this.f39140d;
        if (abstractC9026c != null) {
            i = abstractC9026c.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ this.f39141e;
    }

    public String toString() {
        return "Exception{type=" + this.f39137a + ", reason=" + this.f39138b + ", frames=" + this.f39139c + ", causedBy=" + this.f39140d + ", overflowCount=" + this.f39141e + "}";
    }
}
