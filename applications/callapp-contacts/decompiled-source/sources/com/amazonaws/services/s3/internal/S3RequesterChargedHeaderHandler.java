package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler.class */
public class S3RequesterChargedHeaderHandler<T extends S3RequesterChargedResult> implements HeaderHandler<T> {
    public static void a(T t, HttpResponse httpResponse) {
        t.setRequesterCharged(httpResponse.f6622d.get("x-amz-request-charged") != null);
    }

    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    public final /* bridge */ /* synthetic */ void a(Object obj, HttpResponse httpResponse) {
        a((S3RequesterChargedResult) obj, httpResponse);
    }
}
