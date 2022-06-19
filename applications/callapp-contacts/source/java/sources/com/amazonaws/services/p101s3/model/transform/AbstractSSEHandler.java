package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult;
/* renamed from: com.amazonaws.services.s3.model.transform.AbstractSSEHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/AbstractSSEHandler.class */
abstract class AbstractSSEHandler extends AbstractHandler implements ServerSideEncryptionResult {
    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final String getSSEAlgorithm() {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult == null) {
            return null;
        }
        return sseResult.getSSEAlgorithm();
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final String getSSECustomerAlgorithm() {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult == null) {
            return null;
        }
        return sseResult.getSSECustomerAlgorithm();
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final String getSSECustomerKeyMd5() {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult == null) {
            return null;
        }
        return sseResult.getSSECustomerKeyMd5();
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final void setSSEAlgorithm(String str) {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult != null) {
            sseResult.setSSEAlgorithm(str);
        }
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final void setSSECustomerAlgorithm(String str) {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult != null) {
            sseResult.setSSECustomerAlgorithm(str);
        }
    }

    @Override // com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult
    public final void setSSECustomerKeyMd5(String str) {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult != null) {
            sseResult.setSSECustomerKeyMd5(str);
        }
    }

    protected abstract ServerSideEncryptionResult sseResult();
}
