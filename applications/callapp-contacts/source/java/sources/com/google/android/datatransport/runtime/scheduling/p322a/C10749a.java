package com.google.android.datatransport.runtime.scheduling.p322a;

import com.callapp.contacts.model.Constants;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d;
/* renamed from: com.google.android.datatransport.runtime.scheduling.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/a.class */
final class C10749a extends AbstractC10763d {

    /* renamed from: b */
    private final long f34622b;

    /* renamed from: c */
    private final int f34623c;

    /* renamed from: d */
    private final int f34624d;

    /* renamed from: e */
    private final long f34625e;

    /* renamed from: f */
    private final int f34626f;

    /* renamed from: com.google.android.datatransport.runtime.scheduling.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/a$a.class */
    static final class C10751a extends AbstractC10763d.AbstractC10764a {

        /* renamed from: a */
        private Long f34627a;

        /* renamed from: b */
        private Integer f34628b;

        /* renamed from: c */
        private Integer f34629c;

        /* renamed from: d */
        private Long f34630d;

        /* renamed from: e */
        private Integer f34631e;

        @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d.AbstractC10764a
        /* renamed from: a */
        final AbstractC10763d.AbstractC10764a mo22414a() {
            this.f34627a = 10485760L;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d.AbstractC10764a
        /* renamed from: b */
        final AbstractC10763d.AbstractC10764a mo22413b() {
            this.f34628b = 200;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d.AbstractC10764a
        /* renamed from: c */
        final AbstractC10763d.AbstractC10764a mo22412c() {
            this.f34629c = 10000;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d.AbstractC10764a
        /* renamed from: d */
        final AbstractC10763d.AbstractC10764a mo22411d() {
            this.f34630d = Long.valueOf((long) Constants.WEEK_IN_MILLIS);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d.AbstractC10764a
        /* renamed from: e */
        final AbstractC10763d.AbstractC10764a mo22410e() {
            this.f34631e = 81920;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d.AbstractC10764a
        /* renamed from: f */
        final AbstractC10763d mo22409f() {
            String str = "";
            if (this.f34627a == null) {
                str = " maxStorageSizeInBytes";
            }
            String str2 = str;
            if (this.f34628b == null) {
                str2 = str + " loadBatchSize";
            }
            String str3 = str2;
            if (this.f34629c == null) {
                str3 = str2 + " criticalSectionEnterTimeoutMs";
            }
            String str4 = str3;
            if (this.f34630d == null) {
                str4 = str3 + " eventCleanUpAge";
            }
            String str5 = str4;
            if (this.f34631e == null) {
                str5 = str4 + " maxBlobByteSizePerRow";
            }
            if (str5.isEmpty()) {
                return new C10749a(this.f34627a.longValue(), this.f34628b.intValue(), this.f34629c.intValue(), this.f34630d.longValue(), this.f34631e.intValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str5)));
        }
    }

    private C10749a(long j, int i, int i2, long j2, int i3) {
        this.f34622b = j;
        this.f34623c = i;
        this.f34624d = i2;
        this.f34625e = j2;
        this.f34626f = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d
    /* renamed from: a */
    public final long mo22419a() {
        return this.f34622b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d
    /* renamed from: b */
    public final int mo22418b() {
        return this.f34623c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d
    /* renamed from: c */
    public final int mo22417c() {
        return this.f34624d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d
    /* renamed from: d */
    public final long mo22416d() {
        return this.f34625e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10763d
    /* renamed from: e */
    public final int mo22415e() {
        return this.f34626f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10763d)) {
            return false;
        }
        AbstractC10763d abstractC10763d = (AbstractC10763d) obj;
        return this.f34622b == abstractC10763d.mo22419a() && this.f34623c == abstractC10763d.mo22418b() && this.f34624d == abstractC10763d.mo22417c() && this.f34625e == abstractC10763d.mo22416d() && this.f34626f == abstractC10763d.mo22415e();
    }

    public final int hashCode() {
        long j = this.f34622b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f34623c;
        int i3 = this.f34624d;
        long j2 = this.f34625e;
        return this.f34626f ^ ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public final String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f34622b + ", loadBatchSize=" + this.f34623c + ", criticalSectionEnterTimeoutMs=" + this.f34624d + ", eventCleanUpAge=" + this.f34625e + ", maxBlobByteSizePerRow=" + this.f34626f + "}";
    }
}
