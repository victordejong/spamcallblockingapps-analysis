package com.freshchat.consumer.sdk;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/JwtTokenStatus.class */
public enum JwtTokenStatus {
    TOKEN_NOT_SET(1),
    TOKEN_NOT_PROCESSED(2),
    TOKEN_VALID(3),
    TOKEN_INVALID(4),
    TOKEN_EXPIRED(5);
    
    private final int intValue;

    JwtTokenStatus(int i) {
        this.intValue = i;
    }

    public static JwtTokenStatus fromInt(int i) {
        JwtTokenStatus[] values = values();
        for (int i2 = 0; i2 < 5; i2++) {
            JwtTokenStatus jwtTokenStatus = values[i2];
            if (jwtTokenStatus.asInt() == i) {
                return jwtTokenStatus;
            }
        }
        return TOKEN_NOT_SET;
    }

    public int asInt() {
        return this.intValue;
    }
}
