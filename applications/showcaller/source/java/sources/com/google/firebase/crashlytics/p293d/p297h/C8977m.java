package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.m */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/m.class */
final class C8977m extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a {

    /* renamed from: a */
    private final long f39129a;

    /* renamed from: b */
    private final long f39130b;

    /* renamed from: c */
    private final String f39131c;

    /* renamed from: d */
    private final String f39132d;

    /* renamed from: com.google.firebase.crashlytics.d.h.m$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/m$b.class */
    public static final class C8979b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a {

        /* renamed from: a */
        private Long f39133a;

        /* renamed from: b */
        private Long f39134b;

        /* renamed from: c */
        private String f39135c;

        /* renamed from: d */
        private String f39136d;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a mo2175a() {
            String str = "";
            if (this.f39133a == null) {
                str = " baseAddress";
            }
            String str2 = str;
            if (this.f39134b == null) {
                str2 = str + " size";
            }
            String str3 = str2;
            if (this.f39135c == null) {
                str3 = str2 + " name";
            }
            if (str3.isEmpty()) {
                return new C8977m(this.f39133a.longValue(), this.f39134b.longValue(), this.f39135c, this.f39136d);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a mo2174b(long j) {
            this.f39133a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a mo2173c(String str) {
            Objects.requireNonNull(str, "Null name");
            this.f39135c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a mo2172d(long j) {
            this.f39134b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a.AbstractC9024a mo2171e(String str) {
            this.f39136d = str;
            return this;
        }
    }

    private C8977m(long j, long j2, String str, String str2) {
        this.f39129a = j;
        this.f39130b = j2;
        this.f39131c = str;
        this.f39132d = str2;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a
    /* renamed from: b */
    public long mo2180b() {
        return this.f39129a;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a
    /* renamed from: c */
    public String mo2179c() {
        return this.f39131c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a
    /* renamed from: d */
    public long mo2178d() {
        return this.f39130b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a
    /* renamed from: e */
    public String mo2177e() {
        return this.f39132d;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a abstractC9023a = (AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9020a.AbstractC9022b.AbstractC9023a) obj;
        if (this.f39129a != abstractC9023a.mo2180b() || this.f39130b != abstractC9023a.mo2178d() || !this.f39131c.equals(abstractC9023a.mo2179c()) || ((str = this.f39132d) != null ? !str.equals(abstractC9023a.mo2177e()) : abstractC9023a.mo2177e() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f39129a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f39130b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        int hashCode = this.f39131c.hashCode();
        String str = this.f39132d;
        return (str == null ? 0 : str.hashCode()) ^ ((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003);
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f39129a + ", size=" + this.f39130b + ", name=" + this.f39131c + ", uuid=" + this.f39132d + "}";
    }
}
