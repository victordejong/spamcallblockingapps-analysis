package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;
/* loaded from: classes-dex2jar.jar:com/amazonaws/handlers/RequestHandler2.class */
public abstract class RequestHandler2 {
    /* renamed from: a */
    public static RequestHandler2 m38634a(RequestHandler requestHandler) {
        return new RequestHandler2Adaptor(requestHandler);
    }

    /* renamed from: a */
    public abstract void mo38633a(Request<?> request, Response<?> response);
}
