package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/SignatureVersion.class */
public enum SignatureVersion {
    V1("1"),
    V2("2");
    
    private String value;

    SignatureVersion(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.value;
    }
}
