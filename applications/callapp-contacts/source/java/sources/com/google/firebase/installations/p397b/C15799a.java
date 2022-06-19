package com.google.firebase.installations.p397b;

import com.google.firebase.installations.p397b.AbstractC15806d;
/* renamed from: com.google.firebase.installations.b.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/a.class */
final class C15799a extends AbstractC15806d {

    /* renamed from: a */
    private final String f56203a;

    /* renamed from: b */
    private final String f56204b;

    /* renamed from: c */
    private final String f56205c;

    /* renamed from: d */
    private final AbstractC15810f f56206d;

    /* renamed from: e */
    private final AbstractC15806d.EnumC15808b f56207e;

    /* renamed from: com.google.firebase.installations.b.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/a$a.class */
    static final class C15801a extends AbstractC15806d.AbstractC15807a {

        /* renamed from: a */
        private String f56208a;

        /* renamed from: b */
        private String f56209b;

        /* renamed from: c */
        private String f56210c;

        /* renamed from: d */
        private AbstractC15810f f56211d;

        /* renamed from: e */
        private AbstractC15806d.EnumC15808b f56212e;

        public C15801a() {
        }

        private C15801a(AbstractC15806d abstractC15806d) {
            this.f56208a = abstractC15806d.mo8336a();
            this.f56209b = abstractC15806d.mo8335b();
            this.f56210c = abstractC15806d.mo8334c();
            this.f56211d = abstractC15806d.mo8333d();
            this.f56212e = abstractC15806d.mo8332e();
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15806d.AbstractC15807a
        /* renamed from: a */
        public final AbstractC15806d.AbstractC15807a mo8330a(AbstractC15806d.EnumC15808b enumC15808b) {
            this.f56212e = enumC15808b;
            return this;
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15806d.AbstractC15807a
        /* renamed from: a */
        public final AbstractC15806d.AbstractC15807a mo8329a(AbstractC15810f abstractC15810f) {
            this.f56211d = abstractC15810f;
            return this;
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15806d.AbstractC15807a
        /* renamed from: a */
        public final AbstractC15806d.AbstractC15807a mo8328a(String str) {
            this.f56208a = str;
            return this;
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15806d.AbstractC15807a
        /* renamed from: a */
        public final AbstractC15806d mo8331a() {
            return new C15799a(this.f56208a, this.f56209b, this.f56210c, this.f56211d, this.f56212e);
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15806d.AbstractC15807a
        /* renamed from: b */
        public final AbstractC15806d.AbstractC15807a mo8327b(String str) {
            this.f56209b = str;
            return this;
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15806d.AbstractC15807a
        /* renamed from: c */
        public final AbstractC15806d.AbstractC15807a mo8326c(String str) {
            this.f56210c = str;
            return this;
        }
    }

    private C15799a(String str, String str2, String str3, AbstractC15810f abstractC15810f, AbstractC15806d.EnumC15808b enumC15808b) {
        this.f56203a = str;
        this.f56204b = str2;
        this.f56205c = str3;
        this.f56206d = abstractC15810f;
        this.f56207e = enumC15808b;
    }

    @Override // com.google.firebase.installations.p397b.AbstractC15806d
    /* renamed from: a */
    public final String mo8336a() {
        return this.f56203a;
    }

    @Override // com.google.firebase.installations.p397b.AbstractC15806d
    /* renamed from: b */
    public final String mo8335b() {
        return this.f56204b;
    }

    @Override // com.google.firebase.installations.p397b.AbstractC15806d
    /* renamed from: c */
    public final String mo8334c() {
        return this.f56205c;
    }

    @Override // com.google.firebase.installations.p397b.AbstractC15806d
    /* renamed from: d */
    public final AbstractC15810f mo8333d() {
        return this.f56206d;
    }

    @Override // com.google.firebase.installations.p397b.AbstractC15806d
    /* renamed from: e */
    public final AbstractC15806d.EnumC15808b mo8332e() {
        return this.f56207e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC15806d)) {
            return false;
        }
        AbstractC15806d abstractC15806d = (AbstractC15806d) obj;
        String str = this.f56203a;
        if (str == null) {
            if (abstractC15806d.mo8336a() != null) {
                return false;
            }
        } else if (!str.equals(abstractC15806d.mo8336a())) {
            return false;
        }
        String str2 = this.f56204b;
        if (str2 == null) {
            if (abstractC15806d.mo8335b() != null) {
                return false;
            }
        } else if (!str2.equals(abstractC15806d.mo8335b())) {
            return false;
        }
        String str3 = this.f56205c;
        if (str3 == null) {
            if (abstractC15806d.mo8334c() != null) {
                return false;
            }
        } else if (!str3.equals(abstractC15806d.mo8334c())) {
            return false;
        }
        AbstractC15810f abstractC15810f = this.f56206d;
        if (abstractC15810f == null) {
            if (abstractC15806d.mo8333d() != null) {
                return false;
            }
        } else if (!abstractC15810f.equals(abstractC15806d.mo8333d())) {
            return false;
        }
        AbstractC15806d.EnumC15808b enumC15808b = this.f56207e;
        return enumC15808b == null ? abstractC15806d.mo8332e() == null : enumC15808b.equals(abstractC15806d.mo8332e());
    }

    public final int hashCode() {
        String str = this.f56203a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f56204b;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f56205c;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        AbstractC15810f abstractC15810f = this.f56206d;
        int hashCode4 = abstractC15810f == null ? 0 : abstractC15810f.hashCode();
        AbstractC15806d.EnumC15808b enumC15808b = this.f56207e;
        if (enumC15808b != null) {
            i = enumC15808b.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i;
    }

    public final String toString() {
        return "InstallationResponse{uri=" + this.f56203a + ", fid=" + this.f56204b + ", refreshToken=" + this.f56205c + ", authToken=" + this.f56206d + ", responseCode=" + this.f56207e + "}";
    }
}
