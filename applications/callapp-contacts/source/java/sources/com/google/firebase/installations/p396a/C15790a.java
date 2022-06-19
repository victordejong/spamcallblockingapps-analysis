package com.google.firebase.installations.p396a;

import com.google.firebase.installations.p396a.AbstractC15796d;
import com.google.firebase.installations.p396a.C15794c;
import java.util.Objects;
/* renamed from: com.google.firebase.installations.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/a.class */
final class C15790a extends AbstractC15796d {

    /* renamed from: b */
    private final String f56181b;

    /* renamed from: c */
    private final C15794c.EnumC15795a f56182c;

    /* renamed from: d */
    private final String f56183d;

    /* renamed from: e */
    private final String f56184e;

    /* renamed from: f */
    private final long f56185f;

    /* renamed from: g */
    private final long f56186g;

    /* renamed from: h */
    private final String f56187h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.a.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/a$a.class */
    public static final class C15792a extends AbstractC15796d.AbstractC15797a {

        /* renamed from: a */
        private String f56188a;

        /* renamed from: b */
        private C15794c.EnumC15795a f56189b;

        /* renamed from: c */
        private String f56190c;

        /* renamed from: d */
        private String f56191d;

        /* renamed from: e */
        private Long f56192e;

        /* renamed from: f */
        private Long f56193f;

        /* renamed from: g */
        private String f56194g;

        public C15792a() {
        }

        private C15792a(AbstractC15796d abstractC15796d) {
            this.f56188a = abstractC15796d.mo8377a();
            this.f56189b = abstractC15796d.mo8375b();
            this.f56190c = abstractC15796d.mo8374c();
            this.f56191d = abstractC15796d.mo8373d();
            this.f56192e = Long.valueOf(abstractC15796d.mo8372e());
            this.f56193f = Long.valueOf(abstractC15796d.mo8371f());
            this.f56194g = abstractC15796d.mo8370g();
        }

        @Override // com.google.firebase.installations.p396a.AbstractC15796d.AbstractC15797a
        /* renamed from: a */
        public final AbstractC15796d.AbstractC15797a mo8361a(long j) {
            this.f56192e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.p396a.AbstractC15796d.AbstractC15797a
        /* renamed from: a */
        public final AbstractC15796d.AbstractC15797a mo8360a(C15794c.EnumC15795a enumC15795a) {
            Objects.requireNonNull(enumC15795a, "Null registrationStatus");
            this.f56189b = enumC15795a;
            return this;
        }

        @Override // com.google.firebase.installations.p396a.AbstractC15796d.AbstractC15797a
        /* renamed from: a */
        public final AbstractC15796d.AbstractC15797a mo8359a(String str) {
            this.f56188a = str;
            return this;
        }

        @Override // com.google.firebase.installations.p396a.AbstractC15796d.AbstractC15797a
        /* renamed from: a */
        public final AbstractC15796d mo8362a() {
            String str = "";
            if (this.f56189b == null) {
                str = " registrationStatus";
            }
            String str2 = str;
            if (this.f56192e == null) {
                str2 = str + " expiresInSecs";
            }
            String str3 = str2;
            if (this.f56193f == null) {
                str3 = str2 + " tokenCreationEpochInSecs";
            }
            if (str3.isEmpty()) {
                return new C15790a(this.f56188a, this.f56189b, this.f56190c, this.f56191d, this.f56192e.longValue(), this.f56193f.longValue(), this.f56194g);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str3)));
        }

        @Override // com.google.firebase.installations.p396a.AbstractC15796d.AbstractC15797a
        /* renamed from: b */
        public final AbstractC15796d.AbstractC15797a mo8358b(long j) {
            this.f56193f = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.p396a.AbstractC15796d.AbstractC15797a
        /* renamed from: b */
        public final AbstractC15796d.AbstractC15797a mo8357b(String str) {
            this.f56190c = str;
            return this;
        }

        @Override // com.google.firebase.installations.p396a.AbstractC15796d.AbstractC15797a
        /* renamed from: c */
        public final AbstractC15796d.AbstractC15797a mo8356c(String str) {
            this.f56191d = str;
            return this;
        }

        @Override // com.google.firebase.installations.p396a.AbstractC15796d.AbstractC15797a
        /* renamed from: d */
        public final AbstractC15796d.AbstractC15797a mo8355d(String str) {
            this.f56194g = str;
            return this;
        }
    }

    private C15790a(String str, C15794c.EnumC15795a enumC15795a, String str2, String str3, long j, long j2, String str4) {
        this.f56181b = str;
        this.f56182c = enumC15795a;
        this.f56183d = str2;
        this.f56184e = str3;
        this.f56185f = j;
        this.f56186g = j2;
        this.f56187h = str4;
    }

    @Override // com.google.firebase.installations.p396a.AbstractC15796d
    /* renamed from: a */
    public final String mo8377a() {
        return this.f56181b;
    }

    @Override // com.google.firebase.installations.p396a.AbstractC15796d
    /* renamed from: b */
    public final C15794c.EnumC15795a mo8375b() {
        return this.f56182c;
    }

    @Override // com.google.firebase.installations.p396a.AbstractC15796d
    /* renamed from: c */
    public final String mo8374c() {
        return this.f56183d;
    }

    @Override // com.google.firebase.installations.p396a.AbstractC15796d
    /* renamed from: d */
    public final String mo8373d() {
        return this.f56184e;
    }

    @Override // com.google.firebase.installations.p396a.AbstractC15796d
    /* renamed from: e */
    public final long mo8372e() {
        return this.f56185f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC15796d)) {
            return false;
        }
        AbstractC15796d abstractC15796d = (AbstractC15796d) obj;
        String str = this.f56181b;
        if (str == null) {
            if (abstractC15796d.mo8377a() != null) {
                return false;
            }
        } else if (!str.equals(abstractC15796d.mo8377a())) {
            return false;
        }
        if (!this.f56182c.equals(abstractC15796d.mo8375b())) {
            return false;
        }
        String str2 = this.f56183d;
        if (str2 == null) {
            if (abstractC15796d.mo8374c() != null) {
                return false;
            }
        } else if (!str2.equals(abstractC15796d.mo8374c())) {
            return false;
        }
        String str3 = this.f56184e;
        if (str3 == null) {
            if (abstractC15796d.mo8373d() != null) {
                return false;
            }
        } else if (!str3.equals(abstractC15796d.mo8373d())) {
            return false;
        }
        if (this.f56185f != abstractC15796d.mo8372e() || this.f56186g != abstractC15796d.mo8371f()) {
            return false;
        }
        String str4 = this.f56187h;
        return str4 == null ? abstractC15796d.mo8370g() == null : str4.equals(abstractC15796d.mo8370g());
    }

    @Override // com.google.firebase.installations.p396a.AbstractC15796d
    /* renamed from: f */
    public final long mo8371f() {
        return this.f56186g;
    }

    @Override // com.google.firebase.installations.p396a.AbstractC15796d
    /* renamed from: g */
    public final String mo8370g() {
        return this.f56187h;
    }

    @Override // com.google.firebase.installations.p396a.AbstractC15796d
    /* renamed from: h */
    public final AbstractC15796d.AbstractC15797a mo8369h() {
        return new C15792a(this);
    }

    public final int hashCode() {
        String str = this.f56181b;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f56182c.hashCode();
        String str2 = this.f56183d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f56184e;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        long j = this.f56185f;
        int i2 = (int) (j ^ (j >>> 32));
        long j2 = this.f56186g;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        String str4 = this.f56187h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i;
    }

    public final String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f56181b + ", registrationStatus=" + this.f56182c + ", authToken=" + this.f56183d + ", refreshToken=" + this.f56184e + ", expiresInSecs=" + this.f56185f + ", tokenCreationEpochInSecs=" + this.f56186g + ", fisError=" + this.f56187h + "}";
    }
}
