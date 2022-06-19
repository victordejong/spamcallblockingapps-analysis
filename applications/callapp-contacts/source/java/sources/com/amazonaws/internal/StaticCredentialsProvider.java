package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/StaticCredentialsProvider.class */
public class StaticCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: a */
    private final AWSCredentials f12092a;

    public StaticCredentialsProvider(AWSCredentials aWSCredentials) {
        this.f12092a = aWSCredentials;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    /* renamed from: a */
    public final AWSCredentials mo38581a() {
        return this.f12092a;
    }
}
