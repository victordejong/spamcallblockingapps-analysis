package com.google.android.datatransport.p232h.p237x.p238j;

import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d;
/* renamed from: com.google.android.datatransport.h.x.j.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/a.class */
final class C4700a extends AbstractC4712d {

    /* renamed from: b */
    private final long f14283b;

    /* renamed from: c */
    private final int f14284c;

    /* renamed from: d */
    private final int f14285d;

    /* renamed from: e */
    private final long f14286e;

    /* renamed from: f */
    private final int f14287f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.h.x.j.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/a$b.class */
    public static final class C4702b extends AbstractC4712d.AbstractC4713a {

        /* renamed from: a */
        private Long f14288a;

        /* renamed from: b */
        private Integer f14289b;

        /* renamed from: c */
        private Integer f14290c;

        /* renamed from: d */
        private Long f14291d;

        /* renamed from: e */
        private Integer f14292e;

        @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d.AbstractC4713a
        /* renamed from: a */
        AbstractC4712d mo21916a() {
            String str = "";
            if (this.f14288a == null) {
                str = " maxStorageSizeInBytes";
            }
            String str2 = str;
            if (this.f14289b == null) {
                str2 = str + " loadBatchSize";
            }
            String str3 = str2;
            if (this.f14290c == null) {
                str3 = str2 + " criticalSectionEnterTimeoutMs";
            }
            String str4 = str3;
            if (this.f14291d == null) {
                str4 = str3 + " eventCleanUpAge";
            }
            String str5 = str4;
            if (this.f14292e == null) {
                str5 = str4 + " maxBlobByteSizePerRow";
            }
            if (str5.isEmpty()) {
                return new C4700a(this.f14288a.longValue(), this.f14289b.intValue(), this.f14290c.intValue(), this.f14291d.longValue(), this.f14292e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d.AbstractC4713a
        /* renamed from: b */
        AbstractC4712d.AbstractC4713a mo21915b(int i) {
            this.f14290c = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d.AbstractC4713a
        /* renamed from: c */
        AbstractC4712d.AbstractC4713a mo21914c(long j) {
            this.f14291d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d.AbstractC4713a
        /* renamed from: d */
        AbstractC4712d.AbstractC4713a mo21913d(int i) {
            this.f14289b = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d.AbstractC4713a
        /* renamed from: e */
        AbstractC4712d.AbstractC4713a mo21912e(int i) {
            this.f14292e = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d.AbstractC4713a
        /* renamed from: f */
        AbstractC4712d.AbstractC4713a mo21911f(long j) {
            this.f14288a = Long.valueOf(j);
            return this;
        }
    }

    private C4700a(long j, int i, int i2, long j2, int i3) {
        this.f14283b = j;
        this.f14284c = i;
        this.f14285d = i2;
        this.f14286e = j2;
        this.f14287f = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d
    /* renamed from: b */
    public int mo21921b() {
        return this.f14285d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d
    /* renamed from: c */
    public long mo21920c() {
        return this.f14286e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d
    /* renamed from: d */
    public int mo21919d() {
        return this.f14284c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d
    /* renamed from: e */
    public int mo21918e() {
        return this.f14287f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4712d)) {
            return false;
        }
        AbstractC4712d abstractC4712d = (AbstractC4712d) obj;
        if (this.f14283b != abstractC4712d.mo21917f() || this.f14284c != abstractC4712d.mo21919d() || this.f14285d != abstractC4712d.mo21921b() || this.f14286e != abstractC4712d.mo21920c() || this.f14287f != abstractC4712d.mo21918e()) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4712d
    /* renamed from: f */
    public long mo21917f() {
        return this.f14283b;
    }

    public int hashCode() {
        long j = this.f14283b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f14284c;
        int i3 = this.f14285d;
        long j2 = this.f14286e;
        return this.f14287f ^ ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f14283b + ", loadBatchSize=" + this.f14284c + ", criticalSectionEnterTimeoutMs=" + this.f14285d + ", eventCleanUpAge=" + this.f14286e + ", maxBlobByteSizePerRow=" + this.f14287f + "}";
    }
}
