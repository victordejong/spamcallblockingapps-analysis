package com.amazonaws.http;
/* loaded from: classes-dex2jar.jar:com/amazonaws/http/HttpResponseHandler.class */
public interface HttpResponseHandler<T> {
    T handle(HttpResponse httpResponse) throws Exception;

    boolean needsConnectionLeftOpen();
}
