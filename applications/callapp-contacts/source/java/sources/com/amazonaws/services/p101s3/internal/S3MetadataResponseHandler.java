package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.model.ObjectMetadata;
/* renamed from: com.amazonaws.services.s3.internal.S3MetadataResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3MetadataResponseHandler.class */
public class S3MetadataResponseHandler extends AbstractS3ResponseHandler<ObjectMetadata> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.amazonaws.services.s3.model.ObjectMetadata] */
    @Override // com.amazonaws.http.HttpResponseHandler
    public /* synthetic */ Object handle(HttpResponse httpResponse) throws Exception {
        ?? objectMetadata = new ObjectMetadata();
        populateObjectMetadata(httpResponse, objectMetadata);
        AmazonWebServiceResponse parseResponseMetadata = parseResponseMetadata(httpResponse);
        parseResponseMetadata.f11951a = objectMetadata;
        return parseResponseMetadata;
    }
}
