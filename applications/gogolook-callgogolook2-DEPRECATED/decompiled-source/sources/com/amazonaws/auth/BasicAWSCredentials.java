package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/BasicAWSCredentials.class */
public class BasicAWSCredentials implements AWSCredentials {
    public final String accessKey;
    public final String secretKey;

    public BasicAWSCredentials(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Access key cannot be null.");
        } else if (str2 != null) {
            this.accessKey = str;
            this.secretKey = str2;
        } else {
            throw new IllegalArgumentException("Secret key cannot be null.");
        }
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String getAWSAccessKeyId() {
        return this.accessKey;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String getAWSSecretKey() {
        return this.secretKey;
    }
}
