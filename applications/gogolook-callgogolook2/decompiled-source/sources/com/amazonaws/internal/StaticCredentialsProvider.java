package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/StaticCredentialsProvider.class */
public class StaticCredentialsProvider implements AWSCredentialsProvider {
    public final AWSCredentials credentials;

    public StaticCredentialsProvider(AWSCredentials aWSCredentials) {
        this.credentials = aWSCredentials;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials getCredentials() {
        return this.credentials;
    }
}
