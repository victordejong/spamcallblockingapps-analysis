package com.amazonaws.services.p101s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.internal.S3VersionResult;
/* renamed from: com.amazonaws.services.s3.internal.S3VersionHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3VersionHeaderHandler.class */
public class S3VersionHeaderHandler<T extends S3VersionResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.p101s3.internal.HeaderHandler
    /* renamed from: a */
    public final /* synthetic */ void mo38398a(Object obj, HttpResponse httpResponse) {
        ((S3VersionResult) obj).setVersionId(httpResponse.f12069d.get("x-amz-version-id"));
    }
}
