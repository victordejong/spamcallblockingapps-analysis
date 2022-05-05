package com.amazonaws.services.p017s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult;
/* renamed from: com.amazonaws.services.s3.internal.ServerSideEncryptionHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler.class */
public class ServerSideEncryptionHeaderHandler<T extends ServerSideEncryptionResult> implements HeaderHandler<T> {
    public void handle(T t, HttpResponse httpResponse) {
        t.setSSEAlgorithm(httpResponse.getHeaders().get("x-amz-server-side-encryption"));
        t.setSSECustomerAlgorithm(httpResponse.getHeaders().get("x-amz-server-side-encryption-customer-algorithm"));
        t.setSSECustomerKeyMd5(httpResponse.getHeaders().get("x-amz-server-side-encryption-customer-key-MD5"));
        t.setSSEKMSKeyId(httpResponse.getHeaders().get("x-amz-server-side-encryption-aws-kms-key-id"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.p017s3.internal.HeaderHandler
    public /* bridge */ /* synthetic */ void handle(Object obj, HttpResponse httpResponse) {
        handle((ServerSideEncryptionHeaderHandler<T>) ((ServerSideEncryptionResult) obj), httpResponse);
    }
}
