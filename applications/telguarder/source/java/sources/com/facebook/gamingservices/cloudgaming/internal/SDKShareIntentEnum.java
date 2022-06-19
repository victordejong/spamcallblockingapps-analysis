package com.facebook.gamingservices.cloudgaming.internal;
/* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/cloudgaming/internal/SDKShareIntentEnum.class */
public enum SDKShareIntentEnum {
    INVITE("INVITE"),
    REQUEST("REQUEST"),
    CHALLENGE("CHALLENGE"),
    SHARE("SHARE");
    
    private final String mStringValue;

    SDKShareIntentEnum(String str) {
        this.mStringValue = str;
    }

    public static SDKShareIntentEnum fromString(String str) {
        SDKShareIntentEnum[] values;
        for (SDKShareIntentEnum sDKShareIntentEnum : values()) {
            if (sDKShareIntentEnum.toString().equals(str)) {
                return sDKShareIntentEnum;
            }
        }
        return null;
    }

    public static String validate(String str) {
        for (SDKShareIntentEnum sDKShareIntentEnum : values()) {
            if (sDKShareIntentEnum.toString().equals(str)) {
                return str;
            }
        }
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mStringValue;
    }
}
