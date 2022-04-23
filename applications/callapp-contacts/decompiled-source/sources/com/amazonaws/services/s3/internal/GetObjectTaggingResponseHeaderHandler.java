package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.GetObjectTaggingResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/GetObjectTaggingResponseHeaderHandler.class */
public class GetObjectTaggingResponseHeaderHandler implements HeaderHandler<GetObjectTaggingResult> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    public final /* synthetic */ void a(GetObjectTaggingResult getObjectTaggingResult, HttpResponse httpResponse) {
        getObjectTaggingResult.setVersionId(httpResponse.f6622d.get("x-amz-version-id"));
    }
}
