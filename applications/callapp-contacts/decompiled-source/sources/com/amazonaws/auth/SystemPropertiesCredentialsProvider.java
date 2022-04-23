package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.SDKGlobalConfiguration;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/SystemPropertiesCredentialsProvider.class */
public class SystemPropertiesCredentialsProvider implements AWSCredentialsProvider {
    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public final AWSCredentials a() {
        if (System.getProperty(SDKGlobalConfiguration.ACCESS_KEY_SYSTEM_PROPERTY) != null && System.getProperty(SDKGlobalConfiguration.SECRET_KEY_SYSTEM_PROPERTY) != null) {
            return new BasicAWSCredentials(System.getProperty(SDKGlobalConfiguration.ACCESS_KEY_SYSTEM_PROPERTY), System.getProperty(SDKGlobalConfiguration.SECRET_KEY_SYSTEM_PROPERTY));
        }
        throw new AmazonClientException("Unable to load AWS credentials from Java system properties (aws.accessKeyId and aws.secretKey)");
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
