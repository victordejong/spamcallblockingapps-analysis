package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.S3ObjectInputStream;
/* renamed from: com.amazonaws.services.s3.internal.S3ObjectResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3ObjectResponseHandler.class */
public class S3ObjectResponseHandler extends AbstractS3ResponseHandler<S3Object> {
    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.amazonaws.services.s3.model.S3Object] */
    @Override // com.amazonaws.http.HttpResponseHandler
    public /* synthetic */ Object handle(HttpResponse httpResponse) throws Exception {
        ?? s3Object = new S3Object();
        AmazonWebServiceResponse<S3Object> parseResponseMetadata = parseResponseMetadata(httpResponse);
        if (httpResponse.f12069d.get("x-amz-website-redirect-location") != null) {
            s3Object.setRedirectLocation(httpResponse.f12069d.get("x-amz-website-redirect-location"));
        }
        if (httpResponse.f12069d.get("x-amz-request-charged") != null) {
            s3Object.setRequesterCharged(true);
        }
        if (httpResponse.f12069d.get("x-amz-tagging-count") != null) {
            s3Object.setTaggingCount(Integer.valueOf(Integer.parseInt(httpResponse.f12069d.get("x-amz-tagging-count"))));
        }
        populateObjectMetadata(httpResponse, s3Object.getObjectMetadata());
        s3Object.setObjectContent(new S3ObjectInputStream(httpResponse.m38617a()));
        parseResponseMetadata.f11951a = s3Object;
        return parseResponseMetadata;
    }

    @Override // com.amazonaws.services.p101s3.internal.AbstractS3ResponseHandler, com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return true;
    }
}
