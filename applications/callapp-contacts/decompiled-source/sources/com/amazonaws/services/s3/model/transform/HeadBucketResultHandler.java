package com.amazonaws.services.s3.model.transform;

import com.amazonaws.services.s3.internal.AbstractS3ResponseHandler;
import com.amazonaws.services.s3.model.HeadBucketResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/HeadBucketResultHandler.class */
public class HeadBucketResultHandler extends AbstractS3ResponseHandler<HeadBucketResult> {
    /* JADX WARN: Type inference failed for: r0v1, types: [T, com.amazonaws.services.s3.model.HeadBucketResult] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.amazonaws.http.HttpResponseHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.amazonaws.AmazonWebServiceResponse<com.amazonaws.services.s3.model.HeadBucketResult> handle(com.amazonaws.http.HttpResponse r5) throws java.lang.Exception {
        /*
            r4 = this;
            com.amazonaws.AmazonWebServiceResponse r0 = new com.amazonaws.AmazonWebServiceResponse
            r1 = r0
            r1.<init>()
            r6 = r0
            com.amazonaws.services.s3.model.HeadBucketResult r0 = new com.amazonaws.services.s3.model.HeadBucketResult
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r5
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.f6622d
            java.lang.String r2 = "x-amz-bucket-region"
            java.lang.Object r1 = r1.get(r2)
            java.lang.String r1 = (java.lang.String) r1
            r0.setBucketRegion(r1)
            r0 = r6
            r1 = r7
            r0.f6536a = r1
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.services.s3.model.transform.HeadBucketResultHandler.handle(com.amazonaws.http.HttpResponse):com.amazonaws.AmazonWebServiceResponse");
    }
}
