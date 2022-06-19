package com.google.firebase.installations;

import com.google.firebase.installations.AbstractC9218k;
import java.util.Objects;
/* renamed from: com.google.firebase.installations.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/a.class */
final class C9204a extends AbstractC9218k {

    /* renamed from: a */
    private final String f39579a;

    /* renamed from: b */
    private final long f39580b;

    /* renamed from: c */
    private final long f39581c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.a$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/a$b.class */
    public static final class C9206b extends AbstractC9218k.AbstractC9219a {

        /* renamed from: a */
        private String f39582a;

        /* renamed from: b */
        private Long f39583b;

        /* renamed from: c */
        private Long f39584c;

        @Override // com.google.firebase.installations.AbstractC9218k.AbstractC9219a
        /* renamed from: a */
        public AbstractC9218k mo1525a() {
            String str = "";
            if (this.f39582a == null) {
                str = " token";
            }
            String str2 = str;
            if (this.f39583b == null) {
                str2 = str + " tokenExpirationTimestamp";
            }
            String str3 = str2;
            if (this.f39584c == null) {
                str3 = str2 + " tokenCreationTimestamp";
            }
            if (str3.isEmpty()) {
                return new C9204a(this.f39582a, this.f39583b.longValue(), this.f39584c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.installations.AbstractC9218k.AbstractC9219a
        /* renamed from: b */
        public AbstractC9218k.AbstractC9219a mo1524b(String str) {
            Objects.requireNonNull(str, "Null token");
            this.f39582a = str;
            return this;
        }

        @Override // com.google.firebase.installations.AbstractC9218k.AbstractC9219a
        /* renamed from: c */
        public AbstractC9218k.AbstractC9219a mo1523c(long j) {
            this.f39584c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.AbstractC9218k.AbstractC9219a
        /* renamed from: d */
        public AbstractC9218k.AbstractC9219a mo1522d(long j) {
            this.f39583b = Long.valueOf(j);
            return this;
        }
    }

    private C9204a(String str, long j, long j2) {
        this.f39579a = str;
        this.f39580b = j;
        this.f39581c = j2;
    }

    @Override // com.google.firebase.installations.AbstractC9218k
    /* renamed from: b */
    public String mo1528b() {
        return this.f39579a;
    }

    @Override // com.google.firebase.installations.AbstractC9218k
    /* renamed from: c */
    public long mo1527c() {
        return this.f39581c;
    }

    @Override // com.google.firebase.installations.AbstractC9218k
    /* renamed from: d */
    public long mo1526d() {
        return this.f39580b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9218k)) {
            return false;
        }
        AbstractC9218k abstractC9218k = (AbstractC9218k) obj;
        if (!this.f39579a.equals(abstractC9218k.mo1528b()) || this.f39580b != abstractC9218k.mo1526d() || this.f39581c != abstractC9218k.mo1527c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f39579a.hashCode();
        long j = this.f39580b;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f39581c;
        return ((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f39579a + ", tokenExpirationTimestamp=" + this.f39580b + ", tokenCreationTimestamp=" + this.f39581c + "}";
    }
}
