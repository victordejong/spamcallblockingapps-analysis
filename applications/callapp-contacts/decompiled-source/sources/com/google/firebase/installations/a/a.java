package com.google.firebase.installations.a;

import com.google.firebase.installations.a.c;
import com.google.firebase.installations.a.d;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/a.class */
final class a extends d {

    /* renamed from: b  reason: collision with root package name */
    private final String f32381b;

    /* renamed from: c  reason: collision with root package name */
    private final c.a f32382c;

    /* renamed from: d  reason: collision with root package name */
    private final String f32383d;
    private final String e;
    private final long f;
    private final long g;
    private final String h;

    /* renamed from: com.google.firebase.installations.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/a$a.class */
    static final class C0520a extends d.a {

        /* renamed from: a  reason: collision with root package name */
        private String f32384a;

        /* renamed from: b  reason: collision with root package name */
        private c.a f32385b;

        /* renamed from: c  reason: collision with root package name */
        private String f32386c;

        /* renamed from: d  reason: collision with root package name */
        private String f32387d;
        private Long e;
        private Long f;
        private String g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0520a() {
        }

        private C0520a(d dVar) {
            this.f32384a = dVar.a();
            this.f32385b = dVar.b();
            this.f32386c = dVar.c();
            this.f32387d = dVar.d();
            this.e = Long.valueOf(dVar.e());
            this.f = Long.valueOf(dVar.f());
            this.g = dVar.g();
        }

        @Override // com.google.firebase.installations.a.d.a
        public final d.a a(long j) {
            this.e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.a.d.a
        public final d.a a(c.a aVar) {
            Objects.requireNonNull(aVar, "Null registrationStatus");
            this.f32385b = aVar;
            return this;
        }

        @Override // com.google.firebase.installations.a.d.a
        public final d.a a(String str) {
            this.f32384a = str;
            return this;
        }

        @Override // com.google.firebase.installations.a.d.a
        public final d a() {
            String str = "";
            if (this.f32385b == null) {
                str = " registrationStatus";
            }
            String str2 = str;
            if (this.e == null) {
                str2 = str + " expiresInSecs";
            }
            String str3 = str2;
            if (this.f == null) {
                str3 = str2 + " tokenCreationEpochInSecs";
            }
            if (str3.isEmpty()) {
                return new a(this.f32384a, this.f32385b, this.f32386c, this.f32387d, this.e.longValue(), this.f.longValue(), this.g);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str3)));
        }

        @Override // com.google.firebase.installations.a.d.a
        public final d.a b(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.a.d.a
        public final d.a b(String str) {
            this.f32386c = str;
            return this;
        }

        @Override // com.google.firebase.installations.a.d.a
        public final d.a c(String str) {
            this.f32387d = str;
            return this;
        }

        @Override // com.google.firebase.installations.a.d.a
        public final d.a d(String str) {
            this.g = str;
            return this;
        }
    }

    private a(String str, c.a aVar, String str2, String str3, long j, long j2, String str4) {
        this.f32381b = str;
        this.f32382c = aVar;
        this.f32383d = str2;
        this.e = str3;
        this.f = j;
        this.g = j2;
        this.h = str4;
    }

    @Override // com.google.firebase.installations.a.d
    public final String a() {
        return this.f32381b;
    }

    @Override // com.google.firebase.installations.a.d
    public final c.a b() {
        return this.f32382c;
    }

    @Override // com.google.firebase.installations.a.d
    public final String c() {
        return this.f32383d;
    }

    @Override // com.google.firebase.installations.a.d
    public final String d() {
        return this.e;
    }

    @Override // com.google.firebase.installations.a.d
    public final long e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f32381b;
        if (str == null) {
            if (dVar.a() != null) {
                return false;
            }
        } else if (!str.equals(dVar.a())) {
            return false;
        }
        if (!this.f32382c.equals(dVar.b())) {
            return false;
        }
        String str2 = this.f32383d;
        if (str2 == null) {
            if (dVar.c() != null) {
                return false;
            }
        } else if (!str2.equals(dVar.c())) {
            return false;
        }
        String str3 = this.e;
        if (str3 == null) {
            if (dVar.d() != null) {
                return false;
            }
        } else if (!str3.equals(dVar.d())) {
            return false;
        }
        if (this.f != dVar.e() || this.g != dVar.f()) {
            return false;
        }
        String str4 = this.h;
        return str4 == null ? dVar.g() == null : str4.equals(dVar.g());
    }

    @Override // com.google.firebase.installations.a.d
    public final long f() {
        return this.g;
    }

    @Override // com.google.firebase.installations.a.d
    public final String g() {
        return this.h;
    }

    @Override // com.google.firebase.installations.a.d
    public final d.a h() {
        return new C0520a(this);
    }

    public final int hashCode() {
        String str = this.f32381b;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        int hashCode2 = this.f32382c.hashCode();
        String str2 = this.f32383d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.e;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        long j = this.f;
        int i2 = (int) (j ^ (j >>> 32));
        long j2 = this.g;
        int i3 = (int) (j2 ^ (j2 >>> 32));
        String str4 = this.h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i;
    }

    public final String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.f32381b + ", registrationStatus=" + this.f32382c + ", authToken=" + this.f32383d + ", refreshToken=" + this.e + ", expiresInSecs=" + this.f + ", tokenCreationEpochInSecs=" + this.g + ", fisError=" + this.h + "}";
    }
}
