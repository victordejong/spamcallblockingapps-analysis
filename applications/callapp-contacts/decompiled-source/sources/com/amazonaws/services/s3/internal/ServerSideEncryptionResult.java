package com.amazonaws.services.s3.internal;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ServerSideEncryptionResult.class */
public interface ServerSideEncryptionResult {
    String getSSEAlgorithm();

    String getSSECustomerAlgorithm();

    String getSSECustomerKeyMd5();

    void setSSEAlgorithm(String str);

    void setSSECustomerAlgorithm(String str);

    void setSSECustomerKeyMd5(String str);
}
