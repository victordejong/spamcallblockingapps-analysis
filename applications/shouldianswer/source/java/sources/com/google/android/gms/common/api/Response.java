package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Response.class */
public class Response<T extends Result> {
    private T zzap;

    public Response() {
    }

    public Response(T t) {
        this.zzap = t;
    }

    public T getResult() {
        return this.zzap;
    }

    public void setResult(T t) {
        this.zzap = t;
    }
}
