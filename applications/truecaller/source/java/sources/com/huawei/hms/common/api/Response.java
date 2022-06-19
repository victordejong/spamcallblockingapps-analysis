package com.huawei.hms.common.api;

import com.huawei.hms.support.api.client.Result;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/api/Response.class */
public class Response<T extends Result> {
    public T result;

    public Response() {
    }

    public Response(T t) {
        this.result = t;
    }

    public T getResult() {
        return this.result;
    }

    public void setResult(T t) {
        this.result = t;
    }
}
