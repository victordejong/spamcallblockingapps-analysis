package com.facebook.login;
/* loaded from: classes3-dex2jar.jar:com/facebook/login/b.class */
public enum b {
    NONE(null),
    ONLY_ME("only_me"),
    FRIENDS("friends"),
    EVERYONE("everyone");
    
    private final String nativeProtocolAudience;

    b(String str) {
        this.nativeProtocolAudience = str;
    }

    public final String getNativeProtocolAudience() {
        return this.nativeProtocolAudience;
    }
}
