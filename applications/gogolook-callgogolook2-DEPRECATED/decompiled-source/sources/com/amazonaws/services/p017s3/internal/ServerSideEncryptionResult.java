package com.amazonaws.services.p017s3.internal;
/* renamed from: com.amazonaws.services.s3.internal.ServerSideEncryptionResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ServerSideEncryptionResult.class */
public interface ServerSideEncryptionResult {
    void setSSEAlgorithm(String str);

    void setSSECustomerAlgorithm(String str);

    void setSSECustomerKeyMd5(String str);

    void setSSEKMSKeyId(String str);
}
