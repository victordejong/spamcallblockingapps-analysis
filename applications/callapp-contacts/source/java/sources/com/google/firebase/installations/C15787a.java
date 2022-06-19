package com.google.firebase.installations;

import com.google.firebase.installations.AbstractC15826l;
import java.util.Objects;
/* renamed from: com.google.firebase.installations.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a.class */
final class C15787a extends AbstractC15826l {

    /* renamed from: a */
    private final String f56175a;

    /* renamed from: b */
    private final long f56176b;

    /* renamed from: c */
    private final long f56177c;

    /* renamed from: com.google.firebase.installations.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a$a.class */
    static final class C15789a extends AbstractC15826l.AbstractC15827a {

        /* renamed from: a */
        private String f56178a;

        /* renamed from: b */
        private Long f56179b;

        /* renamed from: c */
        private Long f56180c;

        public C15789a() {
        }

        private C15789a(AbstractC15826l abstractC15826l) {
            this.f56178a = abstractC15826l.mo8282a();
            this.f56179b = Long.valueOf(abstractC15826l.mo8281b());
            this.f56180c = Long.valueOf(abstractC15826l.mo8280c());
        }

        @Override // com.google.firebase.installations.AbstractC15826l.AbstractC15827a
        /* renamed from: a */
        public final AbstractC15826l.AbstractC15827a mo8278a(long j) {
            this.f56179b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.AbstractC15826l.AbstractC15827a
        /* renamed from: a */
        public final AbstractC15826l.AbstractC15827a mo8277a(String str) {
            Objects.requireNonNull(str, "Null token");
            this.f56178a = str;
            return this;
        }

        @Override // com.google.firebase.installations.AbstractC15826l.AbstractC15827a
        /* renamed from: a */
        public final AbstractC15826l mo8279a() {
            String str = "";
            if (this.f56178a == null) {
                str = " token";
            }
            String str2 = str;
            if (this.f56179b == null) {
                str2 = str + " tokenExpirationTimestamp";
            }
            String str3 = str2;
            if (this.f56180c == null) {
                str3 = str2 + " tokenCreationTimestamp";
            }
            if (str3.isEmpty()) {
                return new C15787a(this.f56178a, this.f56179b.longValue(), this.f56180c.longValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str3)));
        }

        @Override // com.google.firebase.installations.AbstractC15826l.AbstractC15827a
        /* renamed from: b */
        public final AbstractC15826l.AbstractC15827a mo8276b(long j) {
            this.f56180c = Long.valueOf(j);
            return this;
        }
    }

    private C15787a(String str, long j, long j2) {
        this.f56175a = str;
        this.f56176b = j;
        this.f56177c = j2;
    }

    @Override // com.google.firebase.installations.AbstractC15826l
    /* renamed from: a */
    public final String mo8282a() {
        return this.f56175a;
    }

    @Override // com.google.firebase.installations.AbstractC15826l
    /* renamed from: b */
    public final long mo8281b() {
        return this.f56176b;
    }

    @Override // com.google.firebase.installations.AbstractC15826l
    /* renamed from: c */
    public final long mo8280c() {
        return this.f56177c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC15826l)) {
            return false;
        }
        AbstractC15826l abstractC15826l = (AbstractC15826l) obj;
        return this.f56175a.equals(abstractC15826l.mo8282a()) && this.f56176b == abstractC15826l.mo8281b() && this.f56177c == abstractC15826l.mo8280c();
    }

    public final int hashCode() {
        int hashCode = this.f56175a.hashCode();
        long j = this.f56176b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f56177c;
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "InstallationTokenResult{token=" + this.f56175a + ", tokenExpirationTimestamp=" + this.f56176b + ", tokenCreationTimestamp=" + this.f56177c + "}";
    }
}
