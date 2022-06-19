package com.google.firebase.installations.p397b;

import com.google.firebase.installations.p397b.AbstractC15810f;
/* renamed from: com.google.firebase.installations.b.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/b.class */
final class C15802b extends AbstractC15810f {

    /* renamed from: a */
    private final String f56213a;

    /* renamed from: b */
    private final long f56214b;

    /* renamed from: c */
    private final AbstractC15810f.EnumC15812b f56215c;

    /* renamed from: com.google.firebase.installations.b.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/b$a.class */
    public static final class C15804a extends AbstractC15810f.AbstractC15811a {

        /* renamed from: a */
        private String f56216a;

        /* renamed from: b */
        private Long f56217b;

        /* renamed from: c */
        private AbstractC15810f.EnumC15812b f56218c;

        public C15804a() {
        }

        private C15804a(AbstractC15810f abstractC15810f) {
            this.f56216a = abstractC15810f.mo8321a();
            this.f56217b = Long.valueOf(abstractC15810f.mo8320b());
            this.f56218c = abstractC15810f.mo8319c();
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15810f.AbstractC15811a
        /* renamed from: a */
        public final AbstractC15810f.AbstractC15811a mo8316a(long j) {
            this.f56217b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15810f.AbstractC15811a
        /* renamed from: a */
        public final AbstractC15810f.AbstractC15811a mo8315a(AbstractC15810f.EnumC15812b enumC15812b) {
            this.f56218c = enumC15812b;
            return this;
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15810f.AbstractC15811a
        /* renamed from: a */
        public final AbstractC15810f.AbstractC15811a mo8314a(String str) {
            this.f56216a = str;
            return this;
        }

        @Override // com.google.firebase.installations.p397b.AbstractC15810f.AbstractC15811a
        /* renamed from: a */
        public final AbstractC15810f mo8317a() {
            String str = "";
            if (this.f56217b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new C15802b(this.f56216a, this.f56217b.longValue(), this.f56218c);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str)));
        }
    }

    private C15802b(String str, long j, AbstractC15810f.EnumC15812b enumC15812b) {
        this.f56213a = str;
        this.f56214b = j;
        this.f56215c = enumC15812b;
    }

    @Override // com.google.firebase.installations.p397b.AbstractC15810f
    /* renamed from: a */
    public final String mo8321a() {
        return this.f56213a;
    }

    @Override // com.google.firebase.installations.p397b.AbstractC15810f
    /* renamed from: b */
    public final long mo8320b() {
        return this.f56214b;
    }

    @Override // com.google.firebase.installations.p397b.AbstractC15810f
    /* renamed from: c */
    public final AbstractC15810f.EnumC15812b mo8319c() {
        return this.f56215c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC15810f)) {
            return false;
        }
        AbstractC15810f abstractC15810f = (AbstractC15810f) obj;
        String str = this.f56213a;
        if (str == null) {
            if (abstractC15810f.mo8321a() != null) {
                return false;
            }
        } else if (!str.equals(abstractC15810f.mo8321a())) {
            return false;
        }
        if (this.f56214b != abstractC15810f.mo8320b()) {
            return false;
        }
        AbstractC15810f.EnumC15812b enumC15812b = this.f56215c;
        return enumC15812b == null ? abstractC15810f.mo8319c() == null : enumC15812b.equals(abstractC15810f.mo8319c());
    }

    public final int hashCode() {
        String str = this.f56213a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f56214b;
        int i2 = (int) (j ^ (j >>> 32));
        AbstractC15810f.EnumC15812b enumC15812b = this.f56215c;
        if (enumC15812b != null) {
            i = enumC15812b.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public final String toString() {
        return "TokenResult{token=" + this.f56213a + ", tokenExpirationTimestamp=" + this.f56214b + ", responseCode=" + this.f56215c + "}";
    }
}
