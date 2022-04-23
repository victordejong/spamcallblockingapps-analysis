package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/StaticCredentialsProvider.class */
public class StaticCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: a  reason: collision with root package name */
    private final AWSCredentials f6641a;

    public StaticCredentialsProvider(AWSCredentials aWSCredentials) {
        this.f6641a = aWSCredentials;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public final AWSCredentials a() {
        return this.f6641a;
    }
}
