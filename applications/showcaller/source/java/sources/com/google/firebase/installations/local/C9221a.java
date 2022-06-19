package com.google.firebase.installations.local;

import com.google.firebase.installations.local.AbstractC9225c;
import com.google.firebase.installations.local.PersistedInstallation;
import java.util.Objects;
/* renamed from: com.google.firebase.installations.local.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/a.class */
final class C9221a extends AbstractC9225c {

    /* renamed from: b */
    private final String f39623b;

    /* renamed from: c */
    private final PersistedInstallation.RegistrationStatus f39624c;

    /* renamed from: d */
    private final String f39625d;

    /* renamed from: e */
    private final String f39626e;

    /* renamed from: f */
    private final long f39627f;

    /* renamed from: g */
    private final long f39628g;

    /* renamed from: h */
    private final String f39629h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.local.a$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/a$b.class */
    public static final class C9223b extends AbstractC9225c.AbstractC9226a {

        /* renamed from: a */
        private String f39630a;

        /* renamed from: b */
        private PersistedInstallation.RegistrationStatus f39631b;

        /* renamed from: c */
        private String f39632c;

        /* renamed from: d */
        private String f39633d;

        /* renamed from: e */
        private Long f39634e;

        /* renamed from: f */
        private Long f39635f;

        /* renamed from: g */
        private String f39636g;

        public C9223b() {
        }

        private C9223b(AbstractC9225c abstractC9225c) {
            this.f39630a = abstractC9225c.mo1503d();
            this.f39631b = abstractC9225c.mo1500g();
            this.f39632c = abstractC9225c.mo1505b();
            this.f39633d = abstractC9225c.mo1501f();
            this.f39634e = Long.valueOf(abstractC9225c.mo1504c());
            this.f39635f = Long.valueOf(abstractC9225c.mo1499h());
            this.f39636g = abstractC9225c.mo1502e();
        }

        @Override // com.google.firebase.installations.local.AbstractC9225c.AbstractC9226a
        /* renamed from: a */
        public AbstractC9225c mo1486a() {
            String str = "";
            if (this.f39631b == null) {
                str = " registrationStatus";
            }
            String str2 = str;
            if (this.f39634e == null) {
                str2 = str + " expiresInSecs";
            }
            String str3 = str2;
            if (this.f39635f == null) {
                str3 = str2 + " tokenCreationEpochInSecs";
            }
            if (str3.isEmpty()) {
                return new C9221a(this.f39630a, this.f39631b, this.f39632c, this.f39633d, this.f39634e.longValue(), this.f39635f.longValue(), this.f39636g);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.installations.local.AbstractC9225c.AbstractC9226a
        /* renamed from: b */
        public AbstractC9225c.AbstractC9226a mo1485b(String str) {
            this.f39632c = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.AbstractC9225c.AbstractC9226a
        /* renamed from: c */
        public AbstractC9225c.AbstractC9226a mo1484c(long j) {
            this.f39634e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.local.AbstractC9225c.AbstractC9226a
        /* renamed from: d */
        public AbstractC9225c.AbstractC9226a mo1483d(String str) {
            this.f39630a = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.AbstractC9225c.AbstractC9226a
        /* renamed from: e */
        public AbstractC9225c.AbstractC9226a mo1482e(String str) {
            this.f39636g = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.AbstractC9225c.AbstractC9226a
        /* renamed from: f */
        public AbstractC9225c.AbstractC9226a mo1481f(String str) {
            this.f39633d = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.AbstractC9225c.AbstractC9226a
        /* renamed from: g */
        public AbstractC9225c.AbstractC9226a mo1480g(PersistedInstallation.RegistrationStatus registrationStatus) {
            Objects.requireNonNull(registrationStatus, "Null registrationStatus");
            this.f39631b = registrationStatus;
            return this;
        }

        @Override // com.google.firebase.installations.local.AbstractC9225c.AbstractC9226a
        /* renamed from: h */
        public AbstractC9225c.AbstractC9226a mo1479h(long j) {
            this.f39635f = Long.valueOf(j);
            return this;
        }
    }

    private C9221a(String str, PersistedInstallation.RegistrationStatus registrationStatus, String str2, String str3, long j, long j2, String str4) {
        this.f39623b = str;
        this.f39624c = registrationStatus;
        this.f39625d = str2;
        this.f39626e = str3;
        this.f39627f = j;
        this.f39628g = j2;
        this.f39629h = str4;
    }

    @Override // com.google.firebase.installations.local.AbstractC9225c
    /* renamed from: b */
    public String mo1505b() {
        return this.f39625d;
    }

    @Override // com.google.firebase.installations.local.AbstractC9225c
    /* renamed from: c */
    public long mo1504c() {
        return this.f39627f;
    }

    @Override // com.google.firebase.installations.local.AbstractC9225c
    /* renamed from: d */
    public String mo1503d() {
        return this.f39623b;
    }

    @Override // com.google.firebase.installations.local.AbstractC9225c
    /* renamed from: e */
    public String mo1502e() {
        return this.f39629h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
        if ((r0 = r5.f39626e) != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
        if (r5.f39627f != r0.mo1504c()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        if (r5.f39628g != r0.mo1499h()) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009b, code lost:
        if ((r0 = r5.f39629h) != null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r6
            boolean r0 = r0 instanceof com.google.firebase.installations.local.AbstractC9225c
            if (r0 == 0) goto Lba
            r0 = r6
            com.google.firebase.installations.local.c r0 = (com.google.firebase.installations.local.AbstractC9225c) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.f39623b
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L28
            r0 = r6
            java.lang.String r0 = r0.mo1503d()
            if (r0 != 0) goto Lb6
            goto L33
        L28:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo1503d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
        L33:
            r0 = r5
            com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus r0 = r0.f39624c
            r1 = r6
            com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus r1 = r1.mo1500g()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
            r0 = r5
            java.lang.String r0 = r0.f39625d
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L54
            r0 = r6
            java.lang.String r0 = r0.mo1505b()
            if (r0 != 0) goto Lb6
            goto L5f
        L54:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo1505b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
        L5f:
            r0 = r5
            java.lang.String r0 = r0.f39626e
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L72
            r0 = r6
            java.lang.String r0 = r0.mo1501f()
            if (r0 != 0) goto Lb6
            goto L7d
        L72:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo1501f()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
        L7d:
            r0 = r5
            long r0 = r0.f39627f
            r1 = r6
            long r1 = r1.mo1504c()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lb6
            r0 = r5
            long r0 = r0.f39628g
            r1 = r6
            long r1 = r1.mo1499h()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Lb6
            r0 = r5
            java.lang.String r0 = r0.f39629h
            r8 = r0
            r0 = r8
            if (r0 != 0) goto La8
            r0 = r6
            java.lang.String r0 = r0.mo1502e()
            if (r0 != 0) goto Lb6
            goto Lb8
        La8:
            r0 = r8
            r1 = r6
            java.lang.String r1 = r1.mo1502e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb6
            goto Lb8
        Lb6:
            r0 = 0
            r7 = r0
        Lb8:
            r0 = r7
            return r0
        Lba:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.local.C9221a.equals(java.lang.Object):boolean");
    }

    @Override // com.google.firebase.installations.local.AbstractC9225c
    /* renamed from: f */
    public String mo1501f() {
        return this.f39626e;
    }

    @Override // com.google.firebase.installations.local.AbstractC9225c
    /* renamed from: g */
    public PersistedInstallation.RegistrationStatus mo1500g() {
        return this.f39624c;
    }

    @Override // com.google.firebase.installations.local.AbstractC9225c
    /* renamed from: h */
    public long mo1499h() {
        return this.f39628g;
    }

    public int hashCode() {
        String str = this.f39623b;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f39624c.hashCode();
        String str2 = this.f39625d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f39626e;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        long j = this.f39627f;
        int i2 = (int) (j ^ (j >>> 32));
        long j2 = this.f39628g;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        String str4 = this.f39629h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i;
    }

    @Override // com.google.firebase.installations.local.AbstractC9225c
    /* renamed from: n */
    public AbstractC9225c.AbstractC9226a mo1493n() {
        return new C9223b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f39623b + ", registrationStatus=" + this.f39624c + ", authToken=" + this.f39625d + ", refreshToken=" + this.f39626e + ", expiresInSecs=" + this.f39627f + ", tokenCreationEpochInSecs=" + this.f39628g + ", fisError=" + this.f39629h + "}";
    }
}
