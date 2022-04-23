package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.model.S3Object;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3ObjectResponseHandler.class */
public class S3ObjectResponseHandler extends AbstractS3ResponseHandler<S3Object> {
    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.amazonaws.services.s3.model.S3Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.amazonaws.http.HttpResponseHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ java.lang.Object handle(com.amazonaws.http.HttpResponse r6) throws java.lang.Exception {
        /*
            r5 = this;
            com.amazonaws.services.s3.model.S3Object r0 = new com.amazonaws.services.s3.model.S3Object
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r5
            r1 = r6
            com.amazonaws.AmazonWebServiceResponse r0 = r0.parseResponseMetadata(r1)
            r8 = r0
            r0 = r6
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f6622d
            java.lang.String r1 = "x-amz-website-redirect-location"
            java.lang.Object r0 = r0.get(r1)
            if (r0 == 0) goto L_0x002e
            r0 = r7
            r1 = r6
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.f6622d
            java.lang.String r2 = "x-amz-website-redirect-location"
            java.lang.Object r1 = r1.get(r2)
            java.lang.String r1 = (java.lang.String) r1
            r0.setRedirectLocation(r1)
        L_0x002e:
            r0 = r6
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f6622d
            java.lang.String r1 = "x-amz-request-charged"
            java.lang.Object r0 = r0.get(r1)
            if (r0 == 0) goto L_0x0041
            r0 = r7
            r1 = 1
            r0.setRequesterCharged(r1)
        L_0x0041:
            r0 = r6
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f6622d
            java.lang.String r1 = "x-amz-tagging-count"
            java.lang.Object r0 = r0.get(r1)
            if (r0 == 0) goto L_0x0067
            r0 = r7
            r1 = r6
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.f6622d
            java.lang.String r2 = "x-amz-tagging-count"
            java.lang.Object r1 = r1.get(r2)
            java.lang.String r1 = (java.lang.String) r1
            int r1 = java.lang.Integer.parseInt(r1)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.setTaggingCount(r1)
        L_0x0067:
            r0 = r5
            r1 = r6
            r2 = r7
            com.amazonaws.services.s3.model.ObjectMetadata r2 = r2.getObjectMetadata()
            r0.populateObjectMetadata(r1, r2)
            r0 = r7
            com.amazonaws.services.s3.model.S3ObjectInputStream r1 = new com.amazonaws.services.s3.model.S3ObjectInputStream
            r2 = r1
            r3 = r6
            java.io.InputStream r3 = r3.a()
            r2.<init>(r3)
            r0.setObjectContent(r1)
            r0 = r8
            r1 = r7
            r0.f6536a = r1
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.services.s3.internal.S3ObjectResponseHandler.handle(com.amazonaws.http.HttpResponse):java.lang.Object");
    }

    @Override // com.amazonaws.services.s3.internal.AbstractS3ResponseHandler, com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return true;
    }
}
