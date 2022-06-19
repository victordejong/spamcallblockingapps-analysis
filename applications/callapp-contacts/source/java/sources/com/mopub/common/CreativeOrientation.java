package com.mopub.common;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/CreativeOrientation.class */
public enum CreativeOrientation {
    PORTRAIT,
    LANDSCAPE,
    DEVICE;

    public static CreativeOrientation fromString(String str) {
        return "l".equalsIgnoreCase(str) ? LANDSCAPE : "p".equalsIgnoreCase(str) ? PORTRAIT : DEVICE;
    }
}
