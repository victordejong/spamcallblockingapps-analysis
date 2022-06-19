package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/BasicAWSCredentials.class */
public class BasicAWSCredentials implements AWSCredentials {

    /* renamed from: a */
    private final String f12000a;

    /* renamed from: b */
    private final String f12001b;

    public BasicAWSCredentials(String str, String str2) {
        if (str != null) {
            if (str2 == null) {
                throw new IllegalArgumentException("Secret key cannot be null.");
            }
            this.f12000a = str;
            this.f12001b = str2;
            return;
        }
        throw new IllegalArgumentException("Access key cannot be null.");
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: a */
    public final String mo38659a() {
        return this.f12000a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: b */
    public final String mo38658b() {
        return this.f12001b;
    }
}
