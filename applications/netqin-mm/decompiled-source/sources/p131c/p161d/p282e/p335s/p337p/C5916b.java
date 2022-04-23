package p131c.p161d.p282e.p335s.p337p;

import com.google.firebase.installations.remote.TokenResult;
/* renamed from: c.d.e.s.p.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/p/b.class */
public final class C5916b extends TokenResult {

    /* renamed from: a */
    public final String f19255a;

    /* renamed from: b */
    public final long f19256b;

    /* renamed from: c */
    public final TokenResult.ResponseCode f19257c;

    /* renamed from: c.d.e.s.p.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/s/p/b$b.class */
    public static final class C5918b extends TokenResult.AbstractC7847a {

        /* renamed from: a */
        public String f19258a;

        /* renamed from: b */
        public Long f19259b;

        /* renamed from: c */
        public TokenResult.ResponseCode f19260c;

        @Override // com.google.firebase.installations.remote.TokenResult.AbstractC7847a
        /* renamed from: a */
        public TokenResult.AbstractC7847a mo7275a(long j) {
            this.f19259b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.AbstractC7847a
        /* renamed from: a */
        public TokenResult.AbstractC7847a mo7274a(TokenResult.ResponseCode responseCode) {
            this.f19260c = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.AbstractC7847a
        /* renamed from: a */
        public TokenResult.AbstractC7847a mo7273a(String str) {
            this.f19258a = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.AbstractC7847a
        /* renamed from: a */
        public TokenResult mo7276a() {
            String str = "";
            if (this.f19259b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new C5916b(this.f19258a, this.f19259b.longValue(), this.f19260c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C5916b(String str, long j, TokenResult.ResponseCode responseCode) {
        this.f19255a = str;
        this.f19256b = j;
        this.f19257c = responseCode;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    /* renamed from: a */
    public TokenResult.ResponseCode mo7280a() {
        return this.f19257c;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    /* renamed from: b */
    public String mo7279b() {
        return this.f19255a;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    /* renamed from: c */
    public long mo7278c() {
        return this.f19256b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TokenResult)) {
            return false;
        }
        TokenResult tokenResult = (TokenResult) obj;
        String str = this.f19255a;
        if (str != null ? str.equals(tokenResult.mo7279b()) : tokenResult.mo7279b() == null) {
            if (this.f19256b == tokenResult.mo7278c()) {
                if ((r0 = this.f19257c) == null) {
                }
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        String str = this.f19255a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f19256b;
        int i2 = (int) (j ^ (j >>> 32));
        TokenResult.ResponseCode responseCode = this.f19257c;
        if (responseCode != null) {
            i = responseCode.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public String toString() {
        return "TokenResult{token=" + this.f19255a + ", tokenExpirationTimestamp=" + this.f19256b + ", responseCode=" + this.f19257c + "}";
    }
}
