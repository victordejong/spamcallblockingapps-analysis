package com.google.firebase.installations.p168b;

import com.google.firebase.installations.p168b.AbstractC5023e;
/* renamed from: com.google.firebase.installations.b.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b/b.class */
final class C5016b extends AbstractC5023e {

    /* renamed from: a */
    private final String f21248a;

    /* renamed from: b */
    private final long f21249b;

    /* renamed from: c */
    private final AbstractC5023e.EnumC5025b f21250c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.installations.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b/b$a.class */
    public static final class C5018a extends AbstractC5023e.AbstractC5024a {

        /* renamed from: a */
        private String f21251a;

        /* renamed from: b */
        private Long f21252b;

        /* renamed from: c */
        private AbstractC5023e.EnumC5025b f21253c;

        @Override // com.google.firebase.installations.p168b.AbstractC5023e.AbstractC5024a
        /* renamed from: a */
        public AbstractC5023e.AbstractC5024a mo1810a(long j) {
            this.f21252b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.installations.p168b.AbstractC5023e.AbstractC5024a
        /* renamed from: a */
        public AbstractC5023e.AbstractC5024a mo1809a(AbstractC5023e.EnumC5025b enumC5025b) {
            this.f21253c = enumC5025b;
            return this;
        }

        @Override // com.google.firebase.installations.p168b.AbstractC5023e.AbstractC5024a
        /* renamed from: a */
        public AbstractC5023e.AbstractC5024a mo1808a(String str) {
            this.f21251a = str;
            return this;
        }

        @Override // com.google.firebase.installations.p168b.AbstractC5023e.AbstractC5024a
        /* renamed from: a */
        public AbstractC5023e mo1811a() {
            String str = "";
            if (this.f21252b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (!str.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str);
            }
            return new C5016b(this.f21251a, this.f21252b.longValue(), this.f21253c);
        }
    }

    private C5016b(String str, long j, AbstractC5023e.EnumC5025b enumC5025b) {
        this.f21248a = str;
        this.f21249b = j;
        this.f21250c = enumC5025b;
    }

    @Override // com.google.firebase.installations.p168b.AbstractC5023e
    /* renamed from: a */
    public String mo1815a() {
        return this.f21248a;
    }

    @Override // com.google.firebase.installations.p168b.AbstractC5023e
    /* renamed from: b */
    public long mo1814b() {
        return this.f21249b;
    }

    @Override // com.google.firebase.installations.p168b.AbstractC5023e
    /* renamed from: c */
    public AbstractC5023e.EnumC5025b mo1813c() {
        return this.f21250c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj instanceof AbstractC5023e) {
                AbstractC5023e abstractC5023e = (AbstractC5023e) obj;
                if (this.f21248a != null ? this.f21248a.equals(abstractC5023e.mo1815a()) : abstractC5023e.mo1815a() == null) {
                    if (this.f21249b == abstractC5023e.mo1814b()) {
                        if (this.f21250c == null) {
                        }
                    }
                }
                z = false;
            } else {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f21248a == null ? 0 : this.f21248a.hashCode();
        int i2 = (int) ((this.f21249b >>> 32) ^ this.f21249b);
        if (this.f21250c != null) {
            i = this.f21250c.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public String toString() {
        return "TokenResult{token=" + this.f21248a + ", tokenExpirationTimestamp=" + this.f21249b + ", responseCode=" + this.f21250c + "}";
    }
}
