package com.amazonaws.services.p101s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.model.SetObjectTaggingResult;
/* renamed from: com.amazonaws.services.s3.internal.SetObjectTaggingResponseHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/SetObjectTaggingResponseHeaderHandler.class */
public class SetObjectTaggingResponseHeaderHandler implements HeaderHandler<SetObjectTaggingResult> {
    @Override // com.amazonaws.services.p101s3.internal.HeaderHandler
    /* renamed from: a */
    public final /* synthetic */ void mo38398a(SetObjectTaggingResult setObjectTaggingResult, HttpResponse httpResponse) {
        setObjectTaggingResult.setVersionId(httpResponse.f12069d.get("x-amz-version-id"));
    }
}
