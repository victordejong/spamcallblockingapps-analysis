package com.google.firebase.installations;

import com.google.firebase.installations.AbstractC5037l;
/* renamed from: com.google.firebase.installations.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a.class */
final class C5001a extends AbstractC5037l {

    /* renamed from: a */
    private final String f21204a;

    /* renamed from: b */
    private final long f21205b;

    /* renamed from: c */
    private final long f21206c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a$a.class */
    public static final class C5003a extends AbstractC5037l.AbstractC5038a {

        /* renamed from: a */
        private String f21207a;

        /* renamed from: b */
        private Long f21208b;

        /* renamed from: c */
        private Long f21209c;

        @Override // com.google.firebase.installations.AbstractC5037l.AbstractC5038a
        /* renamed from: a */
        public AbstractC5037l.AbstractC5038a mo1773a(long j) {
            this.f21208b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.AbstractC5037l.AbstractC5038a
        /* renamed from: a */
        public AbstractC5037l.AbstractC5038a mo1772a(String str) {
            if (str == null) {
                throw new NullPointerException("Null token");
            }
            this.f21207a = str;
            return this;
        }

        @Override // com.google.firebase.installations.AbstractC5037l.AbstractC5038a
        /* renamed from: a */
        public AbstractC5037l mo1774a() {
            String str = "";
            if (this.f21207a == null) {
                str = " token";
            }
            String str2 = str;
            if (this.f21208b == null) {
                str2 = str + " tokenExpirationTimestamp";
            }
            String str3 = str2;
            if (this.f21209c == null) {
                str3 = str2 + " tokenCreationTimestamp";
            }
            if (!str3.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str3);
            }
            return new C5001a(this.f21207a, this.f21208b.longValue(), this.f21209c.longValue());
        }

        @Override // com.google.firebase.installations.AbstractC5037l.AbstractC5038a
        /* renamed from: b */
        public AbstractC5037l.AbstractC5038a mo1771b(long j) {
            this.f21209c = Long.valueOf(j);
            return this;
        }
    }

    private C5001a(String str, long j, long j2) {
        this.f21204a = str;
        this.f21205b = j;
        this.f21206c = j2;
    }

    @Override // com.google.firebase.installations.AbstractC5037l
    /* renamed from: a */
    public String mo1778a() {
        return this.f21204a;
    }

    @Override // com.google.firebase.installations.AbstractC5037l
    /* renamed from: b */
    public long mo1777b() {
        return this.f21205b;
    }

    @Override // com.google.firebase.installations.AbstractC5037l
    /* renamed from: c */
    public long mo1776c() {
        return this.f21206c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj instanceof AbstractC5037l) {
                AbstractC5037l abstractC5037l = (AbstractC5037l) obj;
                if (!this.f21204a.equals(abstractC5037l.mo1778a()) || this.f21205b != abstractC5037l.mo1777b() || this.f21206c != abstractC5037l.mo1776c()) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f21204a.hashCode() ^ 1000003) * 1000003) ^ ((int) ((this.f21205b >>> 32) ^ this.f21205b))) * 1000003) ^ ((int) ((this.f21206c >>> 32) ^ this.f21206c));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f21204a + ", tokenExpirationTimestamp=" + this.f21205b + ", tokenCreationTimestamp=" + this.f21206c + "}";
    }
}
