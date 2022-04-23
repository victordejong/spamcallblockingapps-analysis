package com.google.firebase.installations.b;

import com.google.firebase.installations.b.f;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/b.class */
final class b extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f32404a;

    /* renamed from: b  reason: collision with root package name */
    private final long f32405b;

    /* renamed from: c  reason: collision with root package name */
    private final f.b f32406c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/b$a.class */
    public static final class a extends f.a {

        /* renamed from: a  reason: collision with root package name */
        private String f32407a;

        /* renamed from: b  reason: collision with root package name */
        private Long f32408b;

        /* renamed from: c  reason: collision with root package name */
        private f.b f32409c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        private a(f fVar) {
            this.f32407a = fVar.a();
            this.f32408b = Long.valueOf(fVar.b());
            this.f32409c = fVar.c();
        }

        @Override // com.google.firebase.installations.b.f.a
        public final f.a a(long j) {
            this.f32408b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.b.f.a
        public final f.a a(f.b bVar) {
            this.f32409c = bVar;
            return this;
        }

        @Override // com.google.firebase.installations.b.f.a
        public final f.a a(String str) {
            this.f32407a = str;
            return this;
        }

        @Override // com.google.firebase.installations.b.f.a
        public final f a() {
            String str = "";
            if (this.f32408b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new b(this.f32407a, this.f32408b.longValue(), this.f32409c);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str)));
        }
    }

    private b(String str, long j, f.b bVar) {
        this.f32404a = str;
        this.f32405b = j;
        this.f32406c = bVar;
    }

    @Override // com.google.firebase.installations.b.f
    public final String a() {
        return this.f32404a;
    }

    @Override // com.google.firebase.installations.b.f
    public final long b() {
        return this.f32405b;
    }

    @Override // com.google.firebase.installations.b.f
    public final f.b c() {
        return this.f32406c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        String str = this.f32404a;
        if (str == null) {
            if (fVar.a() != null) {
                return false;
            }
        } else if (!str.equals(fVar.a())) {
            return false;
        }
        if (this.f32405b != fVar.b()) {
            return false;
        }
        f.b bVar = this.f32406c;
        return bVar == null ? fVar.c() == null : bVar.equals(fVar.c());
    }

    public final int hashCode() {
        String str = this.f32404a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f32405b;
        int i2 = (int) (j ^ (j >>> 32));
        f.b bVar = this.f32406c;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public final String toString() {
        return "TokenResult{token=" + this.f32404a + ", tokenExpirationTimestamp=" + this.f32405b + ", responseCode=" + this.f32406c + "}";
    }
}
