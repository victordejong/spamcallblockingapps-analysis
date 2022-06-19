package com.amazonaws.services.p101s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p101s3.internal.S3RequesterChargedResult;
/* renamed from: com.amazonaws.services.s3.internal.S3RequesterChargedHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler.class */
public class S3RequesterChargedHeaderHandler<T extends S3RequesterChargedResult> implements HeaderHandler<T> {
    /* renamed from: a */
    public static void m38411a(T t, HttpResponse httpResponse) {
        t.setRequesterCharged(httpResponse.f12069d.get("x-amz-request-charged") != null);
    }

    @Override // com.amazonaws.services.p101s3.internal.HeaderHandler
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo38398a(Object obj, HttpResponse httpResponse) {
        m38411a((S3RequesterChargedResult) obj, httpResponse);
    }
}
