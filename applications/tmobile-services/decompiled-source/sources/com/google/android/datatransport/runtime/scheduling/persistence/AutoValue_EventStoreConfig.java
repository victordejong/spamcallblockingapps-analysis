package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig.class */
final class AutoValue_EventStoreConfig extends EventStoreConfig {

    /* renamed from: b */
    private final long f6768b;

    /* renamed from: c */
    private final int f6769c;

    /* renamed from: d */
    private final int f6770d;

    /* renamed from: e */
    private final long f6771e;

    /* renamed from: f */
    private final int f6772f;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder.class */
    static final class Builder extends EventStoreConfig.Builder {

        /* renamed from: a */
        private Long f6773a;

        /* renamed from: b */
        private Integer f6774b;

        /* renamed from: c */
        private Integer f6775c;

        /* renamed from: d */
        private Long f6776d;

        /* renamed from: e */
        private Integer f6777e;

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        /* renamed from: a */
        EventStoreConfig mo15297a() {
            String str = "";
            if (this.f6773a == null) {
                str = " maxStorageSizeInBytes";
            }
            String str2 = str;
            if (this.f6774b == null) {
                str2 = str + " loadBatchSize";
            }
            String str3 = str2;
            if (this.f6775c == null) {
                str3 = str2 + " criticalSectionEnterTimeoutMs";
            }
            String str4 = str3;
            if (this.f6776d == null) {
                str4 = str3 + " eventCleanUpAge";
            }
            String str5 = str4;
            if (this.f6777e == null) {
                str5 = str4 + " maxBlobByteSizePerRow";
            }
            if (str5.isEmpty()) {
                return new AutoValue_EventStoreConfig(this.f6773a.longValue(), this.f6774b.intValue(), this.f6775c.intValue(), this.f6776d.longValue(), this.f6777e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        /* renamed from: b */
        EventStoreConfig.Builder mo15296b(int i) {
            this.f6775c = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        /* renamed from: c */
        EventStoreConfig.Builder mo15295c(long j) {
            this.f6776d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        /* renamed from: d */
        EventStoreConfig.Builder mo15294d(int i) {
            this.f6774b = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        /* renamed from: e */
        EventStoreConfig.Builder mo15293e(int i) {
            this.f6777e = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        /* renamed from: f */
        EventStoreConfig.Builder mo15292f(long j) {
            this.f6773a = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_EventStoreConfig(long j, int i, int i2, long j2, int i3) {
        this.f6768b = j;
        this.f6769c = i;
        this.f6770d = i2;
        this.f6771e = j2;
        this.f6772f = i3;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    /* renamed from: b */
    int mo15302b() {
        return this.f6770d;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    /* renamed from: c */
    long mo15301c() {
        return this.f6771e;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    /* renamed from: d */
    int mo15300d() {
        return this.f6769c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    /* renamed from: e */
    int mo15299e() {
        return this.f6772f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EventStoreConfig)) {
            return false;
        }
        EventStoreConfig eventStoreConfig = (EventStoreConfig) obj;
        if (!(this.f6768b == eventStoreConfig.mo15298f() && this.f6769c == eventStoreConfig.mo15300d() && this.f6770d == eventStoreConfig.mo15302b() && this.f6771e == eventStoreConfig.mo15301c() && this.f6772f == eventStoreConfig.mo15299e())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    /* renamed from: f */
    long mo15298f() {
        return this.f6768b;
    }

    public int hashCode() {
        long j = this.f6768b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f6769c;
        int i3 = this.f6770d;
        long j2 = this.f6771e;
        return this.f6772f ^ ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f6768b + ", loadBatchSize=" + this.f6769c + ", criticalSectionEnterTimeoutMs=" + this.f6770d + ", eventCleanUpAge=" + this.f6771e + ", maxBlobByteSizePerRow=" + this.f6772f + "}";
    }
}
