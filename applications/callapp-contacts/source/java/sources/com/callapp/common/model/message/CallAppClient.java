package com.callapp.common.model.message;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/message/CallAppClient.class */
public enum CallAppClient {
    ANDROID,
    IPHONE;

    public static CallAppClient from(Integer num) {
        CallAppClient[] values = values();
        if (num == null || num.intValue() < 0 || num.intValue() >= values.length) {
            return null;
        }
        return values[num.intValue()];
    }
}
