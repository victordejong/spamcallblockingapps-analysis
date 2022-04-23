package com.google.firebase.installations;

import com.google.firebase.installations.l;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a.class */
final class a extends l {

    /* renamed from: a  reason: collision with root package name */
    private final String f32375a;

    /* renamed from: b  reason: collision with root package name */
    private final long f32376b;

    /* renamed from: c  reason: collision with root package name */
    private final long f32377c;

    /* renamed from: com.google.firebase.installations.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a$a.class */
    static final class C0519a extends l.a {

        /* renamed from: a  reason: collision with root package name */
        private String f32378a;

        /* renamed from: b  reason: collision with root package name */
        private Long f32379b;

        /* renamed from: c  reason: collision with root package name */
        private Long f32380c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0519a() {
        }

        private C0519a(l lVar) {
            this.f32378a = lVar.a();
            this.f32379b = Long.valueOf(lVar.b());
            this.f32380c = Long.valueOf(lVar.c());
        }

        @Override // com.google.firebase.installations.l.a
        public final l.a a(long j) {
            this.f32379b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.l.a
        public final l.a a(String str) {
            Objects.requireNonNull(str, "Null token");
            this.f32378a = str;
            return this;
        }

        @Override // com.google.firebase.installations.l.a
        public final l a() {
            String str = "";
            if (this.f32378a == null) {
                str = " token";
            }
            String str2 = str;
            if (this.f32379b == null) {
                str2 = str + " tokenExpirationTimestamp";
            }
            String str3 = str2;
            if (this.f32380c == null) {
                str3 = str2 + " tokenCreationTimestamp";
            }
            if (str3.isEmpty()) {
                return new a(this.f32378a, this.f32379b.longValue(), this.f32380c.longValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str3)));
        }

        @Override // com.google.firebase.installations.l.a
        public final l.a b(long j) {
            this.f32380c = Long.valueOf(j);
            return this;
        }
    }

    private a(String str, long j, long j2) {
        this.f32375a = str;
        this.f32376b = j;
        this.f32377c = j2;
    }

    @Override // com.google.firebase.installations.l
    public final String a() {
        return this.f32375a;
    }

    @Override // com.google.firebase.installations.l
    public final long b() {
        return this.f32376b;
    }

    @Override // com.google.firebase.installations.l
    public final long c() {
        return this.f32377c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f32375a.equals(lVar.a()) && this.f32376b == lVar.b() && this.f32377c == lVar.c();
    }

    public final int hashCode() {
        int hashCode = this.f32375a.hashCode();
        long j = this.f32376b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f32377c;
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "InstallationTokenResult{token=" + this.f32375a + ", tokenExpirationTimestamp=" + this.f32376b + ", tokenCreationTimestamp=" + this.f32377c + "}";
    }
}
