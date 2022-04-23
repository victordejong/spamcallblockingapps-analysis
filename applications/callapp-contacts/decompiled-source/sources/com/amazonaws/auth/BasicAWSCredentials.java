package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/BasicAWSCredentials.class */
public class BasicAWSCredentials implements AWSCredentials {

    /* renamed from: a  reason: collision with root package name */
    private final String f6565a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6566b;

    public BasicAWSCredentials(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Access key cannot be null.");
        } else if (str2 != null) {
            this.f6565a = str;
            this.f6566b = str2;
        } else {
            throw new IllegalArgumentException("Secret key cannot be null.");
        }
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public final String a() {
        return this.f6565a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public final String b() {
        return this.f6566b;
    }
}
