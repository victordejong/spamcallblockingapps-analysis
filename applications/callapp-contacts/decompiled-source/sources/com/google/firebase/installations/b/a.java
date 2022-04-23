package com.google.firebase.installations.b;

import com.google.firebase.installations.b.d;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/a.class */
final class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private final String f32396a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32397b;

    /* renamed from: c  reason: collision with root package name */
    private final String f32398c;

    /* renamed from: d  reason: collision with root package name */
    private final f f32399d;
    private final d.b e;

    /* renamed from: com.google.firebase.installations.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/a$a.class */
    static final class C0521a extends d.a {

        /* renamed from: a  reason: collision with root package name */
        private String f32400a;

        /* renamed from: b  reason: collision with root package name */
        private String f32401b;

        /* renamed from: c  reason: collision with root package name */
        private String f32402c;

        /* renamed from: d  reason: collision with root package name */
        private f f32403d;
        private d.b e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0521a() {
        }

        private C0521a(d dVar) {
            this.f32400a = dVar.a();
            this.f32401b = dVar.b();
            this.f32402c = dVar.c();
            this.f32403d = dVar.d();
            this.e = dVar.e();
        }

        @Override // com.google.firebase.installations.b.d.a
        public final d.a a(d.b bVar) {
            this.e = bVar;
            return this;
        }

        @Override // com.google.firebase.installations.b.d.a
        public final d.a a(f fVar) {
            this.f32403d = fVar;
            return this;
        }

        @Override // com.google.firebase.installations.b.d.a
        public final d.a a(String str) {
            this.f32400a = str;
            return this;
        }

        @Override // com.google.firebase.installations.b.d.a
        public final d a() {
            return new a(this.f32400a, this.f32401b, this.f32402c, this.f32403d, this.e);
        }

        @Override // com.google.firebase.installations.b.d.a
        public final d.a b(String str) {
            this.f32401b = str;
            return this;
        }

        @Override // com.google.firebase.installations.b.d.a
        public final d.a c(String str) {
            this.f32402c = str;
            return this;
        }
    }

    private a(String str, String str2, String str3, f fVar, d.b bVar) {
        this.f32396a = str;
        this.f32397b = str2;
        this.f32398c = str3;
        this.f32399d = fVar;
        this.e = bVar;
    }

    @Override // com.google.firebase.installations.b.d
    public final String a() {
        return this.f32396a;
    }

    @Override // com.google.firebase.installations.b.d
    public final String b() {
        return this.f32397b;
    }

    @Override // com.google.firebase.installations.b.d
    public final String c() {
        return this.f32398c;
    }

    @Override // com.google.firebase.installations.b.d
    public final f d() {
        return this.f32399d;
    }

    @Override // com.google.firebase.installations.b.d
    public final d.b e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f32396a;
        if (str == null) {
            if (dVar.a() != null) {
                return false;
            }
        } else if (!str.equals(dVar.a())) {
            return false;
        }
        String str2 = this.f32397b;
        if (str2 == null) {
            if (dVar.b() != null) {
                return false;
            }
        } else if (!str2.equals(dVar.b())) {
            return false;
        }
        String str3 = this.f32398c;
        if (str3 == null) {
            if (dVar.c() != null) {
                return false;
            }
        } else if (!str3.equals(dVar.c())) {
            return false;
        }
        f fVar = this.f32399d;
        if (fVar == null) {
            if (dVar.d() != null) {
                return false;
            }
        } else if (!fVar.equals(dVar.d())) {
            return false;
        }
        d.b bVar = this.e;
        return bVar == null ? dVar.e() == null : bVar.equals(dVar.e());
    }

    public final int hashCode() {
        String str = this.f32396a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f32397b;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f32398c;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        f fVar = this.f32399d;
        int hashCode4 = fVar == null ? 0 : fVar.hashCode();
        d.b bVar = this.e;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i;
    }

    public final String toString() {
        return "InstallationResponse{uri=" + this.f32396a + ", fid=" + this.f32397b + ", refreshToken=" + this.f32398c + ", authToken=" + this.f32399d + ", responseCode=" + this.e + "}";
    }
}
