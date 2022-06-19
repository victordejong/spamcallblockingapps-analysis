package com.google.firebase.installations.remote;

import com.google.firebase.installations.remote.TokenResult;
/* renamed from: com.google.firebase.installations.remote.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/b.class */
final class C9237b extends TokenResult {

    /* renamed from: a */
    private final String f39663a;

    /* renamed from: b */
    private final long f39664b;

    /* renamed from: c */
    private final TokenResult.ResponseCode f39665c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.remote.b$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/b$b.class */
    public static final class C9239b extends TokenResult.AbstractC9233a {

        /* renamed from: a */
        private String f39666a;

        /* renamed from: b */
        private Long f39667b;

        /* renamed from: c */
        private TokenResult.ResponseCode f39668c;

        @Override // com.google.firebase.installations.remote.TokenResult.AbstractC9233a
        /* renamed from: a */
        public TokenResult mo1449a() {
            String str = "";
            if (this.f39667b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new C9237b(this.f39666a, this.f39667b.longValue(), this.f39668c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.remote.TokenResult.AbstractC9233a
        /* renamed from: b */
        public TokenResult.AbstractC9233a mo1448b(TokenResult.ResponseCode responseCode) {
            this.f39668c = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.AbstractC9233a
        /* renamed from: c */
        public TokenResult.AbstractC9233a mo1447c(String str) {
            this.f39666a = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.TokenResult.AbstractC9233a
        /* renamed from: d */
        public TokenResult.AbstractC9233a mo1446d(long j) {
            this.f39667b = Long.valueOf(j);
            return this;
        }
    }

    private C9237b(String str, long j, TokenResult.ResponseCode responseCode) {
        this.f39663a = str;
        this.f39664b = j;
        this.f39665c = responseCode;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    /* renamed from: b */
    public TokenResult.ResponseCode mo1452b() {
        return this.f39665c;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    /* renamed from: c */
    public String mo1451c() {
        return this.f39663a;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    /* renamed from: d */
    public long mo1450d() {
        return this.f39664b;
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
        String str = this.f39663a;
        if (str != null ? str.equals(tokenResult.mo1451c()) : tokenResult.mo1451c() == null) {
            if (this.f39664b == tokenResult.mo1450d()) {
                if ((r0 = this.f39665c) == null) {
                }
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        String str = this.f39663a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f39664b;
        int i2 = (int) (j ^ (j >>> 32));
        TokenResult.ResponseCode responseCode = this.f39665c;
        if (responseCode != null) {
            i = responseCode.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public String toString() {
        return "TokenResult{token=" + this.f39663a + ", tokenExpirationTimestamp=" + this.f39664b + ", responseCode=" + this.f39665c + "}";
    }
}
