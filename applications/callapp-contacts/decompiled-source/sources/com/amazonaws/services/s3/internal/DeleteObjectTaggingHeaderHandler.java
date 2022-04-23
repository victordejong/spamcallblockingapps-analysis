package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.DeleteObjectTaggingResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/DeleteObjectTaggingHeaderHandler.class */
public class DeleteObjectTaggingHeaderHandler implements HeaderHandler<DeleteObjectTaggingResult> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    public final /* synthetic */ void a(DeleteObjectTaggingResult deleteObjectTaggingResult, HttpResponse httpResponse) {
        deleteObjectTaggingResult.setVersionId(httpResponse.f6622d.get("x-amz-version-id"));
    }
}
