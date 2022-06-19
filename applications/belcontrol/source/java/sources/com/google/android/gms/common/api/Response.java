package com.google.android.gms.common.api;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Response.class */
public class Response<T extends Result> {
    private T zza;

    public Response() {
    }

    public Response(@RecentlyNonNull T t) {
        this.zza = t;
    }

    public T getResult() {
        return this.zza;
    }

    public void setResult(@RecentlyNonNull T t) {
        this.zza = t;
    }
}
