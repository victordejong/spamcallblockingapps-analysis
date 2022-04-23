package com.facebook;
/* loaded from: classes3-dex2jar.jar:com/facebook/c.class */
public enum c {
    NONE(false),
    FACEBOOK_APPLICATION_WEB(true),
    FACEBOOK_APPLICATION_NATIVE(true),
    FACEBOOK_APPLICATION_SERVICE(true),
    WEB_VIEW(true),
    CHROME_CUSTOM_TAB(true),
    TEST_USER(true),
    CLIENT_TOKEN(true),
    DEVICE_AUTH(true);
    
    private final boolean canExtendToken;

    c(boolean z) {
        this.canExtendToken = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean canExtendToken() {
        return this.canExtendToken;
    }
}
