package com.facebook.login;
/* renamed from: com.facebook.login.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/login/b.class */
public enum EnumC10380b {
    NONE(null),
    ONLY_ME("only_me"),
    FRIENDS("friends"),
    EVERYONE("everyone");
    
    private final String nativeProtocolAudience;

    EnumC10380b(String str) {
        this.nativeProtocolAudience = str;
    }

    public final String getNativeProtocolAudience() {
        return this.nativeProtocolAudience;
    }
}
