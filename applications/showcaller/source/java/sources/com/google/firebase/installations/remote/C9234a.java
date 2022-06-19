package com.google.firebase.installations.remote;

import com.google.firebase.installations.remote.InstallationResponse;
/* renamed from: com.google.firebase.installations.remote.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/a.class */
final class C9234a extends InstallationResponse {

    /* renamed from: a */
    private final String f39653a;

    /* renamed from: b */
    private final String f39654b;

    /* renamed from: c */
    private final String f39655c;

    /* renamed from: d */
    private final TokenResult f39656d;

    /* renamed from: e */
    private final InstallationResponse.ResponseCode f39657e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.remote.a$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/a$b.class */
    public static final class C9236b extends InstallationResponse.AbstractC9232a {

        /* renamed from: a */
        private String f39658a;

        /* renamed from: b */
        private String f39659b;

        /* renamed from: c */
        private String f39660c;

        /* renamed from: d */
        private TokenResult f39661d;

        /* renamed from: e */
        private InstallationResponse.ResponseCode f39662e;

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC9232a
        /* renamed from: a */
        public InstallationResponse mo1458a() {
            return new C9234a(this.f39658a, this.f39659b, this.f39660c, this.f39661d, this.f39662e);
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC9232a
        /* renamed from: b */
        public InstallationResponse.AbstractC9232a mo1457b(TokenResult tokenResult) {
            this.f39661d = tokenResult;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC9232a
        /* renamed from: c */
        public InstallationResponse.AbstractC9232a mo1456c(String str) {
            this.f39659b = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC9232a
        /* renamed from: d */
        public InstallationResponse.AbstractC9232a mo1455d(String str) {
            this.f39660c = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC9232a
        /* renamed from: e */
        public InstallationResponse.AbstractC9232a mo1454e(InstallationResponse.ResponseCode responseCode) {
            this.f39662e = responseCode;
            return this;
        }

        @Override // com.google.firebase.installations.remote.InstallationResponse.AbstractC9232a
        /* renamed from: f */
        public InstallationResponse.AbstractC9232a mo1453f(String str) {
            this.f39658a = str;
            return this;
        }
    }

    private C9234a(String str, String str2, String str3, TokenResult tokenResult, InstallationResponse.ResponseCode responseCode) {
        this.f39653a = str;
        this.f39654b = str2;
        this.f39655c = str3;
        this.f39656d = tokenResult;
        this.f39657e = responseCode;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: b */
    public TokenResult mo1463b() {
        return this.f39656d;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: c */
    public String mo1462c() {
        return this.f39654b;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: d */
    public String mo1461d() {
        return this.f39655c;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: e */
    public InstallationResponse.ResponseCode mo1460e() {
        return this.f39657e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InstallationResponse)) {
            return false;
        }
        InstallationResponse installationResponse = (InstallationResponse) obj;
        String str = this.f39653a;
        if (str != null ? str.equals(installationResponse.mo1459f()) : installationResponse.mo1459f() == null) {
            String str2 = this.f39654b;
            if (str2 != null ? str2.equals(installationResponse.mo1462c()) : installationResponse.mo1462c() == null) {
                String str3 = this.f39655c;
                if (str3 != null ? str3.equals(installationResponse.mo1461d()) : installationResponse.mo1461d() == null) {
                    TokenResult tokenResult = this.f39656d;
                    if (tokenResult != null ? tokenResult.equals(installationResponse.mo1463b()) : installationResponse.mo1463b() == null) {
                        InstallationResponse.ResponseCode responseCode = this.f39657e;
                        if (responseCode != null) {
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    @Override // com.google.firebase.installations.remote.InstallationResponse
    /* renamed from: f */
    public String mo1459f() {
        return this.f39653a;
    }

    public int hashCode() {
        String str = this.f39653a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f39654b;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f39655c;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        TokenResult tokenResult = this.f39656d;
        int hashCode4 = tokenResult == null ? 0 : tokenResult.hashCode();
        InstallationResponse.ResponseCode responseCode = this.f39657e;
        if (responseCode != null) {
            i = responseCode.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i;
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f39653a + ", fid=" + this.f39654b + ", refreshToken=" + this.f39655c + ", authToken=" + this.f39656d + ", responseCode=" + this.f39657e + "}";
    }
}
