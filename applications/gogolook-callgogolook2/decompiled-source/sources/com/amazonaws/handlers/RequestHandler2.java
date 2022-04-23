package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;
/* loaded from: classes-dex2jar.jar:com/amazonaws/handlers/RequestHandler2.class */
public abstract class RequestHandler2 {
    public static RequestHandler2 adapt(RequestHandler requestHandler) {
        return new RequestHandler2Adaptor(requestHandler);
    }

    public abstract void afterError(Request<?> request, Response<?> response, Exception exc);

    public abstract void afterResponse(Request<?> request, Response<?> response);

    public abstract void beforeRequest(Request<?> request);
}
