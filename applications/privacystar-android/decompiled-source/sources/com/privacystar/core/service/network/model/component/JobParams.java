package com.privacystar.core.service.network.model.component;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/JobParams.class */
public final class JobParams {
    private final long delayInMs;
    private final boolean eulaBlockedData;
    private final String groupId;
    private final Integer retries;
    private final boolean shouldPersist;
    private final String singleId;
    private final String[] tags;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/JobParams$Builder.class */
    public static class Builder {
        private long delayInMs;
        private boolean shouldPersist = false;
        private String groupId = null;
        private String singleId = null;
        private String[] tags = new String[0];
        private Integer retries = 1;
        private boolean eulaBlockedData = false;

        public JobParams build() {
            return new JobParams(this.shouldPersist, this.groupId, this.singleId, this.tags, this.delayInMs, this.retries, this.eulaBlockedData);
        }

        public Builder delayInMs(long j) {
            this.delayInMs = j;
            return this;
        }

        public Builder groupId(String str) {
            this.groupId = str;
            return this;
        }

        public Builder hasEulaBlockedData(boolean z) {
            this.eulaBlockedData = z;
            return this;
        }

        public Builder retries(Integer num) {
            this.retries = num;
            return this;
        }

        public Builder shouldPersist(boolean z) {
            this.shouldPersist = z;
            return this;
        }

        public Builder singleId(String str) {
            this.singleId = str;
            return this;
        }

        public Builder tags(String[] strArr) {
            this.tags = strArr;
            return this;
        }
    }

    public JobParams(boolean z, String str, String str2, String[] strArr, long j, Integer num, boolean z2) {
        this.shouldPersist = z;
        this.groupId = str;
        this.singleId = str2;
        this.tags = strArr;
        this.delayInMs = j;
        this.retries = num;
        this.eulaBlockedData = z2;
    }

    public long getDelayInMs() {
        return this.delayInMs;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public Integer getRetries() {
        return this.retries;
    }

    public String getSingleId() {
        return this.singleId;
    }

    public String[] getTags() {
        return this.tags;
    }

    public boolean hasEulaBlockedData() {
        return this.eulaBlockedData;
    }

    public boolean shouldPersist() {
        return this.shouldPersist;
    }
}
