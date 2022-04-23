package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.model.ObjectMetadata;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3MetadataResponseHandler.class */
public class S3MetadataResponseHandler extends AbstractS3ResponseHandler<ObjectMetadata> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.amazonaws.services.s3.model.ObjectMetadata] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.amazonaws.http.HttpResponseHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ java.lang.Object handle(com.amazonaws.http.HttpResponse r5) throws java.lang.Exception {
        /*
            r4 = this;
            com.amazonaws.services.s3.model.ObjectMetadata r0 = new com.amazonaws.services.s3.model.ObjectMetadata
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r4
            r1 = r5
            r2 = r6
            r0.populateObjectMetadata(r1, r2)
            r0 = r4
            r1 = r5
            com.amazonaws.AmazonWebServiceResponse r0 = r0.parseResponseMetadata(r1)
            r5 = r0
            r0 = r5
            r1 = r6
            r0.f6536a = r1
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.services.s3.internal.S3MetadataResponseHandler.handle(com.amazonaws.http.HttpResponse):java.lang.Object");
    }
}
