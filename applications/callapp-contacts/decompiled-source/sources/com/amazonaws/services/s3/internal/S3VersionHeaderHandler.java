package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.S3VersionResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3VersionHeaderHandler.class */
public class S3VersionHeaderHandler<T extends S3VersionResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    public final /* synthetic */ void a(Object obj, HttpResponse httpResponse) {
        ((S3VersionResult) obj).setVersionId(httpResponse.f6622d.get("x-amz-version-id"));
    }
}
