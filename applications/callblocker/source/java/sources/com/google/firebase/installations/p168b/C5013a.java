package com.google.firebase.installations.p168b;

import com.google.firebase.installations.p168b.AbstractC5020d;
/* renamed from: com.google.firebase.installations.b.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b/a.class */
final class C5013a extends AbstractC5020d {

    /* renamed from: a */
    private final String f21238a;

    /* renamed from: b */
    private final String f21239b;

    /* renamed from: c */
    private final String f21240c;

    /* renamed from: d */
    private final AbstractC5023e f21241d;

    /* renamed from: e */
    private final AbstractC5020d.EnumC5022b f21242e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b/a$a.class */
    public static final class C5015a extends AbstractC5020d.AbstractC5021a {

        /* renamed from: a */
        private String f21243a;

        /* renamed from: b */
        private String f21244b;

        /* renamed from: c */
        private String f21245c;

        /* renamed from: d */
        private AbstractC5023e f21246d;

        /* renamed from: e */
        private AbstractC5020d.EnumC5022b f21247e;

        @Override // com.google.firebase.installations.p168b.AbstractC5020d.AbstractC5021a
        /* renamed from: a */
        public AbstractC5020d.AbstractC5021a mo1820a(AbstractC5020d.EnumC5022b enumC5022b) {
            this.f21247e = enumC5022b;
            return this;
        }

        @Override // com.google.firebase.installations.p168b.AbstractC5020d.AbstractC5021a
        /* renamed from: a */
        public AbstractC5020d.AbstractC5021a mo1819a(AbstractC5023e abstractC5023e) {
            this.f21246d = abstractC5023e;
            return this;
        }

        @Override // com.google.firebase.installations.p168b.AbstractC5020d.AbstractC5021a
        /* renamed from: a */
        public AbstractC5020d.AbstractC5021a mo1818a(String str) {
            this.f21243a = str;
            return this;
        }

        @Override // com.google.firebase.installations.p168b.AbstractC5020d.AbstractC5021a
        /* renamed from: a */
        public AbstractC5020d mo1821a() {
            return new C5013a(this.f21243a, this.f21244b, this.f21245c, this.f21246d, this.f21247e);
        }

        @Override // com.google.firebase.installations.p168b.AbstractC5020d.AbstractC5021a
        /* renamed from: b */
        public AbstractC5020d.AbstractC5021a mo1817b(String str) {
            this.f21244b = str;
            return this;
        }

        @Override // com.google.firebase.installations.p168b.AbstractC5020d.AbstractC5021a
        /* renamed from: c */
        public AbstractC5020d.AbstractC5021a mo1816c(String str) {
            this.f21245c = str;
            return this;
        }
    }

    private C5013a(String str, String str2, String str3, AbstractC5023e abstractC5023e, AbstractC5020d.EnumC5022b enumC5022b) {
        this.f21238a = str;
        this.f21239b = str2;
        this.f21240c = str3;
        this.f21241d = abstractC5023e;
        this.f21242e = enumC5022b;
    }

    @Override // com.google.firebase.installations.p168b.AbstractC5020d
    /* renamed from: a */
    public String mo1827a() {
        return this.f21238a;
    }

    @Override // com.google.firebase.installations.p168b.AbstractC5020d
    /* renamed from: b */
    public String mo1826b() {
        return this.f21239b;
    }

    @Override // com.google.firebase.installations.p168b.AbstractC5020d
    /* renamed from: c */
    public String mo1825c() {
        return this.f21240c;
    }

    @Override // com.google.firebase.installations.p168b.AbstractC5020d
    /* renamed from: d */
    public AbstractC5023e mo1824d() {
        return this.f21241d;
    }

    @Override // com.google.firebase.installations.p168b.AbstractC5020d
    /* renamed from: e */
    public AbstractC5020d.EnumC5022b mo1823e() {
        return this.f21242e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj instanceof AbstractC5020d) {
                AbstractC5020d abstractC5020d = (AbstractC5020d) obj;
                if (this.f21238a != null ? this.f21238a.equals(abstractC5020d.mo1827a()) : abstractC5020d.mo1827a() == null) {
                    if (this.f21239b != null ? this.f21239b.equals(abstractC5020d.mo1826b()) : abstractC5020d.mo1826b() == null) {
                        if (this.f21240c != null ? this.f21240c.equals(abstractC5020d.mo1825c()) : abstractC5020d.mo1825c() == null) {
                            if (this.f21241d != null ? this.f21241d.equals(abstractC5020d.mo1824d()) : abstractC5020d.mo1824d() == null) {
                                if (this.f21242e != null) {
                                }
                            }
                        }
                    }
                }
                z = false;
            } else {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f21238a == null ? 0 : this.f21238a.hashCode();
        int hashCode2 = this.f21239b == null ? 0 : this.f21239b.hashCode();
        int hashCode3 = this.f21240c == null ? 0 : this.f21240c.hashCode();
        int hashCode4 = this.f21241d == null ? 0 : this.f21241d.hashCode();
        if (this.f21242e != null) {
            i = this.f21242e.hashCode();
        }
        return ((hashCode4 ^ ((hashCode3 ^ ((hashCode2 ^ ((hashCode ^ 1000003) * 1000003)) * 1000003)) * 1000003)) * 1000003) ^ i;
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f21238a + ", fid=" + this.f21239b + ", refreshToken=" + this.f21240c + ", authToken=" + this.f21241d + ", responseCode=" + this.f21242e + "}";
    }
}
