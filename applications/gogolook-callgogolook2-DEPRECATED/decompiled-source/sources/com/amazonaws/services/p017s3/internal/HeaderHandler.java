package com.amazonaws.services.p017s3.internal;

import com.amazonaws.http.HttpResponse;
/* renamed from: com.amazonaws.services.s3.internal.HeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/HeaderHandler.class */
public interface HeaderHandler<T> {
    void handle(T t, HttpResponse httpResponse);
}
