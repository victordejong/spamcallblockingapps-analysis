package com.amazonaws.services.p101s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.model.DeleteObjectTaggingResult;
/* renamed from: com.amazonaws.services.s3.internal.DeleteObjectTaggingHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/DeleteObjectTaggingHeaderHandler.class */
public class DeleteObjectTaggingHeaderHandler implements HeaderHandler<DeleteObjectTaggingResult> {
    @Override // com.amazonaws.services.p101s3.internal.HeaderHandler
    /* renamed from: a */
    public final /* synthetic */ void mo38398a(DeleteObjectTaggingResult deleteObjectTaggingResult, HttpResponse httpResponse) {
        deleteObjectTaggingResult.setVersionId(httpResponse.f12069d.get("x-amz-version-id"));
    }
}
