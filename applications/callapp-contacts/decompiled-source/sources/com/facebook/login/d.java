package com.facebook.login;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/d.class */
public enum d {
    NATIVE_WITH_FALLBACK(true, true, true, false, true, true),
    NATIVE_ONLY(true, true, false, false, false, true),
    KATANA_ONLY(false, true, false, false, false, false),
    WEB_ONLY(false, false, true, false, true, false),
    WEB_VIEW_ONLY(false, false, true, false, false, false),
    DIALOG_ONLY(false, true, true, false, true, true),
    DEVICE_AUTH(false, false, false, true, false, false);
    
    private final boolean allowsCustomTabAuth;
    private final boolean allowsDeviceAuth;
    private final boolean allowsFacebookLiteAuth;
    private final boolean allowsGetTokenAuth;
    private final boolean allowsKatanaAuth;
    private final boolean allowsWebViewAuth;

    d(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.allowsGetTokenAuth = z;
        this.allowsKatanaAuth = z2;
        this.allowsWebViewAuth = z3;
        this.allowsDeviceAuth = z4;
        this.allowsCustomTabAuth = z5;
        this.allowsFacebookLiteAuth = z6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean allowsCustomTabAuth() {
        return this.allowsCustomTabAuth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean allowsDeviceAuth() {
        return this.allowsDeviceAuth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean allowsFacebookLiteAuth() {
        return this.allowsFacebookLiteAuth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean allowsGetTokenAuth() {
        return this.allowsGetTokenAuth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean allowsKatanaAuth() {
        return this.allowsKatanaAuth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean allowsWebViewAuth() {
        return this.allowsWebViewAuth;
    }
}
