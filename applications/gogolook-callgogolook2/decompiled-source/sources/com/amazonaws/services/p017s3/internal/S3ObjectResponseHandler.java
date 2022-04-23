package com.amazonaws.services.p017s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p017s3.model.S3Object;
import com.amazonaws.services.p017s3.model.S3ObjectInputStream;
/* renamed from: com.amazonaws.services.s3.internal.S3ObjectResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3ObjectResponseHandler.class */
public class S3ObjectResponseHandler extends AbstractS3ResponseHandler<S3Object> {
    @Override // com.amazonaws.http.HttpResponseHandler
    public AmazonWebServiceResponse<S3Object> handle(HttpResponse httpResponse) throws Exception {
        S3Object s3Object = new S3Object();
        AmazonWebServiceResponse<S3Object> parseResponseMetadata = parseResponseMetadata(httpResponse);
        if (httpResponse.getHeaders().get("x-amz-website-redirect-location") != null) {
            s3Object.setRedirectLocation(httpResponse.getHeaders().get("x-amz-website-redirect-location"));
        }
        if (httpResponse.getHeaders().get("x-amz-request-charged") != null) {
            s3Object.setRequesterCharged(true);
        }
        populateObjectMetadata(httpResponse, s3Object.getObjectMetadata());
        s3Object.setObjectContent(new S3ObjectInputStream(httpResponse.getContent()));
        parseResponseMetadata.setResult(s3Object);
        return parseResponseMetadata;
    }

    @Override // com.amazonaws.services.p017s3.internal.AbstractS3ResponseHandler, com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return true;
    }
}
