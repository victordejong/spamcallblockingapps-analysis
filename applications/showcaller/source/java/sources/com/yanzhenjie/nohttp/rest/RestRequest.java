package com.yanzhenjie.nohttp.rest;

import com.yanzhenjie.nohttp.RequestMethod;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/RestRequest.class */
public abstract class RestRequest<Result> extends Request<Result> {
    public RestRequest(String str) {
        this(str, RequestMethod.GET);
    }

    public RestRequest(String str, RequestMethod requestMethod) {
        super(str, requestMethod);
    }
}
