package com.amazonaws.services.p101s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.model.GetObjectTaggingResult;
/* renamed from: com.amazonaws.services.s3.internal.GetObjectTaggingResponseHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/GetObjectTaggingResponseHeaderHandler.class */
public class GetObjectTaggingResponseHeaderHandler implements HeaderHandler<GetObjectTaggingResult> {
    @Override // com.amazonaws.services.p101s3.internal.HeaderHandler
    /* renamed from: a */
    public final /* synthetic */ void mo38398a(GetObjectTaggingResult getObjectTaggingResult, HttpResponse httpResponse) {
        getObjectTaggingResult.setVersionId(httpResponse.f12069d.get("x-amz-version-id"));
    }
}
