package com.freshchat.consumer.sdk.beans;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/MarketingMessageStatus.class */
public class MarketingMessageStatus {
    private int clicked;
    private int delivered;
    private long marketingId;
    private int seen;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder.class */
    public static class Builder {
        private int clicked;
        private int delivered;
        private long marketingId;
        private int seen;

        public MarketingMessageStatus build() {
            MarketingMessageStatus marketingMessageStatus = new MarketingMessageStatus();
            marketingMessageStatus.delivered = this.delivered;
            marketingMessageStatus.seen = this.seen;
            marketingMessageStatus.clicked = this.clicked;
            marketingMessageStatus.marketingId = this.marketingId;
            return marketingMessageStatus;
        }

        public Builder clicked(int i) {
            this.clicked = i;
            return this;
        }

        public Builder delivered(int i) {
            this.delivered = i;
            return this;
        }

        public Builder marketingId(long j) {
            this.marketingId = j;
            return this;
        }

        public Builder seen(int i) {
            this.seen = i;
            return this;
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (this.marketingId != ((MarketingMessageStatus) obj).marketingId) {
            z = false;
        }
        return z;
    }

    public int getClicked() {
        return this.clicked;
    }

    public int getDelivered() {
        return this.delivered;
    }

    public long getMarketingId() {
        return this.marketingId;
    }

    public int getSeen() {
        return this.seen;
    }

    public int hashCode() {
        long j = this.marketingId;
        return 31 + ((int) (j ^ (j >>> 32)));
    }

    public void setClicked(int i) {
        this.clicked = i;
    }

    public void setDelivered(int i) {
        this.delivered = i;
    }

    public void setMarketingId(long j) {
        this.marketingId = j;
    }

    public void setSeen(int i) {
        this.seen = i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MarketingMessageStatus [delivered=");
        m8728C.append(this.delivered);
        m8728C.append(", seen=");
        m8728C.append(this.seen);
        m8728C.append(", clicked=");
        m8728C.append(this.clicked);
        m8728C.append(", marketingId=");
        return C22128a.m8693K2(m8728C, this.marketingId, "]");
    }
}
