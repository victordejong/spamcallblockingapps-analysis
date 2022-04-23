package com.privacystar.core.data.model.types;

import com.privacystar.core.data.model.BlockingOptionFields;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract;
import com.privacystar.core.util.DateUtil;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/types/SubscriptionType.class */
public enum SubscriptionType {
    ACTIVE(BlockingOptionFields.ACTIVE, DateUtil.DAY_IN_SECONDS),
    INACTIVE("inactive", 172800),
    TRIAL(SubscriptionContract.SubscriptionEntry.COLUMN_TRIAL, DateUtil.DAY_IN_SECONDS),
    FREE("free", DateUtil.DAY_IN_SECONDS),
    OFFLINE("offline", DateUtil.HOUR_IN_SECONDS),
    CONCLUDED("concluded", DateUtil.DAY_IN_SECONDS);
    
    private String displayName;
    private long licenseRefreshInterval;

    SubscriptionType(String str, long j) {
        this.displayName = str;
        this.licenseRefreshInterval = j;
    }

    public static SubscriptionType fromString(String str) {
        SubscriptionType[] values;
        for (SubscriptionType subscriptionType : values()) {
            if (subscriptionType.displayName.equalsIgnoreCase(str)) {
                return subscriptionType;
            }
        }
        return null;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public long getLicenseRefreshInterval() {
        return this.licenseRefreshInterval;
    }

    @Override // java.lang.Enum
    public String toString() {
        return getDisplayName();
    }
}
