package com.amazonaws.services.p101s3.internal;
/* renamed from: com.amazonaws.services.s3.internal.SSEResultBase */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/SSEResultBase.class */
public abstract class SSEResultBase implements ServerSideEncryptionResult {
    private String sseAlgorithm;
    private String sseCustomerAlgorithm;
    private String sseCustomerKeyMD5;

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final String getSSEAlgorithm() {
        return this.sseAlgorithm;
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final String getSSECustomerAlgorithm() {
        return this.sseCustomerAlgorithm;
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final String getSSECustomerKeyMd5() {
        return this.sseCustomerKeyMD5;
    }

    @Deprecated
    public final String getServerSideEncryption() {
        return this.sseAlgorithm;
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final void setSSEAlgorithm(String str) {
        this.sseAlgorithm = str;
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final void setSSECustomerAlgorithm(String str) {
        this.sseCustomerAlgorithm = str;
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final void setSSECustomerKeyMd5(String str) {
        this.sseCustomerKeyMD5 = str;
    }
}
