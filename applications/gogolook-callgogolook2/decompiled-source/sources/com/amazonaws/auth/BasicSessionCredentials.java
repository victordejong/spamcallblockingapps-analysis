package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/BasicSessionCredentials.class */
public class BasicSessionCredentials implements AWSSessionCredentials {
    public final String awsAccessKey;
    public final String awsSecretKey;
    public final String sessionToken;

    public BasicSessionCredentials(String str, String str2, String str3) {
        this.awsAccessKey = str;
        this.awsSecretKey = str2;
        this.sessionToken = str3;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String getAWSAccessKeyId() {
        return this.awsAccessKey;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String getAWSSecretKey() {
        return this.awsSecretKey;
    }

    @Override // com.amazonaws.auth.AWSSessionCredentials
    public String getSessionToken() {
        return this.sessionToken;
    }
}
