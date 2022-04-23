package com.google.android.gms.common.api;

import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Response.class */
public class Response<T extends Result> {
    private T zzao;

    public Response() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Response(@NonNull T t) {
        this.zzao = t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public T getResult() {
        return this.zzao;
    }

    public void setResult(@NonNull T t) {
        this.zzao = t;
    }
}
