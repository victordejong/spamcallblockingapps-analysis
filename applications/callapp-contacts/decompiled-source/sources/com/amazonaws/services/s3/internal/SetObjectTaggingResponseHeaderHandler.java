package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.SetObjectTaggingResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/SetObjectTaggingResponseHeaderHandler.class */
public class SetObjectTaggingResponseHeaderHandler implements HeaderHandler<SetObjectTaggingResult> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    public final /* synthetic */ void a(SetObjectTaggingResult setObjectTaggingResult, HttpResponse httpResponse) {
        setObjectTaggingResult.setVersionId(httpResponse.f6622d.get("x-amz-version-id"));
    }
}
