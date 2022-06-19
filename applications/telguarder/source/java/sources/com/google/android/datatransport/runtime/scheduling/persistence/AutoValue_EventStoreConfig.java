package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig.class */
final class AutoValue_EventStoreConfig extends EventStoreConfig {
    private final int criticalSectionEnterTimeoutMs;
    private final long eventCleanUpAge;
    private final int loadBatchSize;
    private final int maxBlobByteSizePerRow;
    private final long maxStorageSizeInBytes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig$Builder.class */
    public static final class Builder extends EventStoreConfig.Builder {
        private Integer criticalSectionEnterTimeoutMs;
        private Long eventCleanUpAge;
        private Integer loadBatchSize;
        private Integer maxBlobByteSizePerRow;
        private Long maxStorageSizeInBytes;

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        EventStoreConfig build() {
            String str = "";
            if (this.maxStorageSizeInBytes == null) {
                str = " maxStorageSizeInBytes";
            }
            String str2 = str;
            if (this.loadBatchSize == null) {
                str2 = str + " loadBatchSize";
            }
            String str3 = str2;
            if (this.criticalSectionEnterTimeoutMs == null) {
                str3 = str2 + " criticalSectionEnterTimeoutMs";
            }
            String str4 = str3;
            if (this.eventCleanUpAge == null) {
                str4 = str3 + " eventCleanUpAge";
            }
            String str5 = str4;
            if (this.maxBlobByteSizePerRow == null) {
                str5 = str4 + " maxBlobByteSizePerRow";
            }
            if (str5.isEmpty()) {
                return new AutoValue_EventStoreConfig(this.maxStorageSizeInBytes.longValue(), this.loadBatchSize.intValue(), this.criticalSectionEnterTimeoutMs.intValue(), this.eventCleanUpAge.longValue(), this.maxBlobByteSizePerRow.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        EventStoreConfig.Builder setCriticalSectionEnterTimeoutMs(int i) {
            this.criticalSectionEnterTimeoutMs = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        EventStoreConfig.Builder setEventCleanUpAge(long j) {
            this.eventCleanUpAge = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        EventStoreConfig.Builder setLoadBatchSize(int i) {
            this.loadBatchSize = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        EventStoreConfig.Builder setMaxBlobByteSizePerRow(int i) {
            this.maxBlobByteSizePerRow = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig.Builder
        EventStoreConfig.Builder setMaxStorageSizeInBytes(long j) {
            this.maxStorageSizeInBytes = Long.valueOf(j);
            return this;
        }
    }

    private AutoValue_EventStoreConfig(long j, int i, int i2, long j2, int i3) {
        this.maxStorageSizeInBytes = j;
        this.loadBatchSize = i;
        this.criticalSectionEnterTimeoutMs = i2;
        this.eventCleanUpAge = j2;
        this.maxBlobByteSizePerRow = i3;
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
        if (this.maxStorageSizeInBytes != eventStoreConfig.getMaxStorageSizeInBytes() || this.loadBatchSize != eventStoreConfig.getLoadBatchSize() || this.criticalSectionEnterTimeoutMs != eventStoreConfig.getCriticalSectionEnterTimeoutMs() || this.eventCleanUpAge != eventStoreConfig.getEventCleanUpAge() || this.maxBlobByteSizePerRow != eventStoreConfig.getMaxBlobByteSizePerRow()) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public int getCriticalSectionEnterTimeoutMs() {
        return this.criticalSectionEnterTimeoutMs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public long getEventCleanUpAge() {
        return this.eventCleanUpAge;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public int getLoadBatchSize() {
        return this.loadBatchSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public int getMaxBlobByteSizePerRow() {
        return this.maxBlobByteSizePerRow;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStoreConfig
    public long getMaxStorageSizeInBytes() {
        return this.maxStorageSizeInBytes;
    }

    public int hashCode() {
        long j = this.maxStorageSizeInBytes;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.loadBatchSize;
        int i3 = this.criticalSectionEnterTimeoutMs;
        long j2 = this.eventCleanUpAge;
        return this.maxBlobByteSizePerRow ^ ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.maxStorageSizeInBytes + ", loadBatchSize=" + this.loadBatchSize + ", criticalSectionEnterTimeoutMs=" + this.criticalSectionEnterTimeoutMs + ", eventCleanUpAge=" + this.eventCleanUpAge + ", maxBlobByteSizePerRow=" + this.maxBlobByteSizePerRow + "}";
    }
}
