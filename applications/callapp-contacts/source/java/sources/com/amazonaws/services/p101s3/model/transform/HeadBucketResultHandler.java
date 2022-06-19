package com.amazonaws.services.p101s3.model.transform;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.internal.AbstractS3ResponseHandler;
import com.amazonaws.services.p101s3.model.HeadBucketResult;
/* renamed from: com.amazonaws.services.s3.model.transform.HeadBucketResultHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/HeadBucketResultHandler.class */
public class HeadBucketResultHandler extends AbstractS3ResponseHandler<HeadBucketResult> {
    /* JADX WARN: Type inference failed for: r0v1, types: [T, com.amazonaws.services.s3.model.HeadBucketResult] */
    @Override // com.amazonaws.http.HttpResponseHandler
    public AmazonWebServiceResponse<HeadBucketResult> handle(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<HeadBucketResult> amazonWebServiceResponse = new AmazonWebServiceResponse<>();
        ?? headBucketResult = new HeadBucketResult();
        headBucketResult.setBucketRegion(httpResponse.f12069d.get("x-amz-bucket-region"));
        amazonWebServiceResponse.f11951a = headBucketResult;
        return amazonWebServiceResponse;
    }
}
