package com.amazonaws.services.p101s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.internal.ServerSideEncryptionResult;
/* renamed from: com.amazonaws.services.s3.internal.ServerSideEncryptionHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler.class */
public class ServerSideEncryptionHeaderHandler<T extends ServerSideEncryptionResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.p101s3.internal.HeaderHandler
    /* renamed from: a */
    public final /* synthetic */ void mo38398a(Object obj, HttpResponse httpResponse) {
        ServerSideEncryptionResult serverSideEncryptionResult = (ServerSideEncryptionResult) obj;
        serverSideEncryptionResult.setSSEAlgorithm(httpResponse.f12069d.get("x-amz-server-side-encryption"));
        serverSideEncryptionResult.setSSECustomerAlgorithm(httpResponse.f12069d.get("x-amz-server-side-encryption-customer-algorithm"));
        serverSideEncryptionResult.setSSECustomerKeyMd5(httpResponse.f12069d.get("x-amz-server-side-encryption-customer-key-MD5"));
    }
}
