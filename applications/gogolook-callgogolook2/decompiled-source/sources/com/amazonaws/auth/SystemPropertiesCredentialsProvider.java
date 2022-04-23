package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/SystemPropertiesCredentialsProvider.class */
public class SystemPropertiesCredentialsProvider implements AWSCredentialsProvider {
    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials getCredentials() {
        if (System.getProperty("aws.accessKeyId") != null && System.getProperty("aws.secretKey") != null) {
            return new BasicAWSCredentials(System.getProperty("aws.accessKeyId"), System.getProperty("aws.secretKey"));
        }
        throw new AmazonClientException("Unable to load AWS credentials from Java system properties (aws.accessKeyId and aws.secretKey)");
    }

    public String toString() {
        return SystemPropertiesCredentialsProvider.class.getSimpleName();
    }
}
