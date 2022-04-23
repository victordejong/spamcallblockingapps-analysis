package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler.class */
public class ServerSideEncryptionHeaderHandler<T extends ServerSideEncryptionResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    public final /* synthetic */ void a(Object obj, HttpResponse httpResponse) {
        ServerSideEncryptionResult serverSideEncryptionResult = (ServerSideEncryptionResult) obj;
        serverSideEncryptionResult.setSSEAlgorithm(httpResponse.f6622d.get("x-amz-server-side-encryption"));
        serverSideEncryptionResult.setSSECustomerAlgorithm(httpResponse.f6622d.get("x-amz-server-side-encryption-customer-algorithm"));
        serverSideEncryptionResult.setSSECustomerKeyMd5(httpResponse.f6622d.get("x-amz-server-side-encryption-customer-key-MD5"));
    }
}
