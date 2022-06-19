package com.freshchat.consumer.sdk.beans;

import com.freshchat.consumer.sdk.p057j.C1626as;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/FlowBusinessHourType.class */
public enum FlowBusinessHourType {
    BUSINESS_HOUR_INSIDE("BUSINESS_HOUR_INSIDE"),
    BUSINESS_HOUR_OUTSIDE("BUSINESS_HOUR_OUTSIDE"),
    BUSINESS_HOUR_ALWAYS("BUSINESS_HOUR_ALWAYS");
    
    private final String key;

    FlowBusinessHourType(String str) {
        this.key = str;
    }

    public static FlowBusinessHourType get(String str) {
        if (C1626as.isEmpty(str)) {
            return null;
        }
        FlowBusinessHourType[] values = values();
        for (int i = 0; i < 3; i++) {
            FlowBusinessHourType flowBusinessHourType = values[i];
            if (C1626as.m40223o(str, flowBusinessHourType.key)) {
                return flowBusinessHourType;
            }
        }
        return null;
    }
}
