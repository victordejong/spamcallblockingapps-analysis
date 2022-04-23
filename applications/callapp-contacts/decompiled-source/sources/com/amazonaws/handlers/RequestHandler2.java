package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;
/* loaded from: classes-dex2jar.jar:com/amazonaws/handlers/RequestHandler2.class */
public abstract class RequestHandler2 {
    public static RequestHandler2 a(RequestHandler requestHandler) {
        return new RequestHandler2Adaptor(requestHandler);
    }

    public abstract void a(Request<?> request, Response<?> response);
}
