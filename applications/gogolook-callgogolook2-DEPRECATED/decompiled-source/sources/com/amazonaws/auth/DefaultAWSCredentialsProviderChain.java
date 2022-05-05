package com.amazonaws.auth;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/DefaultAWSCredentialsProviderChain.class */
public class DefaultAWSCredentialsProviderChain extends AWSCredentialsProviderChain {
    public DefaultAWSCredentialsProviderChain() {
        super(new SystemPropertiesCredentialsProvider(), new ClasspathPropertiesFileCredentialsProvider());
    }
}
